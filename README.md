# OS X Fresh Install
> Some scripts to make your OS X-life easier.
> It includes [Homebrew](brew.sh), [iTerm](https://www.iterm2.com) and also the theme [Solarized](http://ethanschoonover.com/solarized).

## Install

### Basic installation
OS X Fresh Install can be installed with `curl` or `wget`.

#### via curl 

```shell
sh -c "$(curl -fsSL https://raw.github.com/Croxed/OSX-Fresh-Install/master/install.sh)"
```

#### via wget
```shell
sh -c "$(wget https://raw.github.com/Croxed/OSX-Fresh-Install/master/install.sh -O -)"
```

### Install everything
- Run `sh install.sh` in a terminal


### Optimize the system and install dev-tools
> This requires Homebrew to be installed, so run `sh brewInstall.sh` before doing this.

- Run `sh dotfiles.sh`

>This will install a lot of development tools and will optimize OS X based on my preferences. 
It will also install [iTerm 2](https://www.iterm2.com) and install [Solarized Dark-theme](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized) for [iTerm 2](https://www.iterm2.com).

Credit for sensible OS X defaults: 
[Mathias Bynens](https://mathiasbynens.be)

### Only Install the Quick Look-plugins
> This requires Homebrew to be installed, so run `sh brewInstall.sh` before doing this.

- Run `sh QLPluginsInstall.sh`

##Quick Look Plugins
### [QLColorCode](https://code.google.com/p/qlcolorcode/)

> Preview source code files with syntax highlighting

Run `brew cask install qlcolorcode` or [download manually](https://qlcolorcode.googlecode.com/files/QLColorCode-2.0.2.tgz)

### [QLMarkdown](https://github.com/toland/qlmarkdown)

> Preview Markdown files

Run `brew cask install qlmarkdown` or [download manually](https://github.com/downloads/toland/qlmarkdown/QLMarkdown-1.3.zip)


### [QuickLookJSON](http://www.sagtau.com/quicklookjson.html)

> Preview JSON files

Run `brew cask install quicklook-json` or [download manually](http://www.sagtau.com/media/QuickLookJSON.qlgenerator.zip)


### [QLPrettyPatch](https://github.com/atnan/QLPrettyPatch)

> Preview .patch files

Run `brew cask install qlprettypatch` or [download manually](https://github.com/atnan/QLPrettyPatch/releases)


### [QuickLookCSV](https://github.com/p2/quicklook-csv)

> Preview CSV files

Run `brew cask install quicklook-csv` or [download manually](http://quicklook-csv.googlecode.com/files/QuickLookCSV.dmg)

### [BetterZipQL](http://macitbetter.com/BetterZip-Quick-Look-Generator/)

> Preview archives

Run `brew cask install betterzipql` or [download manually](http://macitbetter.com/BetterZipQL.zip)

### [qlImageSize](https://github.com/Nyx0uf/qlImageSize)

> Display image size and resolution

Run `brew cask install qlimagesize` or [download manually](https://github.com/Nyx0uf/qlImageSize#installation)

### [WebP](https://github.com/dchest/webp-quicklook)

> Preview WebP images

Run `brew cask install webpquicklook` or [download manually](https://github.com/dchest/webp-quicklook/releases)

### [Suspicious Package](http://www.mothersruin.com/software/SuspiciousPackage/)

> Preview the contents of a standard Apple installer package

Run `brew cask install suspicious-package` or [download manually](http://www.mothersruin.com/software/downloads/SuspiciousPackage.pkg)

### [ProvisionQL](https://github.com/ealeksandrov/ProvisionQL)

> Preview iOS / OS X app and provision information

Run `brew cask install provisionql` or [download manually](https://github.com/ealeksandrov/ProvisionQL/releases)

### [InvisorQL](http://www.pozdeev.com/invisor/)
> Displays technical information about your video, audio and photo files.

Run `brew cask install invisorql`or [download manually](http://www.pozdeev.com/invisor/InvisorQL.zip)

### [QuickNFO](https://github.com/planbnet/QuickNFO)
> Preview NFO files

Run `brew cask install quicknfo`or [download manually](https://github.com/planbnet/QuickNFO/raw/master/QuickNFO.qlgenerator.zip)

### [ScriptQL](https://www.kainjow.com)
> AppleScript Quick Look plugin

Run `brew cask install ScriptQL`or [download manually](https://www.kainjow.com/downloads/ScriptQL_qlgenerator.zip)

### [QLMoviePreview](https://github.com/Nyx0uf/qlMoviePreview)
> Preview and create thumbnails for videos

[Download manually](http://repo.whine.fr/qlmoviepreview.qlgenerator-10.9.zip)

### [IPAQL](http://ipaql.com)
> A Quicklook Plugin for previewing application and provision information

[Download manually](http://ipaql.com/site/assets/files/1006/ipaql_1-3-0.zip)

### [StringFilesQL](http://blog.timac.org/?p=933)
> Preview .strings files

[Download manually](http://blog.timac.org/post-images/StringsFileQuickLook/StringsFile.qlgenerator.zip)

## License

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png)](http://creativecommons.org/publicdomain/zero/1.0/)

To the extent possible under law, [Oscar Wennergren](http://github.com/Croxed) has waived all copyright and related or neighboring rights to this work.