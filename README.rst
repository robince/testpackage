
testpackage
-----------

A minimal Python package including Cython and f2py extensions.

To build this:

* futils.f95.in needs to be preprocessed to futils.f95 replacing INTSIZE
  with 4 for 32 bit numpy and 8 for 64 bit numpy

* futils.f95 can be compiled with ``f2py -c futils.f95 -m futils``

* cutils.pyx is a Cython file so needs to be preprocessed with cython
  and linked with Python and numpy.

* If any part of the build fails a warning should be displayed to the
  screen but the package to continue to be built/installed just without
  the failed modules 

