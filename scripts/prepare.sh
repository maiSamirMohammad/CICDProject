echo $KEYSTORE_BASE64 | base64 -d > app/cicd-project-release-key.jks
./gradlew clean
bundle install
bundle exec fastlane install_plugins