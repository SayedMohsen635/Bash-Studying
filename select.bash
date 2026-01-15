select name in Ubuntu Kali Pop; do
  case $name in
  Ubuntu)
    echo "${name} is for general usage"
    ;;
  Kali)
    echo "${name} is used for security development"
    ;;
  Pop)
    echo "${name} is cool os"
    ;;
  *)
    echo "Thanks for using the app"
    exit 1
    ;;
  esac
done
