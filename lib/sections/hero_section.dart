import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/app_theme.dart';
import '../widgets/shared_widgets.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection>
    with TickerProviderStateMixin {
  late AnimationController _fadeCtrl;
  late AnimationController _bgCtrl;
  late Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();
    _fadeCtrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _bgCtrl = AnimationController(
        vsync: this, duration: const Duration(seconds: 8))
      ..repeat(reverse: true);
    _fadeAnim = CurvedAnimation(parent: _fadeCtrl, curve: Curves.easeOut);
    _fadeCtrl.forward();
  }

  @override
  void dispose() {
    _fadeCtrl.dispose();
    _bgCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        // Animated background mesh
        AnimatedBuilder(
          animation: _bgCtrl,
          builder: (_, __) => CustomPaint(
            size: Size(size.width, size.height),
            painter: _GridPainter(_bgCtrl.value),
          ),
        ),
        // Radial accent glow
        Positioned(
          top: -200,
          right: -100,
          child: Container(
            width: 600,
            height: 600,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  AppTheme.accent.withOpacity(0.08),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        // Content
        SizedBox(
          width: double.infinity,
          height: math.max(size.height, 700),
          child: FadeTransition(
            opacity: _fadeAnim,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 24 : 80,
                vertical: 0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  // Badge
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppTheme.accentGlow,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: AppTheme.accent.withOpacity(0.3), width: 1),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: AppTheme.accent,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: AppTheme.accent.withOpacity(0.8),
                                  blurRadius: 6),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Available for opportunities',
                          style: GoogleFonts.jetBrainsMono(
                            fontSize: 11,
                            color: AppTheme.accent,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),
                  // Name
                  Text(
                    'Anthony\nAniobi',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: isMobile ? 52 : 80,
                      fontWeight: FontWeight.w800,
                      color: AppTheme.textPrimary,
                      letterSpacing: -3,
                      height: 0.95,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Title with accent
                  Row(
                    children: [
                      Container(
                          width: 40,
                          height: 2,
                          color: AppTheme.accent),
                      const SizedBox(width: 12),
                      Text(
                        'Flutter Developer  •  Game Dev  •  Fullstack Engineer',
                        style: GoogleFonts.dmSans(
                          fontSize: isMobile ? 13 : 15,
                          color: AppTheme.textSecondary,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  // Bio
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 580),
                    child: Text(
                      'I craft high-performance mobile apps, immersive games, and scalable backends. '
                      '5+ years building products used by tens of thousands — from instant loan platforms '
                      'to real-time multiplayer games. Based in Lagos, Nigeria.',
                      style: GoogleFonts.dmSans(
                        fontSize: isMobile ? 15 : 17,
                        color: AppTheme.textSecondary,
                        height: 1.75,
                      ),
                    ),
                  ),
                  const SizedBox(height: 44),
                  // CTA Buttons
                  Wrap(
                    spacing: 14,
                    runSpacing: 14,
                    children: [
                      HoverButton(
                        label: 'View Projects',
                        onTap: () {},
                      ),
                      HoverButton(
                        label: '↗ LinkedIn',
                        outlined: true,
                        onTap: () => launchUrl(Uri.parse(
                            'https://www.linkedin.com/in/anthony-aniobi')),
                      ),
                      HoverButton(
                        label: '▷ YouTube',
                        outlined: true,
                        onTap: () => launchUrl(
                            Uri.parse('https://www.youtube.com/@codingsection')),
                      ),
                    ],
                  ),
                  const SizedBox(height: 64),
                  // Stats row
                  Wrap(
                    spacing: 48,
                    runSpacing: 24,
                    children: const [
                      AnimatedNumber(number: '5+', label: 'Years\nExperience'),
                      AnimatedNumber(number: '20k+', label: 'App\nUsers'),
                      AnimatedNumber(number: '15+', label: 'Apps\nShipped'),
                      AnimatedNumber(number: '3', label: 'Open Source\nPackages'),
                    ],
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _GridPainter extends CustomPainter {
  final double t;
  _GridPainter(this.t);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppTheme.border.withOpacity(0.5)
      ..strokeWidth = 0.5;

    // Subtle dot grid
    for (double x = 0; x < size.width; x += 40) {
      for (double y = 0; y < size.height; y += 40) {
        canvas.drawCircle(Offset(x, y), 0.8, paint..color = AppTheme.textMuted.withOpacity(0.15));
      }
    }
  }

  @override
  bool shouldRepaint(_GridPainter old) => old.t != t;
}
