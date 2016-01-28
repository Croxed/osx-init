#! /bin/bash
mkdir -p ~/Library/QuickLook
echo Installing Quick Look-plugins from Homebrew
brew tap caskroom/cask

# All Quick Look-plugins from homebrew
brew cask install betterzipql
brew cask install invisorql 
brew cask install provisionql 
brew cask install qlcolorcode 
brew cask install qlimagesize 
brew cask install qlmarkdown 
brew cask install qlprettypatch 
brew cask install quicklook-csv 
brew cask install quicklook-json 
brew cask install quicknfo scriptql 
brew cask install suspicious-package 
brew cask install webpquicklook

# All Quick Look-plugins that aren't in homebrew
echo Installing/Downloading Quick Look-plugins that are not from Homebrew 
echo THEY MIGHT BE OUTDATED
curl -o ~/Library/QuickLook https://raw.github.com/Croxed/OSX-Fresh-Install/master/QLPlugins/QLStephen.qlgenerator

# Downloading the plugins
curl -o ~/Library/QuickLook/1.zip http://repo.whine.fr/qlmoviepreview.qlgenerator-10.9.zip
curl -o ~/Library/QuickLook/2.zip http://ipaql.com/site/assets/files/1006/ipaql_1-3-0.zip
curl -o ~/Library/QuickLook/3.zip http://blog.timac.org/post-images/StringsFileQuickLook/StringsFile.qlgenerator.zip

# Moving into QuickLook-folder to extract the .zip's
cd ~/Library/QuickLook
for filename in ./*.zip; do
	unzip -q $filename
done

# Removing all .zip-archives
rm -rf *.zip
echo Restarting Quick Look-manager
qlmanage -r