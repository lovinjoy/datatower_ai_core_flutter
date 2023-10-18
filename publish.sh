echo "Starts to verify DT Flutter..."

project_path="$(dirname "$0")"
echo "Project path: $project_path"

divider="========================================================"
echo "$divider"

# shellcheck disable=SC2002
sdk_version=$(cat "$project_path/lib/api/dt.dart" | grep "versionName *=" | sed "s/^ *static const _versionName = \"\(.*\)\"; *$/\1/g")
# shellcheck disable=SC2002
sdk_version_2=$(cat "$project_path/pubspec.yaml" | grep "version:" | sed "s/^ *version: \(.*\) *$/\1/g")
echo "Version of \033[1mDT Flutter\033[0m："
echo "  - \033[1m[dt.dart]\033[0m \033[4m$sdk_version\033[0m"
echo "  - \033[1m[pubspec.yaml]\033[0m \033[4m$sdk_version_2\033[0m"

# shellcheck disable=SC2001
stripped_sdk_version=$(echo "$sdk_version" | sed "s/^\([0-9]*\.[0-9]*\.[0-9]*\).*$/\1/g")
# shellcheck disable=SC2001
stripped_sdk_version_2=$(echo "$sdk_version_2" | sed "s/^\([0-9]*\.[0-9]*\.[0-9]*\).*$/\1/g")

warning_sign="\033[0;33m⚠\033[0m"
version_check_failed=false
if [[ $stripped_sdk_version != "$stripped_sdk_version_2" ]]; then
  echo "$warning_sign \033[0;31mVersion code between two files is non-identical! ($stripped_sdk_version != $stripped_sdk_version_2)\033[0m"
  version_check_failed=true
fi

# shellcheck disable=SC2002
android_sdk_ver=$(cat "$project_path/android/build.gradle" | grep "com.lovinjoy:datatowerai-core" | sed "s/^.*\"com.lovinjoy:datatowerai-core:\(.*\)\".*$/\1/g")
# shellcheck disable=SC2002
ios_sdk_ver=$(cat "$project_path/ios/datatower_ai_core_flutter.podspec" | grep "DataTowerAICore" | sed "s/^.*'DataTowerAICore'.*'\(.*\)'/\1/g")
echo "Used version of \033[1mDT Android\033[0m：\033[4m$android_sdk_ver\033[0m"
echo "Used version of \033[1mDT iOS\033[0m：\033[4m$ios_sdk_ver\033[0m"

echo "$divider"

if [[ $version_check_failed == true ]]; then
  echo "\033[0;31mVersion check is failed, pls see details above!\033[0m"
  exit
fi

echo "\033[0;43m ⓘ  Please check versions shown above\033[0m"
printf "Run \033[0;34mflutter pub publish\033[0m? [Enter \033[1;34mY\033[0m or \033[1;34my\033[0m to run, otherwise to quit]: "
read run_publish
if [[ $run_publish == "Y"  ]] || [[ $run_publish == "y" ]]; then
  echo "Running \033[0;34mflutter pub upgrade\033[0m..."
  flutter pub publish
fi
