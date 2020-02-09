#!/bin/sh
cd ~
git clone https://github.com/zhanyong-wan/dongbei.git
if [ "$SHELL" == "/bin/bash" ]; then
	CONFIG=~/.bash_profile
fi
if [ "$SHELL" == "/bin/csh" ]; then
        CONFIG=~/.cshrc
fi
if [ "$SHELL" == "/bin/zsh" ]; then
        CONFIG=~/.zshrc
fi
if [ "$SHELL" == "/bin/ksh" ]; then
        CONFIG=~/.kshrc
fi
echo "alias dongbei=~/dongbei/src/dongbei.py" >> $CONFIG
echo "alias dongbeit=~/dongbei/test/dongbei_test.py" >> $CONFIG
