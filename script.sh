# credits @marshmello61
# ported for SPARKZZZ
repo="SPARKZZZ"
rm -rf ${repo}

echo "You're running the SPARKZZZ Updater script"
echo " "
# Get username of user
echo -n "Enter your GitHub username: "
read userName
echo " "

# Check if user has forked or has the same repo name
echo -n "Do you forked from SPARKZZZ Repo or Do you have SPARKZZZ Repo? [y/n]: "
read fork
echo " "

if [[ "${fork}" == 'y' ]]; then
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
elif [[ "${fork}" == 'n' ]]; then
	echo -n "Enter your repo name: "
	read repo
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
else
        echo " "
        echo "You were only supposed to enter y or n"
        exit 1
fi

echo " "
echo "Updating your SPARKZZZ"
git pull https://github.com/vishnu175/SPARKZZZ.git
git commit -m "⚡"
git push
echo " "
echo "Updated"
cd ..
rm -rf ${repo}
