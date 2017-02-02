domo-app
========

A simple application to communicate with a BTicino My Home System, using Open Web Net.

Requirements
------------

* Qt >= 5.8
* C++14 compliant compiler (GCC>=5.0 MSVC>=14.0 Clang>=3.4)

Getting started
---------------

Start cloning this repository.

```
git clone git@github.com:Alien1993/domo-app.git
```

To compile and run the tests:

```
mkdir builddir
cd builddir
qmake -config release /path/to/project/domo-app
make -j<N>
make check
```
