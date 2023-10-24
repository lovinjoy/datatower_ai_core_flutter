echo "=============================================="
echo "Starts to build..."
touch "./lib/src/test/test_gen.dart"    # rebuild
dart run build_runner build --delete-conflicting-outputs
echo "Starts to move and rename file..."
mkdir -p "./example/lib/test/"
generated=$(find "./.dart_tool/build/generated/datatower_ai_core_flutter/" -name "*.g.dt.dart")
if [ -n "$generated" ]
then
  mv "$generated" "./example/lib/test/dt_methods.dart"
  echo "Finished, starts to clean up..."
  rm -rf "./.dart_tool/build/generated/datatower_ai_core_flutter"
  echo "Done!"
else
  echo "Nothing generated"
fi
echo "=============================================="