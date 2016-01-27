#! /bin/bash
mkdir -p ~/Library/QuickLook
echo Installing Quick Look-plugins from Homebrew
brew tap caskroom/cask
brew cask install betterzipql invisorql provisionql qlcolorcode qlimagesize qlmarkdown qlprettypatch quicklook-csv quicklook-json quicknfo scriptql suspicious-package webpquicklook
echo Installing/Downloading Quick Look-plugins that are not from Homebrew 
echo THEY MIGHT BE OUTDATED
cp QLPlugins/*.qlgenerator ~/Library/QuickLook/
curl -o ~/Library/QuickLook/1.zip http://repo.whine.fr/qlmoviepreview.qlgenerator-10.9.zip
curl -o ~/Library/QuickLook/2.zip http://ipaql.com/site/assets/files/1006/ipaql_1-3-0.zip
curl -o ~/Library/QuickLook/3.zip https://www.kainjow.com/downloads/ScriptQL_qlgenerator.zip
curl -o ~/Library/QuickLook/4.zip http://blog.timac.org/post-images/StringsFileQuickLook/StringsFile.qlgenerator.zip
cd ~/Library/QuickLook
for filename in ./*.zip; do
	unzip $filename
done
rm -rf *.zip
echo Restarting Quick Look-manager
qlmanage -r