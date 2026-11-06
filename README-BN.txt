ANIRBAN GAME ASSISTANT v1.2 — Macro build

এই ZIP Android source project, সরাসরি APK নয়। ফোনে GitHub Actions দিয়ে build করা যায়।

ফিচার:
- Floating bubble + panel
- Device model ও battery/charging status
- Auto Tap (স্ক্রিনের মাঝখানে প্রতি 500ms বা 1000ms)
- Macro Recorder: অ্যাপের ভেতরের pad-এ tap/drag আঁকা ও রেকর্ড করা
- Macro Play: রেকর্ড করা path স্ক্রিনে Accessibility gesture হিসেবে চালানো
- Repeat 1X/2X/5X

গুরুত্বপূর্ণ সীমাবদ্ধতা:
- Macro-টি pad-এর relative position-কে পুরো স্ক্রিনের coordinate-এ map করে। এটি সব গেমে নির্ভুলভাবে কাজ করবে এমন নিশ্চয়তা নেই; আগে নিরাপদ/ফাঁকা স্ক্রিনে পরীক্ষা করো।
- Android-এর gesture dispatch দিয়ে একাধিক touch/finger বা সব ধরনের gesture হুবহু পুনরুৎপাদন করা যায় না।
- Macro pad-এ রেকর্ডিং করার সময় touch অন্য গেমে pass-through হয় না।
- Aim bot নেই; অন্য গেমের aim/target control universal ভাবে করা যায় না।
- Accessibility permission সংবেদনশীল। বুঝে ও নিজের ঝুঁকিতে enable করো।

ফোন দিয়ে APK build:
1) ZIP extract করো।
2) GitHub-এ account ও নতুন repository তৈরি করো।
3) Extract করা সব ফাইল repository-তে upload করো; .github/workflows/build-apk.yml-ও রাখতে হবে।
4) Actions tab > Build Android APK > Run workflow।
5) Build complete হলে Artifacts থেকে AnirbanGameAssistant-debug-apk download করো।
6) Artifact ZIP extract করে app-debug.apk install করো।
Cloud build-এ Android SDK/Gradle ডাউনলোড হবে; ফোনে IDE লাগবে না। GitHub-এ project upload করতে কিছু mobile data লাগবে।


v1.5 আপডেট:
- settings.gradle.kts-এর repository block ঠিক করা হয়েছে।
- Floating panel-এ Macro Recorder খোলার বাটন যোগ হয়েছে।
- Macro playback stop request যোগ হয়েছে।
- Termux build check script এবং বাংলা নির্দেশনা যোগ হয়েছে।
- Macro recording শুধু অ্যাপের নিজস্ব pad-এ; এটি অন্য গেমের touch record করে না।
- Macro data স্থায়ীভাবে save হয় না।
- Android SDK Platform 35 ও Build Tools ছাড়া Termux-এ APK build সম্ভব নয়।
