fvm flutter build web --target "lib/main_production.dart"
git push origin --delete gh-pages
git subtree push --prefix build/web origin gh-pages