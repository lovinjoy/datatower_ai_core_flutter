flag_generate=0;
flag_publish=0;

# Read flags
while [ $# -gt 0 ] ; do
  case $1 in
    -g | --generate) flag_generate=1 ;;
    -p | --publish) flag_publish=1 ;;
    -d | --dry-run) flag_publish=2 ;;
    -n | --no) flag_generate=-1; flag_publish=-1 ;;
    -i | --ignore) flag_generate=-1 ;;
    -q | --no-publish) flag_publish=-1 ;;
    -h | --help)
      echo "Available flags:"
      echo "  ┌───────────────────┬────────────────────────────────────────────┐"
      echo "  │  \033[1mFlag             │  Information\033[0m                               │"
      echo "  ├───────────────────┼────────────────────────────────────────────┤"
      echo "  │  -g --generate    │  Generate API methods                      │"
      echo "  │  -i --ignore      │  Not generate API methods                  │"
      echo "  │                   │                                            │"
      echo "  │  -p --publish     │  Publish to pub                            │"
      echo "  │  -d --dry-run     │  Run publish locally without upload        │"
      echo "  │  -q --no-publish  │  Not publish                               │"
      echo "  │                   │                                            │"
      echo "  │  -n --no          │  Not generate API methods and not publish  │"
      echo "  └───────────────────┴────────────────────────────────────────────┘"
      exit
    ;;
    *) ;;
  esac
  shift
done


echo "Starts checking and publishing process..."

project_path="$(dirname "$0")"

divider="========================================================"
echo "$divider"

need_run_generate=false
if [[ $flag_generate == 0 ]]; then
  printf "Run \033[0;34mgenerate_dt_api_methods.sh\033[0m? [Enter \033[1;34mY\033[0m or \033[1;34my\033[0m to run, otherwise to ignore]: "
  read -r run_publish
  if [[ $run_publish == "Y"  ]] || [[ $run_publish == "y" ]]; then
    need_run_generate=true
  fi
elif [[ $flag_generate == 1 ]]; then
  need_run_generate=true
fi

if [[ $need_run_generate == true ]]; then
  echo "Running \033[0;34mgenerate_dt_api_methods.sh\033[0m..."
  sh "$project_path/generate_dt_api_methods.sh" -f
else
  echo "Ignored generate_dt_api_methods"
fi

echo "$divider"

sh "$project_path/publish_check.sh"

echo "$divider"

run_publish_mode=$flag_publish
if [[ $run_publish_mode == 0 ]]; then
  printf "Run \033[0;34mflutter pub publish\033[0m? [Enter \033[1;34mY\033[0m or \033[1;34my\033[0m to run, \033[1;36mD\033[0m or \033[1;36md\033[0m to dry-run, otherwise to quit]: "
  read -r run_publish
  if [[ $run_publish == "Y"  ]] || [[ $run_publish == "y" ]]; then
    run_publish_mode=1
  elif [[ $run_publish == "D"  ]] || [[ $run_publish == "d" ]]; then
    run_publish_mode=2
  fi
fi

if [[ $run_publish_mode == 1 ]]; then
  echo "Running \033[0;34mflutter pub publish\033[0m..."
  flutter pub publish
elif [[ $run_publish_mode == 2 ]]; then
  echo "Running \033[0;34mflutter pub publish --dry-run\033[0m..."
  flutter pub publish --dry-run
else
  echo "Ignored flutter pub publish"
fi
