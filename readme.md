#

## Setup

```sh
brew cask install xquartz
```

## Hide xQuartz XTern

```sh
defaults write org.macosforge.xquartz.X11 nolisten_tcp 0
defaults write org.macosforge.xquartz.X11 app_to_run /usr/bin/true
```

## Usage

```sh
make
```


## Thanks

https://blog.bennycornelissen.nl/bwc-gui-apps-in-docker-on-osx/
https://blog.jessfraz.com/post/docker-containers-on-the-desktop/
