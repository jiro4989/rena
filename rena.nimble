# Package

version       = "1.0.1"
author        = "jiro4989"
description   = "rena is a tiny fire/directory renaming command."
license       = "MIT"
srcDir        = "src"
bin           = @["rena"]
binDir        = "bin"


# Dependencies

requires "nim >= 1.0.6"
requires "cligen >= 0.9.32"

import strformat, os

task ci, "Run CI":
  exec "nim -v"
  exec "nimble -v"
  exec "nimble install -Y"
  exec "nimble test -Y"
  exec "nimble build -d:release -Y"

task archive, "Create archived assets":
  let app = "rena"
  let assets = &"{app}_{buildOS}"
  let dir = "dist"/assets
  mkDir dir
  cpDir "bin", dir/"bin"
  cpFile "LICENSE", dir/"LICENSE"
  cpFile "README.rst", dir/"README.rst"
  withDir "dist":
    when buildOS == "windows":
      exec &"7z a {assets}.zip {assets}"
    else:
      exec &"tar czf {assets}.tar.gz {assets}"
