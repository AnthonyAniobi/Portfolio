import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';

class NavBar extends StatefulWidget {
  final ScrollController scrollController;
  final Map<String, GlobalKey> sectionKeys;

  const NavBar({
    super.key,
    required this.scrollController,
    required this.sectionKeys,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  String _active = 'Home';
  bool _scrolled = false;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(() {
      setState(() {
        _scrolled = widget.scrollController.offset > 60;
      });
    });
  }

  void _scrollTo(String key) {
    setState(() => _active = key);
    final ctx = widget.sectionKeys[key]?.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(ctx,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
          alignment: 0.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        color: _scrolled
            ? AppTheme.bg.withOpacity(0.95)
            : Colors.transparent,
        border: Border(
          bottom: BorderSide(
            color: _scrolled
                ? AppTheme.border
                : Colors.transparent,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          // Logo
          GestureDetector(
            onTap: () => _scrollTo('Home'),
            child: Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: AppTheme.accent,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      'A',
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: AppTheme.bg,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                if (!isMobile)
                  Text(
                    'Anthony Aniobi',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textPrimary,
                    ),
                  ),
              ],
            ),
          ),
          const Spacer(),
          if (!isMobile) ...[
            for (final item in ['Home', 'Projects', 'Experience', 'Skills', 'Contact'])
              _NavItem(
                label: item,
                isActive: _active == item,
                onTap: () => _scrollTo(item),
              ),
          ] else ...[
            PopupMenuButton<String>(
              icon: const Icon(Icons.menu, color: AppTheme.textSecondary),
              color: AppTheme.surfaceElevated,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: AppTheme.border),
              ),
              onSelected: _scrollTo,
              itemBuilder: (_) => [
                for (final item in ['Home', 'Projects', 'Experience', 'Skills', 'Contact'])
                  PopupMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: GoogleFonts.spaceGrotesk(
                        color: AppTheme.textPrimary,
                        fontSize: 14,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _NavItem extends StatefulWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _NavItem({
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.label,
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 13,
                  fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.w400,
                  color: widget.isActive || _hovered
                      ? AppTheme.textPrimary
                      : AppTheme.textSecondary,
                ),
              ),
              const SizedBox(height: 3),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 2,
                width: widget.isActive ? 20 : 0,
                decoration: BoxDecoration(
                  color: AppTheme.accent,
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
