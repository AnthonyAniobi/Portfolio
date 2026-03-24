import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';

class SectionLabel extends StatelessWidget {
  final String text;
  const SectionLabel(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 3,
          height: 14,
          decoration: BoxDecoration(
            color: AppTheme.accent,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          text.toUpperCase(),
          style: GoogleFonts.jetBrainsMono(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: AppTheme.accent,
            letterSpacing: 2.5,
          ),
        ),
      ],
    );
  }
}

class GlowDivider extends StatelessWidget {
  const GlowDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            AppTheme.accent.withOpacity(0.3),
            AppTheme.accent.withOpacity(0.6),
            AppTheme.accent.withOpacity(0.3),
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}

class TechTag extends StatelessWidget {
  final String label;
  const TechTag(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: AppTheme.accentGlow,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppTheme.accent.withOpacity(0.25), width: 1),
      ),
      child: Text(
        label,
        style: GoogleFonts.jetBrainsMono(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: AppTheme.accent,
          letterSpacing: 0.8,
        ),
      ),
    );
  }
}

class HoverButton extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  final bool outlined;
  const HoverButton({
    super.key,
    required this.label,
    required this.onTap,
    this.outlined = false,
  });

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          decoration: BoxDecoration(
            color: widget.outlined
                ? Colors.transparent
                : (_hovered ? AppTheme.accentDim : AppTheme.accent),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: _hovered ? AppTheme.accent : AppTheme.accentDim,
              width: 1.5,
            ),
            boxShadow: _hovered && !widget.outlined
                ? [
                    BoxShadow(
                      color: AppTheme.accent.withOpacity(0.3),
                      blurRadius: 20,
                      offset: const Offset(0, 4),
                    )
                  ]
                : [],
          ),
          child: Text(
            widget.label,
            style: GoogleFonts.spaceGrotesk(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: widget.outlined
                  ? (_hovered ? AppTheme.accent : AppTheme.textSecondary)
                  : AppTheme.bg,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedNumber extends StatelessWidget {
  final String number;
  final String label;
  const AnimatedNumber({super.key, required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: GoogleFonts.spaceGrotesk(
            fontSize: 36,
            fontWeight: FontWeight.w800,
            color: AppTheme.accent,
            letterSpacing: -1,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.dmSans(
            fontSize: 13,
            color: AppTheme.textMuted,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
