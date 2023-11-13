set -e
echo "start generate code"
file_dir=$(pwd)/pigeon/host_api
echo "file dir is $file_dir"
filelist=$(ls $file_dir)
for file in $filelist; do
    echo $file_dir/$file
    dart run pigeon --input $file_dir/$file
done

echo "success generate code"
