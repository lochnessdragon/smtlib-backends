# v0.3-alpha
- make test-suite compatible with `smtlib-backends-0.3`
- **(breaking change)** rename `Process.close` to `Process.kill`
- **(breaking change)** rename `Process.wait` to `Process.close` and improve it
  - ensure the process gets killed even if an error is caught
  - send an `(exit)` command before waiting for the process to exit
  - this means `Process.with` now closes the process with this new version of
    `Process.close`, hence gracefully
- add a test checking that we can pile up procedures for exiting a process
  safely
- add `Process.defaultConfig`, synonym for `def`
- improve error messages inside `Process.toBackend`

# v0.2
split `smtlib-backends`'s `Process` module into its own library
## `Config` datatype
- move the logger function into it
- make it an instance of the `Default` typeclass
## logging
- move the logger function into the `Config` datatype
- don't prefix error messages with `[stderr]`
## test-suite
- add usage examples
- make compatible with `smtlib-backends-0.2`
## miscellaneous
- improve documentation
