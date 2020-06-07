while getopts ":ht" opt; do
  case ${opt} in
    h ) # process option h
    echo h
      ;;
    t ) # process option t
    echo t
      ;;
    \? ) echo "Usage: cmd [-h] [-t]"
      ;;
  esac
done

