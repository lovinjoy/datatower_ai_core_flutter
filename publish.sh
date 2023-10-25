echo "Starts checking and publishing process..."

project_path="$(dirname "$0")"

thin_divider="--------------------------------------------------------"
divider="========================================================"
echo "$divider"

printf "Run \033[0;34mgenerate_dt_api_methods.sh\033[0m? [Enter \033[1;34mY\033[0m or \033[1;34my\033[0m to run, otherwise to ignore]: "
read -r run_publish
if [[ $run_publish == "Y"  ]] || [[ $run_publish == "y" ]]; then
  echo "Running \033[0;34mgenerate_dt_api_methods.sh\033[0m..."
  sh "$project_path/generate_dt_api_methods.sh" -f
else
  echo "Ignored generate_dt_api_methods"
fi

total_num_api="$(grep -c -E '"[A-Za-z0-9]*_[A-Za-z0-9]*\": DtApiMethod\(' < "$project_path/example/lib/test/dt_methods.dart")"
echo "Total Number of APIs in dt_methods.dart: \033[4m$total_num_api\033[0m"

echo "$divider"

sdk_version=$(grep "versionName *=" < "$project_path/lib/api/dt.dart" | sed "s/^ *static const _versionName = \"\(.*\)\"; *$/\1/g")
sdk_version_2=$(grep "version:" < "$project_path/pubspec.yaml" | sed "s/^ *version: \(.*\) *$/\1/g")
echo "Version of \033[1mDT Flutter\033[0m："
echo "  - \033[1m[dt.dart]\033[0m \033[4m$sdk_version\033[0m"
echo "  - \033[1m[pubspec.yaml]\033[0m \033[4m$sdk_version_2\033[0m"

stripped_sdk_version=${sdk_version//^\([0-9]*\.[0-9]*\.[0-9]*\).*$/\1}
stripped_sdk_version_2=${sdk_version_2//^\([0-9]*\.[0-9]*\.[0-9]*\).*$/\1}

warning_sign="\033[0;33m⚠\033[0m"
version_check_failed=false
if [[ $stripped_sdk_version != "$stripped_sdk_version_2" ]]; then
  echo "$warning_sign \033[0;31mVersion code between two files is non-identical! ($stripped_sdk_version != $stripped_sdk_version_2)\033[0m"
  version_check_failed=true
fi

android_sdk_ver=$(grep "com.lovinjoy:datatowerai-core" < "$project_path/android/build.gradle" | sed "s/^.*\"com.lovinjoy:datatowerai-core:\(.*\)\".*$/\1/g")
ios_sdk_ver=$(grep "DataTowerAICore" < "$project_path/ios/datatower_ai_core_flutter.podspec" | sed "s/^.*'DataTowerAICore'.*'\(.*\)'/\1/g")
echo "Used version of \033[1mDT Android\033[0m：\033[4m$android_sdk_ver\033[0m"
echo "Used version of \033[1mDT iOS\033[0m：\033[4m$ios_sdk_ver\033[0m"

echo "$thin_divider"

echo "Getting the latest DT iOS/Android version from \033[1mremote...\033[0m"
android_sdk_remote_ver=$(curl -s https://s01.oss.sonatype.org/content/repositories/releases/com/lovinjoy/datatowerai-core/maven-metadata.xml | grep "<latest>.*</latest>" | cut -d ">" -f2 | cut -d "<" -f1)
echo " - [\033[1mDT Android\033[0m | Maven Central] \033[4m$android_sdk_remote_ver\033[0m"
ios_sdk_remote_ver=$(curl -s https://cocoapods.org/pods/DataTowerAICore | sed -n 's/.*<h1>DataTowerAICore <span>\([0-9a-zA-Z.-]*\)<\/span><\/h1>.*/\1/gp')
echo " - [\033[1mDT iOS\033[0m | CocoaPods] \033[4m$ios_sdk_remote_ver\033[0m"

if [[ $version_check_failed == true ]]; then
  echo "$divider"
  echo "\033[0;31mVersion check is failed, pls see details above!\033[0m"
  exit
else
  echo "$thin_divider"
  echo "\033[5;33m ⬆ \033[0;4;33m ⓘ  Please check versions shown above \033[0m"
fi

echo "$divider"

num_find_in_changelog=$(grep -c -E "^#+ ${stripped_sdk_version}" < "$project_path/CHANGELOG.md")
if [[ $num_find_in_changelog == 0 ]]; then
  echo "\033[0;31mPublish material check is failed!"
  echo "  - This version ($stripped_sdk_version) is not listed in \033[1;31mCHANGELOG.md\033[0;31m.\033[0m"
  exit
else
  changelog_lower_bound=$(grep -FnE -m2 "# .*" < "$project_path/CHANGELOG.md" | tail -n1 | cut -d ":" -f 1)
  echo "CHANGELOG"
  sed -n -e "1,$((changelog_lower_bound-1))p" < ./CHANGELOG.md #| sed -e :a -e '/^\n*$/{$d;N;};/\n$/ba'
fi

echo "$divider"

printf "Run \033[0;34mflutter pub publish\033[0m? [Enter \033[1;34mY\033[0m or \033[1;34my\033[0m to run, otherwise to quit]: "
read -r run_publish
if [[ $run_publish == "Y"  ]] || [[ $run_publish == "y" ]]; then
  echo "Running \033[0;34mflutter pub publish\033[0m..."
  flutter pub publish
else
  echo "Ignored flutter pub publish"
fi
