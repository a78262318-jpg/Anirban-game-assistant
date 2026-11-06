#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
echo "ANIRBAN GAME ASSISTANT v1.5 - Termux build check"
echo
if ! command -v java >/dev/null 2>&1; then
  echo "Java 17 missing. Run: pkg update && pkg install openjdk-17"
  exit 1
fi
if ! command -v gradle >/dev/null 2>&1; then
  echo "Gradle missing. Run: pkg install gradle"
  exit 1
fi
SDK="${ANDROID_SDK_ROOT:-${ANDROID_HOME:-}}"
if [ -z "$SDK" ] || [ ! -d "$SDK/platforms/android-35" ] || [ ! -d "$SDK/build-tools" ]; then
  echo "Android SDK Platform 35 / Build Tools not found."
  echo "Java + Gradle alone cannot build an APK."
  echo "This project uses compileSdk 35. Configure a compatible Android SDK first."
  echo "If you cannot install SDK tools natively in Termux, use the included GitHub Actions workflow."
  exit 2
fi
export ANDROID_HOME="$SDK"
gradle --no-daemon assembleDebug
echo
echo "SUCCESS: app/build/outputs/apk/debug/app-debug.apk"
