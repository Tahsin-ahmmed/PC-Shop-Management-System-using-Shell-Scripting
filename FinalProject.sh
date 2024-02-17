#!/bin/bash

# Define the cost array for all categories
cost=(690 1700 2200 42000 78000 92000 48000 62000 82000)

# Function to apply winter offer
winter_offer() {
    totalCost=$(($totalCost - 500))
}

# Function for payment method
payment_method() {
    echo -e "\nPlease enter your payment method."
echo "**************************************************"
echo "*  1. Online Payment                             *"
echo "*  2. Cash On Delivery                           *"
echo "**************************************************"
    
    read -p "Enter your choice: " pay

    case $pay in
        1)
            echo -e "Thanks!! For Choosing Online Payment.\nOur Bkash number is 019*********"
            ;;
        2)
            echo -e "Thanks!! For choosing Cash on Delivery.\nPlease complete your dues, after receiving your products."
            ;;
        *)
            echo "Enter valid choice"
            payment_method
            ;;
    esac
}

# Function for computer accessories
Computer_accessories() {
    accessoriesChoice=0

    echo "**************************************************"
    echo "*  1. HP 32 GB Pendrive - 690 Taka               *"
    echo "*  2. HP Original Wireless Mouse - 1700 Tak      *"
    echo "*  3. HP Original Wired Keyboard - 2200 Taka     *"
    echo "*  4. Exit                                       *"
    echo "**************************************************"
   
    read -p "Enter your choice: " accessoriesChoice

    case $accessoriesChoice in
        1)
            read -p "Your choice is HP 32 GB Pendrive with a price of 690 Taka. Are you sure to buy? If 'Yes' Enter 1 else any number: " num
            if [ $num -eq 1 ]; then
                a[0]=$((a[0] + 1))
                totalCost=$((totalCost + cost[0]))
            fi
            echo -e "Your Cost in Cart is $totalCost"
            ;;
        2)
            read -p "Your choice is HP Original Wireless Mouse with a price of 1700 Taka. Are you sure to buy? If 'Yes' Enter 1 else any number: " num
            if [ $num -eq 1 ]; then
                a[1]=$((a[1] + 1))
                totalCost=$((totalCost + cost[1]))
            fi
            echo -e "Your Cost in Cart is $totalCost"
            ;;
        3)
            read -p "Your choice is HP Original Wired Keyboard with a price of 2200 Taka. Are you sure to buy? If 'Yes' Enter 1 else any number: " num
            if [ $num -eq 1 ]; then
                a[2]=$((a[2] + 1))
                totalCost=$((totalCost + cost[2]))
            fi
            echo -e "Your Cost in Cart is $totalCost"
            ;;
        *)
            echo -e "Exit from Computer Accessories Category"
            ;;
    esac
}

# Function for pre-build desktop
Prebuild_Desktop() {
    desktopChoice=0

    echo "**************************************************"
    echo "*  1. Core i3 with GTX 710 - 42000 Taka          *"
    echo "*  2. Core i5 with GTX 1660 - 78000 Taka         *"
    echo "*  3. Core i7 with GTX 1660 Ti - 92000 Taka      *"
    echo "*  4. Exit                                       *"
    echo "**************************************************"

    read -p "Enter your choice: " desktopChoice

    case $desktopChoice in
        1)
            read -p "Your choice is Core i3 with GTX 710 with a price of 42000 Taka. Are you sure to buy? If 'Yes' Enter 1 else any number: " num
            if [ $num -eq 1 ]; then
                a[3]=$((a[3] + 1))
                totalCost=$((totalCost + cost[3]))
            fi
            echo -e "Your Cost in Cart is $totalCost"
            ;;
        2)
            read -p "Your choice is Core i5 with GTX 1660 with a price of 78000 Taka. Are you sure to buy? If 'Yes' Enter 1 else any number: " num
            if [ $num -eq 1 ]; then
                a[4]=$((a[4] + 1))
                totalCost=$((totalCost + cost[4]))
            fi
            echo -e "Your Cost in Cart is $totalCost"
            ;;
        3)
            read -p "Your choice is Core i7 with GTX 1660 TI with a price of 92000 Taka. Are you sure to buy? If 'Yes' Enter 1 else any number: " num
            if [ $num -eq 1 ]; then
                a[5]=$((a[5] + 1))
                totalCost=$((totalCost + cost[5]))
            fi
            echo -e "Your Cost in Cart is $totalCost"
            ;;
        *)
            echo -e "Exit from Pre-Build Desktop Category"
            ;;
    esac
}

# Function for laptop
Laptop() {
    laptopChoice=0

    echo "**************************************************"
    echo "*  1. HP Probook 14s - 48000 Taka                *"     
    echo "*  2. HP Elitebook - 62000 Taka                  *"
    echo "*  3. HP Pavilion - 82000 Taka                   *"
    echo "*  4. Exit                                       *"
    echo "**************************************************"

    read -p "Enter your choice: " laptopChoice

    case $laptopChoice in
        1)
            read -p "Your choice is HP Probook 14s with a price of 48000 Taka. Are you sure to buy? If 'Yes' Enter 1 else any number: " num
            if [ $num -eq 1 ]; then
                a[6]=$((a[6] + 1))
                totalCost=$((totalCost + cost[6]))
            fi
            echo -e "Your Cost in Cart is $totalCost"
            ;;
        2)
            read -p "Your choice is HP Elitebook with a price of 62000 Taka. Are you sure to buy? If 'Yes' Enter 1 else any number: " num
            if [ $num -eq 1 ]; then
                a[7]=$((a[7] + 1))
                totalCost=$((totalCost + cost[7]))
            fi
            echo -e "Your Cost in Cart is $totalCost"
            ;;
        3)
            read -p "Your choice is HP Pavilion Gaming with a price of 82000 Taka. Are you sure to buy? If 'Yes' Enter 1 else any number: " num
            if [ $num -eq 1 ]; then
                a[8]=$((a[8] + 1))
                totalCost=$((totalCost + cost[8]))
            fi
            echo -e "Your Cost in Cart is $totalCost"
            ;;
        *)
            echo -e "Exit from Laptop Category"
            ;;
    esac
}

# Main program starts here

for ((i = 0; i < 9; i++)); do
    a[i]=0
done

items=("HP Original 32 Gb Pendrive" "HP Original Wireless Mouse" "HP Original Wired Keyboard" "Core i3 With GTX 710 Graphic"
       "Core i5 With GTX 710 Graphic  " "Core i7 With GTX 1660 TI GPU" "HP Probook 14s Core I5 10Gen" "HP Elitebook Core I5 10Gen" "HP Pavilion Gaming I5 10Gen")

totalCost=0
c=1
echo "**************************************************"
echo "*                 Asslamualikum !!               *"
echo "*                                                *"
echo "*              Welcome to Our Online             *"
echo "*                     PC Shop                    *"
echo "*                                                *"
echo "**************************************************"
echo -e "Please enter your name sir           : \c"
read -r Name
echo -e "Please enter your address sir        : \c"
read -r Address
while true; do
    echo -e "Please enter your E-mail address sir : \c"
    read -r Mail_address

    # Check if the email address contains '@gmail.com'
    if [[ "$Mail_address" =~ @gmail\.com ]]; then
        break  # Break out of the loop if the email is valid
    else
        echo "Invalid email address. Please enter a valid Gmail address."
    fi
done

clear


clear


clear

while [ $c -eq 1 ]; do
    if [ $c -eq 1 ]; then
        echo "**************************************************"
        echo "*  1. Computer Accessories                       *"
        echo "*  2. Pre-built Desktops                         *"
        echo "*  3. Laptops                                    *"
        echo "*  4. Exit                                       *"
        echo "**************************************************"
        read -p "Please enter your choice below: " choice
        clear

        case $choice in
            1)
                Computer_accessories
                ;;
            2)
                Prebuild_Desktop
                ;;
            3)
                Laptop
                ;;
            *)
                echo -e "Enter Valid Categories Choice"
                ;;
        esac
        echo "-----------------------------------------------------------------------------"
        echo "*                              $Name's Cart                                *"
        echo "-----------------------------------------------------------------------------"
        echo -e "Id\tItems\t\t\t\tQuantity\t\t\tCost"
        for ((i = 0; i < 9; i++)); do
            if [ ${a[i]} -ne 0 ]; then
                echo -e "$i\t${items[i]}\t${a[i]}\t\t\t\t$((cost[i] * a[i]))"
            fi
        done
        echo "-----------------------------------------------------------------------------"
        echo -e "Total Cost\t\t\t\t\t\t\t\t$totalCost"
        echo "-----------------------------------------------------------------------------"
        echo "**************************************************"
        echo "*  If you wish to buy anything more Enter        *"
        echo "*  1. Add Item                                   *"
        echo "*  2. Delete Item                                *"
        echo "*  Any to Exit                                   *"
        echo "**************************************************"
        read -p "Enter your choice: " c
    fi

    if [ $c -eq 2 ]; then
        id=0
        echo -e "Enter id to delete item"
        read -p "Enter your choice: " id

        if [ $id -lt 9 ] && [ $id -ge 0 ]; then
            totalCost=$((totalCost - cost[id] * a[id]))
            a[id]=0
        else
            echo -e "Enter Valid id"
        fi

       # echo -e "Revised Items \n"
        echo "-----------------------------------------------------------------------------"
        echo "*                             Revised Cart's                                *" 
        echo "-----------------------------------------------------------------------------"
        echo "*                              $Name's Cart                                *"
        echo "-----------------------------------------------------------------------------"
        echo -e "Id\tItems\t\t\t\tQuantity\t\t\tCost"
        for ((i = 0; i < 9; i++)); do
            if [ ${a[i]} -ne 0 ]; then
                echo -e "$i\t${items[i]}\t${a[i]}\t\t\t\t$((cost[i] * a[i]))"
            fi
        done
        echo "-----------------------------------------------------------------------------"
        echo -e "Total Cost\t\t\t\t\t\t\t\t$totalCost" 
        echo "-----------------------------------------------------------------------------"

        echo "**************************************************"
        echo "*  If you wish to buy anything more Enter        *"
        echo "*  1. Add Item                                   *"
        echo "*  2. Delete Item                                *"
        echo "*  Any to Exit                                   *"
        echo "**************************************************"
        read -p "Enter your choice: " c
    fi
done

clear

echo -e "Your total cost is $totalCost\n"

coupon=0
echo -e "Please enter Winter special coupon code : \c"
read -p "" coupon

if [ $coupon -eq 101 ]; then
    winter_offer
    echo -e "\n\nCongratulations!! You got a winter special offer.\nYour new cost is $totalCost"
else
    echo -e "Sorry!!! You entered a wrong coupon code.\nYour total cost is $totalCost"
fi

payment_method

echo -e "\n\nThank You so much $Name for choosing us.\n\n"

