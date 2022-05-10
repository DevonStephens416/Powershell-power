#create a network share 
#variables
$shareName #stores user input for network share folder
$sharePath #stores user input for network share path
$userName # stores username
$user
#begin actual script below
$shareName = read-host “Name network share” 
#prompts user for input for the share name and stores that info in variable
$sharePath = read-host “Type file path EX: C:\dc\usershare”
#prompts user for input for the share file path
$userName = read-host “Enter user for admin access”
#prompts user for username for full SMB access
$user = “Adatum\” + $username
New-smbshare -name $shareName -path $sharePath -fullaccess $user
