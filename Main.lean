import Dg

def main (args : List String) : IO Unit := do
  let fileName := args[0]!
  let file <- IO.FS.Handle.mk fileName .read
  let source <- file.readToEnd
  let md := source |> parse |> cleanUp |> toMarkdown
  let file <- IO.FS.Handle.mk (fileName ++ ".md") .write
  file.write md.toUTF8
