phile_czekr () {
  if [ "$DEBUG" = "true" ]; then
    printf "If $1 is older than $2 days then run the function $3\n"
  fi
  filename=$1
  file_age_thresh=$(date -d "now - $2 days" +%s)
  function_to_run=$3
  if [ -f $filename ]; then
    file_age=$(sudo date -r "$filename" +%s)
  else
    file_age=$file_age_thresh
  fi

  # ...and then just use integer math:
  if [ $file_age -le $file_age_thresh ]; then
    $function_to_run
  elif [ "${USE_THE_FORCE_LUKE}" = "true" ]; then
    $function_to_run
  else
    echo "$filename is up to date"
  fi
}

cleanup () {
  zipper $THIS_LOG
  zipper $THIS_ERR
}

open_file () {
  if [[ -f ${1}.gz ]]; then
    unzipper ${1}.gz
  fi
}

zipper () {
  if [[ -f $1 ]]; then
    gzip $1
  fi
}

unzipper () {
  if [[ -f $1 ]]; then
    gunzip $1
  fi
}

theme_finder () {
  # add any directory in /boot/grub/themes that contains a theme.txt
  #for i in $(find /boot/grub/themes -name theme.txt)
  for i in $(find $1 -name theme.txt)
  do
    possible_theme_paths+=("$i")
  done
}
