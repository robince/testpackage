import numpy as np
cimport numpy as np
cimport cython

@cython.boundscheck(False)
def bincount(np.ndarray[np.int_t, ndim=1] x not None,int m):
    cdef int n = x.shape[0]
    cdef unsigned int i
    cdef np.ndarray[np.int_t, ndim=1] c = np.zeros(m,dtype=np.int)

    for i from 0 <= i < n:
        c[<unsigned int>x[i]] += 1

    return c

