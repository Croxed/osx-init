#! /bin/bash
echo "Updating Brew or installing if Homebrew doesn't exist" 
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	brew update && brew outdated && brew upgrade && brew cleanup
fi
echo Installing Quick Look-plugins from Homebrew
brew cask install betterzipql invisorql provisionql qlcolorcode qlimagesize qlmarkdown qlprettypatch quicklook-csv quicklook-json quicknfo scriptql suspicious-package webpquicklook
echo Installing/Downloading Quick Look-plugins that are not from Homebrew 
echo THEY MIGHT BE OUTDATED
cp QLPlugins/*.qlgenerator ~/Library/QuickLook
curl -o ~/Library/QuickLook http://repo.whine.fr/qlmoviepreview.qlgenerator-10.9.zip
curl -o ~/Library/QuickLook http://ipaql.com/site/assets/files/1006/ipaql_1-3-0.zip
curl -o ~/Library/QuickLook https://www.kainjow.com/downloads/ScriptQL_qlgenerator.zip
curl -o ~/Library/QuickLook http://blog.timac.org/post-images/StringsFileQuickLook/StringsFile.qlgenerator.zip
cd ~/Library/QuickLook
for filename in ./*.zip; do
	unzip $filename
done
rm -rf *.zip
echo Restarting Quick Look-manager
qlmanage -r