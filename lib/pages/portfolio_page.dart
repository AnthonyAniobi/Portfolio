import 'package:flutter/material.dart';
import '../widgets/nav_bar.dart';
import '../sections/hero_section.dart';
import '../sections/projects_section.dart';
import '../sections/experience_section.dart';
import '../sections/skills_section.dart';
import '../sections/contact_section.dart';
import '../theme/app_theme.dart';
import '../widgets/shared_widgets.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final ScrollController _scrollController = ScrollController();

  final Map<String, GlobalKey> _sectionKeys = {
    'Home': GlobalKey(),
    'Projects': GlobalKey(),
    'Experience': GlobalKey(),
    'Skills': GlobalKey(),
    'Contact': GlobalKey(),
  };

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bg,
      body: Stack(
        children: [
          // Main scrollable content
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                // Spacer for nav
                const SizedBox(height: 0),
                // Hero
                KeyedSubtree(
                  key: _sectionKeys['Home'],
                  child: const HeroSection(),
                ),
                const GlowDivider(),
                // Projects
                KeyedSubtree(
                  key: _sectionKeys['Projects'],
                  child: const ProjectsSection(),
                ),
                const GlowDivider(),
                // Experience
                KeyedSubtree(
                  key: _sectionKeys['Experience'],
                  child: const ExperienceSection(),
                ),
                const GlowDivider(),
                // Skills
                KeyedSubtree(
                  key: _sectionKeys['Skills'],
                  child: const SkillsSection(),
                ),
                const GlowDivider(),
                // Contact
                KeyedSubtree(
                  key: _sectionKeys['Contact'],
                  child: const ContactSection(),
                ),
              ],
            ),
          ),
          // Fixed nav bar on top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: NavBar(
              scrollController: _scrollController,
              sectionKeys: _sectionKeys,
            ),
          ),
          // Scroll to top FAB
          Positioned(
            bottom: 24,
            right: 24,
            child: _ScrollToTopButton(controller: _scrollController),
          ),
        ],
      ),
    );
  }
}

class _ScrollToTopButton extends StatefulWidget {
  final ScrollController controller;
  const _ScrollToTopButton({required this.controller});

  @override
  State<_ScrollToTopButton> createState() => _ScrollToTopButtonState();
}

class _ScrollToTopButtonState extends State<_ScrollToTopButton> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() => _visible = widget.controller.offset > 400);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: _visible ? 1.0 : 0.0,
      child: GestureDetector(
        onTap: () => widget.controller.animateTo(
          0,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
        ),
        child: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: AppTheme.accent,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppTheme.accent.withOpacity(0.4),
                blurRadius: 16,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Icon(
            Icons.keyboard_arrow_up_rounded,
            color: AppTheme.bg,
            size: 22,
          ),
        ),
      ),
    );
  }
}
