echo $KEYSTORE_BASE64 | base64 --decode > cicd-project-release-key.jks
./gradlew clean
bundle install
bundle exec fastlane install_plugins