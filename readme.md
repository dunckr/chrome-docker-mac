# Chrome inside a Docker on a Mac

Run Chrome with a GUI inside a Docker container on a Mac.

## Setup

Install [Docker](https://www.docker.com/) and [XQuartz](https://www.xquartz.org/):

```sh
brew cask install docker xquartz
```

## Usage

Create

```sh
make create
```

Start

```sh
make start
```

Stop:

```sh
make stop
```

Remove:

```sh
make rm
```

## Stop xQuartz opening XTern

```sh
defaults write org.macosforge.xquartz.X11 nolisten_tcp 0
defaults write org.macosforge.xquartz.X11 app_to_run /usr/bin/true
```

## Issues

* [No sound](http://stackoverflow.com/questions/40136606/how-to-expose-audio-from-docker-container-to-a-mac) inside Docker containers

## Thanks

https://blog.bennycornelissen.nl/bwc-gui-apps-in-docker-on-osx/
https://blog.jessfraz.com/post/docker-containers-on-the-desktop/
