# How to build the cpp exercism exercises

## Linux with make

The expected 'generator' name for Linux is "Unix Makefiles"
If you don't provide that or one for cmake the 'help' page will be called to inform you to select one!

## Building

As an example we use the reverse-string exercise.

`cd reverse-string`

The build or exercism process for `cpp` is as follows.

```bash
touch reverse-string.{h,cpp}  # this will create empty files for this exercise
mkdir build                   # create a build directory
cd build                      # switch over into that dir
cmake -G "Unix Makefiles" ..  # DO NOT FORGET THOSE two dots at the end .. !
make                          # simply call the make command in the build directory
```

Typing `make` in the build directory will generate compile time errors.
Once the code is correct (ie the errors are fixed) `make` will build and run the tests.
