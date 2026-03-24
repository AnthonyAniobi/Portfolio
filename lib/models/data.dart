class ProjectModel {
  final String title;
  final String description;
  final String role;
  final String type;
  final String link;
  final List<String> tags;
  final bool isTeam;

  const ProjectModel({
    required this.title,
    required this.description,
    required this.role,
    required this.type,
    required this.link,
    required this.tags,
    this.isTeam = false,
  });
}

class ExperienceModel {
  final String company;
  final String role;
  final String period;
  final List<String> points;
  final String? link;

  const ExperienceModel({
    required this.company,
    required this.role,
    required this.period,
    required this.points,
    this.link,
  });
}

class SkillCategory {
  final String category;
  final List<String> skills;
  final String icon;

  const SkillCategory({
    required this.category,
    required this.skills,
    required this.icon,
  });
}

final List<ProjectModel> projects = [
  ProjectModel(
    title: 'CREDNOW',
    description:
        'A fully-featured instant loan application with seamless UX, real-time processing, and secure financial data handling.',
    role: 'Solo Developer',
    type: 'Fintech App',
    link: 'https://play.google.com',
    tags: ['Flutter', 'Django', 'Fintech', 'REST API'],
  ),
  ProjectModel(
    title: 'CASHGO',
    description:
        'Instant loan platform built for speed and reliability. Handles thousands of users with smooth onboarding and loan disbursement flows.',
    role: 'Solo Developer',
    type: 'Fintech App',
    link: 'https://play.google.com',
    tags: ['Flutter', 'Django', 'Payment Integration'],
  ),
  ProjectModel(
    title: 'DRENCH',
    description:
        'A full-featured dating application with real-time video calling, voice chat, and messaging powered by WebRTC and WebSockets.',
    role: 'Solo Developer',
    type: 'Social App',
    link: 'https://play.google.com',
    tags: ['Flutter', 'WebRTC', 'WebSocket', 'Real-time'],
  ),
  ProjectModel(
    title: 'AGRI AXIS',
    description:
        'AI-powered soil testing and recommendation application. Helps farmers make data-driven decisions for optimal crop yield.',
    role: 'Mobile Developer',
    type: 'AI / AgriTech',
    link: 'https://play.google.com',
    tags: ['Flutter', 'AI/ML', 'AgriTech'],
    isTeam: true,
  ),
  ProjectModel(
    title: 'AVATAR CLASH',
    description:
        'A two-player combat game built entirely in Flutter using the Flame engine. Features custom character animations and game physics.',
    role: 'Solo Developer',
    type: 'Game',
    link: 'https://play.google.com',
    tags: ['Flutter', 'Flame Engine', 'Game Dev'],
  ),
  ProjectModel(
    title: 'CHESS',
    description:
        'Global multiplayer chess game with real-time matchmaking, ELO ranking system, and cross-platform support.',
    role: 'Solo Developer',
    type: 'Game',
    link: 'https://play.google.com',
    tags: ['Flutter', 'Nakama', 'Multiplayer', 'WebSocket'],
  ),
  ProjectModel(
    title: 'AISERWAVE',
    description:
        'SaaS platform for end-to-end event management. Features ticketing, attendee management, analytics dashboards and payment flows.',
    role: 'Senior Developer',
    type: 'SaaS Platform',
    link: 'https://play.google.com',
    tags: ['Flutter', 'Django', 'SaaS', 'Full-Stack'],
    isTeam: true,
  ),
  ProjectModel(
    title: '7-DAY GAME CHALLENGE',
    description:
        'Built a complete 2D game in just 7 days as a personal challenge. Demonstrates rapid prototyping and end-to-end game delivery.',
    role: 'Solo Developer',
    type: 'Game / Challenge',
    link: 'https://youtube.com',
    tags: ['Godot', 'Game Dev', 'GDScript'],
  ),
];

final List<ExperienceModel> experiences = [
  ExperienceModel(
    company: 'CREDILITY FINANCIAL SERVICES',
    role: 'Mobile Developer',
    period: 'March 2025 – September 2025',
    link: '#',
    points: [
      'Developed two loan apps currently serving 10,000+ users each on the Play Store.',
      'Managed end-to-end deployment pipeline to Google Play Store.',
    ],
  ),
  ExperienceModel(
    company: 'GRASCOPE TECHNOLOGIES',
    role: 'Software Programmer',
    period: 'November 2024 – March 2025',
    link: '#',
    points: [
      'Developed a mobile application for managing field sales operations.',
      'Set up automated CI/CD pipeline using GitHub Actions and Shorebird for OTA updates.',
    ],
  ),
  ExperienceModel(
    company: 'FORREST AND FINCH',
    role: 'Software Programmer',
    period: 'February 2022 – May 2023',
    link: '#',
    points: [
      'Built Gatepass — an estate management app used by Acres Pro Estate Management — from scratch to production.',
      'Set up full CI/CD pipeline with GitHub Actions and Fastlane.',
      'Built Remote Procedure Calls (RPC) in Nakama server for in-house applications.',
    ],
  ),
  ExperienceModel(
    company: 'WHY-NOT-SWITCH',
    role: 'Chief Technical Officer',
    period: 'December 2020 – July 2021',
    link: '#',
    points: [
      'Designed a prototype energy meter with data logging and transmission functionality.',
      'Connected Arduino hardware components to a mobile application for real-time monitoring.',
      'Collaborated with users and QA team to ensure market quality.',
    ],
  ),
  ExperienceModel(
    company: 'SISAKEST GROUPS',
    role: 'Embedded Systems Tutor',
    period: 'January 2020 – February 2020',
    link: '#',
    points: [
      'Taught practical courses on programmable microcontrollers, sensors, and actuators.',
      'Designed a qualifying examination for a class of 23 students.',
    ],
  ),
];

final List<SkillCategory> skillCategories = [
  SkillCategory(
    category: 'Mobile Development',
    icon: '📱',
    skills: ['Flutter', 'Dart', 'SwiftUI', 'iOS', 'Android'],
  ),
  SkillCategory(
    category: 'Backend Development',
    icon: '⚙️',
    skills: ['Django', 'Python', 'REST APIs', 'Nakama Server', 'WebSockets'],
  ),
  SkillCategory(
    category: 'Game Development',
    icon: '🎮',
    skills: ['Godot', 'GDScript', 'Unity', 'Flame Engine', 'Game Physics'],
  ),
  SkillCategory(
    category: 'DevOps & Tools',
    icon: '🔧',
    skills: ['GitHub Actions', 'Fastlane', 'Shorebird', 'CI/CD', 'Git'],
  ),
  SkillCategory(
    category: 'Embedded Systems',
    icon: '🤖',
    skills: ['Arduino', 'IoT', 'Microcontrollers', 'Sensors & Actuators'],
  ),
  SkillCategory(
    category: 'Open Source',
    icon: '📦',
    skills: ['Date Format Field', 'Dynamic Carousel', 'API Server (Desktop App)'],
  ),
];
