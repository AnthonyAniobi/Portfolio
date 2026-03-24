import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../widgets/shared_widgets.dart';
import '../models/data.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionLabel('Career Timeline'),
          const SizedBox(height: 16),
          Text(
            'Experience',
            style: GoogleFonts.spaceGrotesk(
              fontSize: isMobile ? 36 : 52,
              fontWeight: FontWeight.w800,
              color: AppTheme.textPrimary,
              letterSpacing: -2,
            ),
          ),
          const SizedBox(height: 56),
          ...List.generate(experiences.length, (i) {
            return _ExperienceItem(
              experience: experiences[i],
              isLast: i == experiences.length - 1,
            );
          }),
          const SizedBox(height: 56),
          // Education block
          const _EducationBlock(),
        ],
      ),
    );
  }
}

class _ExperienceItem extends StatefulWidget {
  final ExperienceModel experience;
  final bool isLast;

  const _ExperienceItem({required this.experience, required this.isLast});

  @override
  State<_ExperienceItem> createState() => _ExperienceItemState();
}

class _ExperienceItemState extends State<_ExperienceItem> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Timeline line
            Column(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _hovered ? AppTheme.accent : AppTheme.border,
                    border: Border.all(
                      color: _hovered ? AppTheme.accent : AppTheme.textMuted,
                      width: 2,
                    ),
                  ),
                ),
                if (!widget.isLast)
                  Expanded(
                    child: Container(
                      width: 1,
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      color: AppTheme.border,
                    ),
                  ),
              ],
            ),
            const SizedBox(width: 24),
            // Content
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: widget.isLast ? 0 : 40),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: _hovered
                        ? AppTheme.surfaceElevated
                        : AppTheme.surface,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: _hovered
                          ? AppTheme.accent.withOpacity(0.3)
                          : AppTheme.border,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (isMobile) ...[
                        Text(
                          widget.experience.period,
                          style: GoogleFonts.jetBrainsMono(
                            fontSize: 10,
                            color: AppTheme.accent,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(height: 6),
                      ],
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.experience.role,
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: AppTheme.textPrimary,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  widget.experience.company,
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: AppTheme.accent,
                                    letterSpacing: 0.3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (!isMobile)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              decoration: BoxDecoration(
                                color: AppTheme.accentGlow,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    color: AppTheme.accent.withOpacity(0.2)),
                              ),
                              child: Text(
                                widget.experience.period,
                                style: GoogleFonts.jetBrainsMono(
                                  fontSize: 10,
                                  color: AppTheme.accent,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ...widget.experience.points.map(
                        (point) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Container(
                                  width: 4,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: AppTheme.accent,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  point,
                                  style: GoogleFonts.dmSans(
                                    fontSize: 14,
                                    color: AppTheme.textSecondary,
                                    height: 1.65,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EducationBlock extends StatelessWidget {
  const _EducationBlock();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.border),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppTheme.accentGlow,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: AppTheme.accent.withOpacity(0.3), width: 1),
            ),
            child: const Center(
              child: Text('🎓', style: TextStyle(fontSize: 22)),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'B.Eng. Mechanical Engineering',
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'University of Nigeria, Nsukka  •  CGPA: 4.32 / 5.00  •  Oct 2015 – Jun 2021',
                  style: GoogleFonts.dmSans(
                    fontSize: 13,
                    color: AppTheme.textSecondary,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Dissertation: Design of a Dual-Axis Solar Tracking System',
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 11,
                    color: AppTheme.accent.withOpacity(0.7),
                    letterSpacing: 0.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
