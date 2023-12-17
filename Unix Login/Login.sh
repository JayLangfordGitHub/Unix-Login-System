failed_attempts=0

while [ $failed_attempts -lt 3 ]; do

read -p "Enter username: " username
read -p "Enter password: " password

user_data=$(grep "$username" Register.txt)

stored_password=$(echo $user_data | awk '{print $4}')

if [ "$password" == "$stored_password" ]; then
  echo "Login successful!"
else
  echo "Invalid username or password. Please try again."
((failed_attempts++))
fi
done
echo "You have entered an incorrect username or password 3 times and will now be locked out."
exit 1
