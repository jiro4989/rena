=========
rena
=========

|gh-actions|

rena is a tiny fire/directory renaming command.

.. contents:: Table of contents
   :depth: 3

Development
===========

Nim 1.0.6

Usage
=====

You can try `dry-run`.

.. code-block:: shell

   # Dry run is `--dry-run` or `-d`
   $ rena replace --dry-run -t _ target_dir
   $ rena replace -d -t _ target_dir
   # You can set multiple `--from-strs` or `-f`
   $ rena replace -f a -f b -f c -t "_" target_dir

   # Delete whitespace
   $ rena delete target_dir
   # Print remaming
   $ rena delete -p target_dir

   # To lower
   $ rena lower target_dir

   # To upper
   $ rena upper target_dir

Install
=======

.. code-block:: shell

   nimble install https://github.com/jiro4989/rena

Download binary from `Release <https://github.com/jiro4989/rena/releases>`_.

License
=======

MIT

.. |gh-actions| image:: https://github.com/jiro4989/rena/workflows/build/badge.svg
   :target: https://github.com/jiro4989/rena/actions
.. |nimble-version| image:: https://nimble.directory/ci/badges/rena/version.svg
   :target: https://nimble.directory/ci/badges/rena/nimdevel/output.html
.. |nimble-install| image:: https://nimble.directory/ci/badges/rena/nimdevel/status.svg
   :target: https://nimble.directory/ci/badges/rena/nimdevel/output.html
.. |nimble-docs| image:: https://nimble.directory/ci/badges/rena/nimdevel/docstatus.svg
   :target: https://nimble.directory/ci/badges/rena/nimdevel/doc_build_output.html

