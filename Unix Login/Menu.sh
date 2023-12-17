echo "Welcome, please choose one of the following options:"
echo "1. Register"
echo "2. Login"
read -p "Enter your selection: " selection

case $selection in
  1)
    ./Register.sh
    ;;
  2)
    ./Login.sh
    ;;
  *)
    echo "Invalid selection. Please try again."
    ;;
esac
