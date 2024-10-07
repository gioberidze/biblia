# Biblia Bible Reader that is written in Go

## Installation:

On ArchLinux:

```bash
wget
sudo pacman -U biblia-latest-x86_64.pkg.tar.zst
```

exact versions are in releases section

On Ubuntu and Debian based systems:

```bash
wget
sudo dpkg -i biblia_latest_amd64.deb
```

On windows:  
download biblia-latest.exe from releases and install it

## Running Without Installation On Windows:

You have to have mingw64 installed for gcc and put into PATH variable

For creating windows installation file you have to have innosetup insalled

```bash
git clone https://github.com/gioberidze/biblia.git
cd biblia
go build -o build/biblia.exe -ldflags "-H=windowsgui" ./cmd/
./build/biblia.exe
```

open innosetup.iss with innosetup compiler and compile the program
installation file will be placed inside output folder

## Running without installation on Linux

If you want to just try it out if you are on ArchLinux

```bash
git clone https://github.com/gioberidze/biblia.git
cd biblia
go run ./cmd/
```

if you are on Ubuntu:  
install libgtk-3-dev and libwebkit2gtk-4.1-dev and repeat the above process

```

```
