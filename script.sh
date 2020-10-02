# SPARKZZZ updater script 

#get repo
cd ..
echo -n "Which repo you want to update? (SPARKZZZ) : "
read repo
echo " "

rm -rf ${repo}

echo "You're running the SPARKZZZ update script."
echo " "

#get username of user
echo -n "Enter your github username: "
read userName
echo " "

git clone https://github.com/${userName}/${repo}.git

echo " "
echo "Updating your ${repo} repo..."
echo " "
cd ${repo}

if [[ "${repo}" = 'SPARKZZZ' ]]; then
	git pull https://github.com/vishnu175/SPARKZZZ.git

else
	echo -n "Enter the upstream repo's username: "
	read ${upstream}
	git pull https://github.com/${upstream}/${repo}.git
fi

git add .
git commit -m "Windows/termux merge"
git push
echo " "
echo "Updated"
echo " "
cd ..
cmd /k
