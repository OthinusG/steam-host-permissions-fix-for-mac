#!/bin/bash

sudo -S cp /Users/xiaolin/hosts /private/etc/hosts << EOF
0000
EOF
sudo -S chmod +a 'user:xiaolin:allow write' /etc/hosts << EOF
0000
EOF
open -a /Applications/Steam++.app
exit