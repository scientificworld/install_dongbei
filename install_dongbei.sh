#!/bin/sh
cd ~
git clone https://github.com/zhanyong-wan/dongbei.git
if [ "$SHELL" == "/bin/bash" ]; then
	CONFIG=~/.bash_profile
elif [ "$SHELL" == "/bin/csh" ]; then
        CONFIG=~/.cshrc
elif [ "$SHELL" == "/bin/zsh" ]; then
        CONFIG=~/.zshrc
elif [ "$SHELL" == "/bin/ksh" ]; then
        CONFIG=~/.kshrc
else
	CONFIG=~/.${SHELL}rc
fi
echo "alias dongbei=~/dongbei/src/dongbei.py" >> $CONFIG
echo "alias dongbeit=~/dongbei/test/dongbei_test.py" >> $CONFIG
