# 1. Decode the keystore file from base64 and save it as .jks
echo $KEYSTORE_BASE64 | base64 -d > $storeFile

# 2. Install Bundler gem (ensures 'bundle' command is available)
gem install bundler

# 3. Configure Bundler to install gems locally inside vendor/bundle
bundle config set --local path 'vendor/bundle'

# 4. Install Ruby gems specified in Gemfile
bundle install

# 5. Clean previous Gradle builds
./gradlew clean

# 6. Install Fastlane plugins (using Bundler environment)
bundle exec fastlane install_plugins