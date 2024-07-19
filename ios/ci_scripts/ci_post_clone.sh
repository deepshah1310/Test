#!/bin/sh

#  ci_post_clone.sh
#  Runner
#
#  Created by Deep Shah on 19/07/24.
#  

cd Runner

git clone https://github.com/flutter/flutter.git --depth 1 -b -stable $HOME/flutter
export PATH='$PATH:$HOME/flutter/bin'

flutter precache --ios
flutter pub get

HOMEBREW_NO_AUTO_UPDATE=1
brew install cocoapods

cd ios && pod install

exit 0
