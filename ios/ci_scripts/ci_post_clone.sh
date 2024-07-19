#!/bin/sh

#  ci_post_clone.sh
#  Runner
#
#  Created by Deep Shah on 19/07/24.
#  

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install cocoapods
pod install
