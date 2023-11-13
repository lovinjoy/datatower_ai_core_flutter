echo "=============================================="
echo "Starts to build..."

while getopts "f" flag; do
  case $flag in
    f)
      echo "(With force)"
      rm "$(find "$(dirname "$0")/.dart_tool/build" -type f -maxdepth 2 -name "asset_graph.json")"  # -f: force
      ;;
    *)
      ;;
  esac
done

dart run build_runner build --delete-conflicting-outputs
echo "Starts to move and rename file..."
mkdir -p "$(dirname "$0")/example/lib/test/"
generated=$(find "$(dirname "$0")/.dart_tool/build/generated/datatower_ai_core/" -name "*.g.dt.dart")
if [ -n "$generated" ]
then
  mv "$generated" "$(dirname "$0")/example/lib/test/dt_methods.dart"
  echo "Finished, starts to clean up..."
  rm -rf "$(dirname "$0")/.dart_tool/build/generated/datatower_ai_core"
  echo "Done!"
else
  echo "Nothing generated"
fi
echo "=============================================="