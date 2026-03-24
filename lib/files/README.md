# Anthony Aniobi — Flutter Portfolio

A professional, fully responsive portfolio website built with Flutter.  
Runs on **Web**, **Android**, and **iOS** from a single codebase.

---

## ✨ Design

- **Dark industrial theme** with electric teal (`#00E5C8`) accents
- **Typography**: Space Grotesk (headings) + DM Sans (body) + JetBrains Mono (labels/code)
- Responsive grid layouts for mobile, tablet, and desktop
- Animated hero section with dot-grid background
- Hover effects, smooth scroll, animated timeline, and scroll-to-top
- Sections: Hero · Projects · Experience · Skills · Contact

---

## 📁 Project Structure

```
lib/
├── main.dart                     # App entry point
├── theme/
│   └── app_theme.dart            # Colors, typography, ThemeData
├── models/
│   └── data.dart                 # All portfolio content (projects, experience, skills)
├── widgets/
│   ├── shared_widgets.dart       # SectionLabel, TechTag, HoverButton, etc.
│   └── nav_bar.dart              # Responsive sticky navigation bar
├── sections/
│   ├── hero_section.dart         # Landing hero with animated background
│   ├── projects_section.dart     # Project cards grid
│   ├── experience_section.dart   # Timeline + education block
│   ├── skills_section.dart       # Skill categories + open source packages
│   └── contact_section.dart      # Contact cards + footer
└── pages/
    └── portfolio_page.dart       # Main page composing all sections
web/
├── index.html                    # Web entry with custom loading screen
└── manifest.json                 # PWA manifest
```

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK `>=3.10.0` installed → [flutter.dev](https://flutter.dev/docs/get-started/install)
- Dart SDK `>=3.0.0`

### Install dependencies

```bash
flutter pub get
```

### Run on Web (recommended for portfolio)

```bash
flutter run -d chrome
```

### Run on Android

```bash
flutter run -d android
```

### Run on iOS (macOS only)

```bash
flutter run -d ios
```

---

## 🌐 Deploy to Web

### Build for production

```bash
flutter build web --release --base-href /
```

Output will be in `build/web/`. Deploy that folder to:

| Platform      | Command / Steps |
|---------------|-----------------|
| **GitHub Pages** | Push `build/web/` to `gh-pages` branch |
| **Firebase Hosting** | `firebase deploy` after `firebase init hosting` |
| **Netlify** | Drag and drop `build/web/` into Netlify dashboard |
| **Vercel** | Connect repo; set output dir to `build/web` |

---

## 📦 Dependencies

| Package | Purpose |
|---------|---------|
| `google_fonts` | Space Grotesk, DM Sans, JetBrains Mono |
| `url_launcher` | Open links (LinkedIn, email, YouTube) |
| `animate_do` | Entrance animations |
| `visibility_detector` | Trigger animations on scroll |
| `font_awesome_flutter` | Social icons |

---

## ✏️ Customising Content

All portfolio data lives in **`lib/models/data.dart`**.  
Edit the `projects`, `experiences`, and `skillCategories` lists to update content.

To change colors or fonts, edit **`lib/theme/app_theme.dart`**.

---

## 📄 License

MIT — free to use and modify.
