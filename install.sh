#/*************************************************************************
#    > File Name: install.sh
#  > Created Time: 2016年03月12日 星期六 22时57分35秒
# ************************************************************************/
#
sys_info=`head -n 1 /etc/issue | awk '{print $1}'`
#################################################
# install copydir for zsh
sudo apt-get install xclip
# fix amark cannot play music
sudo apt-get install phonon-backend-vlc
#-- autojump
git clone git://github.com/joelthelion/autojump.git
cd autojump
./install.py

# https://www.ibm.com/developerworks/cn/aix/library/au-learningdoxygen/
sudo apt-get install doxygen

# get python_lib path
python -c "from distutils.sysconfig import get_python_lib; print (get_python_lib())"
# get python exe path
python -c "import sys; print sys.executable"

# install yapf path
pip install yapf
# set yapf path in $PATH

#nodejs
if [ "$sys_info" = "Ubuntu" ];then
    sudo apt-get install nodejs
    if [ ! -f "/usr/bin/node" ];then
        sudo ln -s /usr/bin/nodejs /usr/bin/node
    fi
    sudo apt-get install npm
    sudo npm install -g npm  # for update npm
    sudo npm install -g tern
    sudo npm install -g js-beautify
    sudo npm install -g jshint
else
    #http://frontenddev.org/article/ali-cloud-ecs-use-result-1-use-yum-to-install-nodejs-npm-environment.html
    wget http://nodejs.org/dist/node-latest.tar.gz
    tar zxf node-*.tar.gz
    cd node-v*
    ./configure
    make && make install

    if [ ! -f "/usr/bin/node" ];then
        sudo ln -s /usr/bin/nodejs /usr/bin/node
    fi
    npm install -g npm # for update npm
    npm install -g tern
    npm install -g js-beautify
    npm install -g jshint
fi

# just for MacOS
#install Alfred
# on linux like alfred https://github.com/qdore/Mutate
