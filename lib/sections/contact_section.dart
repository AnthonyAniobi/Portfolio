import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/app_theme.dart';
import '../widgets/shared_widgets.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: 100,
      ),
      decoration: BoxDecoration(
        color: AppTheme.surface.withOpacity(0.4),
      ),
      child: Column(
        children: [
          const SectionLabel("Let's Connect"),
          const SizedBox(height: 16),
          Text(
            'Get In Touch',
            style: GoogleFonts.spaceGrotesk(
              fontSize: isMobile ? 36 : 52,
              fontWeight: FontWeight.w800,
              color: AppTheme.textPrimary,
              letterSpacing: -2,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Text(
              'Open to freelance projects, full-time roles, and interesting collaborations. '
              'Let\'s build something great together.',
              style: GoogleFonts.dmSans(
                fontSize: 16,
                color: AppTheme.textSecondary,
                height: 1.7,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 56),
          // Contact cards
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              _ContactCard(
                icon: Icons.email_outlined,
                label: 'Email',
                value: 'anthonyaniobi198@gmail.com',
                onTap: () => launchUrl(
                    Uri.parse('mailto:anthonyaniobi198@gmail.com')),
              ),
              _ContactCard(
                icon: Icons.link,
                label: 'LinkedIn',
                value: 'anthony-aniobi',
                onTap: () => launchUrl(Uri.parse(
                    'https://www.linkedin.com/in/anthony-aniobi')),
              ),
              _ContactCard(
                icon: Icons.play_circle_outline,
                label: 'YouTube',
                value: '@codingsection',
                onTap: () => launchUrl(
                    Uri.parse('https://www.youtube.com/@codingsection')),
              ),
              _ContactCard(
                icon: Icons.location_on_outlined,
                label: 'Location',
                value: 'Lagos, Nigeria',
                onTap: null,
              ),
            ],
          ),
          const SizedBox(height: 80),
          const GlowDivider(),
          const SizedBox(height: 40),
          Text(
            '© 2025 Anthony Ogadimma Aniobi. Built with Flutter.',
            style: GoogleFonts.jetBrainsMono(
              fontSize: 12,
              color: AppTheme.textMuted,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Designed & developed with ❤️',
            style: GoogleFonts.dmSans(
              fontSize: 13,
              color: AppTheme.textMuted,
            ),
          ),
        ],
      ),
    );
  }
}

class _ContactCard extends StatefulWidget {
  final IconData icon;
  final String label;
  final String value;
  final VoidCallback? onTap;

  const _ContactCard({
    required this.icon,
    required this.label,
    required this.value,
    this.onTap,
  });

  @override
  State<_ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<_ContactCard> {
  bool _hovered = false;
  bool _copied = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () {
          if (widget.onTap != null) {
            widget.onTap!();
          } else {
            Clipboard.setData(ClipboardData(text: widget.value));
            setState(() => _copied = true);
            Future.delayed(const Duration(seconds: 2), () {
              if (mounted) setState(() => _copied = false);
            });
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 220,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: _hovered ? AppTheme.surfaceElevated : AppTheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _hovered
                  ? AppTheme.accent.withOpacity(0.4)
                  : AppTheme.border,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                widget.icon,
                color: _hovered ? AppTheme.accent : AppTheme.textMuted,
                size: 20,
              ),
              const SizedBox(height: 12),
              Text(
                widget.label,
                style: GoogleFonts.jetBrainsMono(
                  fontSize: 10,
                  color: AppTheme.textMuted,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                _copied ? '✓ Copied!' : widget.value,
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: _copied ? AppTheme.accent : AppTheme.textPrimary,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
