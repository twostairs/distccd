distccd
-------

## Build Args

`--build-arg argument=value`

### `GCC_VERSION`

The [GCC version](https://packages.gentoo.org/packages/sys-devel/gcc) that should be installed, e.g. `7.3.0-r3`.

### `JOBS`

The number of simultaneous build jobs (`-j=?`) used for building, e.g. `8`

## Runtime environment variables

### `LISTEN_ADDRESS`

The address to listen on. To listen on all interfaces/addresses specify `0.0.0.0`.

### `PORT`

The port to be used by distccd. You need to expose this port manually.

### `JOBS`

The number of simultaneous build jobs (`-j=?`) used on execution time, e.g. `8`
