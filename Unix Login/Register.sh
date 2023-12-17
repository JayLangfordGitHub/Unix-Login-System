read -p "Enter your full name: " name
read -p "Enter your date of birth (DD/MM/YYYY): " dob
read -p "Enter your username: " username
read -p "Enter your password: " password
read -p "Enter your email address: " email

echo "$name $dob $username $password $email" >> Register.txt

echo "Account registered"
