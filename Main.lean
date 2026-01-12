import Md

def usage := "Usage: md [LEAN_FILENAME]"

def main (args : List String) : IO UInt32 := do
  match args with
  | [] =>
    IO.println usage
    return 1
  | filename :: _ =>
    let file <- IO.FS.Handle.mk filename .read
    let source <- file.readToEnd
    let md := source |> parse |> cleanUp |> toMarkdown
    let file <- IO.FS.Handle.mk (filename ++ ".md") .write
    file.write md.toUTF8
    return 0
