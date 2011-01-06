function up {
    for ((c=1; c <= $1; c++))
    do
	cd ..
    done
}

function grab {
    if [ "$OSTYPE" == 'linux-gnu' ]; then
	sudo apt-get install $1
    else
	sudo port install $1
    fi
}

function spy {
    if [ "$OSTYPE" == 'linux-gnu' ]; then
	echo "new spy"
	apt-cache search $1
    else
	port search $1
    fi
}

function gh {
    git clone http://github.com/$1/$2.git
}
