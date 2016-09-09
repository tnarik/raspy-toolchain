# Toolchain for Raspberry Pi on OS X

Building source code on the Raspberry Pi is a quite slow process (building bitcoin on a Pi Zero takes around 32 hours).

To simplify the process and follow the best practices when working with embedded systems, it is better creating a toolchain so that we can cross compile (build on an architecture different than the target one).

That is what we describe and do here.

# Requirements

```
brew install crosstool-ng --with-grep
```

# Create case-sensitive disk image for the building and for the toolchain containers

```
do_images.sh <main container folder>
```

An example of the execution is `do_images.sh ${HOME}/Desktop`

# References
- [http://www.jaredwolff.com/blog/cross-compiling-on-mac-osx-for-raspberry-pi/](http://www.jaredwolff.com/blog/cross-compiling-on-mac-osx-for-raspberry-pi/)