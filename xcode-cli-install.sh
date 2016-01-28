#!/bin/sh
OSX_VERS=$(sw_vers -productVersion | awk -F "." '{print $2}')

# Get Xcode CLI tools
# https://devimages.apple.com.edgekey.net/downloads/xcode/simulators/index-3905972D-B609-49CE-8D06-51ADC78E07BC.dvtdownloadableindex
TOOLS=clitools.dmg
if [ ! -f "$TOOLS" ]; then
  if [ "$OSX_VERS" -eq 7 ]; then
	  DMGURL=http://devimages.apple.com/downloads/xcode/command_line_tools_for_xcode_os_x_lion_april_2013.dmg
  elif [ "$OSX_VERS" -eq 8 ]; then
  	  DMGURL=http://devimages.apple.com/downloads/xcode/command_line_tools_for_xcode_os_x_mountain_lion_april_2013.dmg
  elif [ "$OSX_VERS" -eq 9 ]; then
	  DMGURL=http://adcdownload.apple.com/Developer_Tools/command_line_tools_os_x_mavericks_for_xcode__late_october_2013/command_line_tools_os_x_mavericks_for_xcode__late_october_2013.dmg
  elif [ "$OSX_VERS" -eq 10 ]; then
	  DMGURL=http://adcdownload.apple.com/Developer_Tools/Command_Line_Tools_OS_X_10.10_for_Xcode_6.3.2/commandlinetoolsosx10.10forxcode6.3.2.dmg
  elif [ "$OSX_VERS" -eq 11 ]; then
    DMGURL=http://adcdownload.apple.com/Developer_Tools/Command_Line_Tools_OS_X_10.11_for_Xcode_7.2/Command_Line_Tools_OS_X_10.11_for_Xcode_7.2.dmg
  fi
  curl "$DMGURL" -o "$TOOLS"
fi
TMPMOUNT=`/usr/bin/mktemp -d /tmp/clitools.XXXX`
hdiutil attach "$TOOLS" -mountpoint "$TMPMOUNT"
installer -pkg "$(find $TMPMOUNT -name '*.mpkg')" -target /
hdiutil detach "$TMPMOUNT"
rm -rf "$TMPMOUNT"
rm "$TOOLS"
exit