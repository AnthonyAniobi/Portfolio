class SkillCategory {
  final String name;
  final List<Skill> skills;

  SkillCategory(this.name, this.skills);

  static List<SkillCategory> category = [
    SkillCategory('Programming', [
      Skill('Flutter', 100),
      Skill('Kotlin', 80),
    ]),
    SkillCategory('Design', [
      Skill('Figma', 90),
    ]),
  ];
}

class Skill {
  final String name;
  final int percentage;

  Skill(this.name, this.percentage);
}
