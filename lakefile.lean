import Lake
open Lake DSL

package md where
  version := v!"0.1.0"

lean_lib Md

@[default_target]
lean_exe md where
  root := `Main

script install do
  IO.println "Building md..."

  _ <- IO.Process.run {
    cmd := "lake",
    args := #["build"],
  }

  let home ← IO.getEnv "HOME"
  let home := home.getD (panic! "HOME not set")

  let binDir := System.FilePath.mk home / ".local" / "bin"
  let src := System.FilePath.mk ".lake/build/bin/md"
  let dest := binDir / "md"

  IO.println s!"Installing to {dest}"

  IO.FS.createDirAll binDir
  let bytes ← IO.FS.readBinFile src
  IO.FS.writeBinFile dest bytes
  _ <- IO.Process.run {
    cmd := "chmod"
    args := #["+x", dest.toString]
  }

  IO.println "Done."
  return 0
