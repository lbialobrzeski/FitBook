# FitBook

Graph your eating habits with ease!

<p float="left">
    <a href="https://github.com/brandonp2412/FitBook/releases/latest"><img alt="GitHub Release" src="https://img.shields.io/github/v/release/brandonp2412/fitbook?style=for-the-badge&logoColor=a0cafd&labelColor=a0cafd&color=111418"></a>
    <a href="https://shields.io/badges/git-hub-downloads-all-assets-all-releases"><img alt="Release downloads" src="https://img.shields.io/github/downloads/brandonp2412/FitBook/total.svg?style=for-the-badge&logoColor=a0cafd&labelColor=a0cafd&color=111418"></a>
</p>

# Features

- 🔌 **Offline**: Internet is completely optional.
- 🍏 **Foods**: FitBook ships with over 7 thousand foods (sourced from the [CORGIS Dataset Project](https://corgis-edu.github.io/corgis/csv/food/)).
- 🍇 **OpenFoodFacts**: Scan barcodes & search for foods with [OpenFoodFacts](https://world.openfoodfacts.org/).
- 📈 **Graphs**: Plot your diet macros over time.
- ⏰ **Daily meal schedules**: Auto-add recurring meals/supplements each day (example: coffee at 09:00).
- 🇵🇱 **Polish-friendly food names**: App localizes built-in food names to Polish-style labels at startup.

Daily schedule flag format uses `food_group`:
- `Codziennie@09:00|Napoje`
- `Codziennie@08:00|Suplementy`

<a href='https://play.google.com/store/apps/details?id=com.presley.fit_book'><img alt='Get it on Google Play' style="height: 80px !important" src='./docs/get-it-on-google-play.png'/></a>
<a href="https://f-droid.org/packages/com.presley.fit_book"><img src="./docs/get-it-on-fdroid.png" alt="Get it on F-Droid" style="height: 80px !important"></a>
<a href="https://apps.microsoft.com/detail/FitBook%20-%20Calorie%20tracker/9PJJVF8507G0?mode=direct"><img src="./docs/download-msstore.svg" style="height: 80px !important"/></a>

# Screenshots

<p float="left">
    <img src="fastlane/metadata/android/en-US/images/phoneScreenshots/1_en-US.png" height="600">
    <img src="fastlane/metadata/android/en-US/images/phoneScreenshots/2_en-US.png" height="600">
    <img src="fastlane/metadata/android/en-US/images/phoneScreenshots/3_en-US.png" height="600">
    <img src="fastlane/metadata/android/en-US/images/phoneScreenshots/4_en-US.png" height="600">
    <img src="fastlane/metadata/android/en-US/images/phoneScreenshots/5_en-US.png" height="600">
    <img src="fastlane/metadata/android/en-US/images/phoneScreenshots/6_en-US.png" height="600">
    <img src="fastlane/metadata/android/en-US/images/phoneScreenshots/7_en-US.png" height="600">
    <img src="fastlane/metadata/android/en-US/images/phoneScreenshots/8_en-US.png" height="600">
</p>

# Donations

Contributing to this project helps us keep adding awesome features!

- Bitcoin `bc1qzlte8featxzf7xvtp3rjv7qqtwkgpup8hu85gp`
- Monero (XMR) `85tmLfWKbpd8nxQnUY878DDuFjmfcoCFXPWR7XYKLHBSbDZV8wxgoKYUtHtq1kHWJg4m14sdBXhYuUSbxEDA29d19XuREL5`
- [GitHub sponsor](https://github.com/sponsors/brandonp2412)

# Installation

To install the app, follow these steps:

1. Clone the repository: `git clone --recursive https://github.com/brandonp2412/FitBook fitbook`
2. Navigate into the project directory: `cd fitbook`
3. Install dependencies: `flutter pub get`
4. Run the app: `flutter run`

# Contributing

All issues and pull requests are welcome. We don't mind what variable names you pick, where you place your commas, or how many spaces you use.

## CSV import (simple format)

FitBook supports a simplified CSV import for custom products.

1. Open **Settings → Data → Import foods**.
2. Pick a CSV file with headers like:

```csv
name,store,category,calories,protein_g,fat_g,carbohydrate_g,serving_unit,serving_size,barcode
Skyr naturalny,Lidl,Nabiał,63,11,0.2,3.6,grams,100,
Witamina D3,Apteka,Suplementy,0,0,0,0,capsule,1,
```

3. `store`/`category` are mapped to `food_group`.
4. Missing macro values are optional.

Ready example: `assets/polish_products.csv`.

## Faster logging automation

- Diary has a **Copy yesterday entries** shortcut.
- Food search prioritizes favorites and most recently logged products.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
