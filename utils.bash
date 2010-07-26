
function grab {
    sudo apt-get install $1
}

function spy {
    apt-cache search $1
}

function gh {
    git clone http://github.com/$1/$2.git
}
