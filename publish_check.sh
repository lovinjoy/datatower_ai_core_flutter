project_path="$(dirname "$0")"
thin_divider="┠┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄"
divider="┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
divider_btm="┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "    ╭──────────────────────╮"
echo "    │ Publish check report │"
echo "┏━━━┷━━━━━━━━━━━━━━━━━━━━━━┷━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

total_num_api="$(grep -c -E '"[A-Za-z0-9]*_[A-Za-z0-9]*\": DtApiMethod\(' < "$project_path/example/lib/test/dt_methods.dart")"
echo "┃ Total Number of APIs in dt_methods.dart: \033[4m$total_num_api\033[0m"

echo "$divider"

sdk_version=$(grep "versionName *=" < "$project_path/lib/api/dt.dart" | sed "s/^ *static const _versionName = \"\(.*\)\"; *$/\1/g")
sdk_version_2=$(grep "version:" < "$project_path/pubspec.yaml" | sed "s/^ *version: \(.*\) *$/\1/g")
echo "┃ Version of \033[1mDT Flutter\033[0m："
echo "┃   - \033[1m[dt.dart]\033[0m \033[4m$sdk_version\033[0m"
echo "┃   - \033[1m[pubspec.yaml]\033[0m \033[4m$sdk_version_2\033[0m"

stripped_sdk_version=${sdk_version//^\([0-9]*\.[0-9]*\.[0-9]*\).*$/\1}
stripped_sdk_version_2=${sdk_version_2//^\([0-9]*\.[0-9]*\.[0-9]*\).*$/\1}

warning_sign="\033[0;33m⚠\033[0m"
version_check_failed=false
if [[ $stripped_sdk_version != "$stripped_sdk_version_2" ]]; then
  echo "┃ $warning_sign \033[0;31mVersion code between two files is non-identical! ($stripped_sdk_version != $stripped_sdk_version_2)\033[0m"
  version_check_failed=true
fi

android_sdk_ver=$(grep "com.lovinjoy:datatowerai-core" < "$project_path/android/build.gradle" | sed "s/^.*\"com.lovinjoy:datatowerai-core:\(.*\)\".*$/\1/g")
ios_sdk_ver=$(grep "DataTowerAICore" < "$project_path/ios/datatower_ai_core_flutter.podspec" | sed "s/^.*'DataTowerAICore'.*'\(.*\)'/\1/g")
echo "┃ Used version of \033[1mDT Android\033[0m：\033[4m$android_sdk_ver\033[0m"
echo "┃ Used version of \033[1mDT iOS\033[0m：\033[4m$ios_sdk_ver\033[0m"

echo "$thin_divider"

echo "┃ Getting the latest DT iOS/Android version from \033[1mremote...\033[0m"
android_sdk_remote_ver=$(curl -s https://s01.oss.sonatype.org/content/repositories/releases/com/lovinjoy/datatowerai-core/maven-metadata.xml | grep "<latest>.*</latest>" | cut -d ">" -f2 | cut -d "<" -f1)
echo "┃  - [\033[1mDT Android\033[0m | Maven Central] \033[4m$android_sdk_remote_ver\033[0m"
ios_sdk_remote_ver=$(curl -s https://cocoapods.org/pods/DataTowerAICore | sed -n 's/.*<h1>DataTowerAICore <span>\([0-9a-zA-Z.-]*\)<\/span><\/h1>.*/\1/gp')
echo "┃  - [\033[1mDT iOS\033[0m | CocoaPods] \033[4m$ios_sdk_remote_ver\033[0m"

if [[ $version_check_failed == true ]]; then
  echo $divider_btm
  echo "\033[0;31mVersion check is failed, pls see details above!\033[0m"
  exit
else
  echo "$thin_divider"
  echo "┃ \033[5;33m ⬆ \033[0;4;33m ⓘ  Please check versions shown above \033[0m"
fi

num_find_in_changelog=$(grep -c -E "^#+ ${stripped_sdk_version}" < "$project_path/CHANGELOG.md")
if [[ $num_find_in_changelog == 0 ]]; then
  echo $divider_btm
  echo "\033[0;31mPublish material check is failed!\033[0m"
  echo "  \033[0;31m- This version ($stripped_sdk_version) is not listed in \033[1;31mCHANGELOG.md\033[0;31m.\033[0m"
  exit
else
  echo "┣━━━━━━━━━━━┯━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "┃ CHANGELOG │"
  echo "┠───────────╯"
  changelog_lower_bound=$(grep -FnE -m2 "^# .*" < "$project_path/CHANGELOG.md" | tail -n1 | cut -d ":" -f 1)
  changelog_msg=$(sed -n -e "1,$((changelog_lower_bound-1))p" < ./CHANGELOG.md)
  echo "$changelog_msg" | sed -E "s/^(.*)/┃ \1/g"
fi

echo $divider_btm

version_in_changelog=$(echo "$changelog_msg" | grep -E "^#+ [0-9].*" | sed -n -E "s/^#+ (.*)/\1/gp")
if [[ $version_in_changelog != "$stripped_sdk_version" ]]; then
  echo "\033[0;31mPublish material check is failed!\033[0m"
  echo "  \033[0;31m- The first version listed in CHANGELOG.md is not matched with the targeting version.\033[0m"
  echo "  \033[0;31m- CHANGELOG version: \033[4m$version_in_changelog\033[0m"
  echo "  \033[0;31m- Targeting version: \033[4m$stripped_sdk_version\033[0m"
fi
