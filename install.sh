#/*************************************************************************
#    > File Name: install.sh
#  > Created Time: 2016年03月12日 星期六 22时57分35秒
# ************************************************************************/
#
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


#npm for ubuntu
http://www.cnblogs.com/seanlv/archive/2011/09/24/2189719.html

# centos need download source code and compile, cannot npm install, 
#    exec npm install -g npm to update npm
# for javascript
npm install -g npm
npm install -g tern
npm install -g js-beautify
