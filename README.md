# language-jsonnet

Jsonnet language support.

## Features

- **Grammars**: provides Tree-sitter grammars, built from [tree-sitter-jsonnet](https://github.com/sourcegraph/tree-sitter-jsonnet).
- **Syntax highlighting**: objects, comprehensions, functions and the field-visibility operators.
- **Visibility**: `::` and `:::` are scoped apart from a plain `:`, since they decide whether a field reaches the output.
- **Folding**: folds objects and arrays.
- **Locals**: resolves `local` bindings and parameters.

## Installation

To install `language-jsonnet` search for it in the Install pane of the Lumine settings, or run the command `lumine --install lumine-code/language-jsonnet`.

## Injections

- Static Tree-sitter injections highlight URLs with `language-hyperlink`.
- Static Tree-sitter injections highlight comment markers with `language-todo`.

## Contributing

Got ideas to make this package better, found a bug, or want to help add new features? Just drop your thoughts on GitHub. Any feedback is welcome!
