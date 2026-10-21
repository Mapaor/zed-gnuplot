# zed-gnuplot

[Zed](https://zed.dev) extension adding support for the [gnuplot](http://www.gnuplot.info/) language.

## Roadmap
### Initial release
- [x] Add syntax highlighting via Tree-sitter

### In the near future
- [ ] Wait for `folds.scm` support (issue [`#22703`](https://github.com/zed-industries/zed/issues/22703))
  - [ ] Implement a `folds.scm` query for this extension.

### In the far future
- [ ] Create from scratch a gnuplot LSP made with rust
  - [ ] Use that future LSP in this extension

## How it works

The repo [dpezto/tree-sitter-gnuplot](https://github.com/dpezto/tree-sitter-gnuplot) provides the tree-sitter parser and scanner, which we pin to a specific revision (commit) in our `extension.toml`. Zed fetches that revision and compiles the parser to WASM on its own. 

The files under `languages/gnuplot/` configure how Zed uses the resulting syntax tree:
- `highlights.scm` was copied and adapted from the original `tree-sitter-gnuplot` highlighting query.
- `brackets.scm` allows bracket characters to identify their corresponding pair when placing the cursor over them and to be displayed with rainbow colors if `colorize_brackets` is enabled.
- `config.toml` sets the name of the language (Gnuplot), the allowed file extensions, configures comments (`# `), and indentation rules for conditionals, loops and multiplots.
- `indents.scm` marks `if`s so that `else`s align with them, and also defines the indentation range for `set multiplot` (that can or not have an  explicit `unset multiplot`, it's optional).

You can clone this repo, install the extension locally and check the `examples/` folder to test out the extension.

## Contributing

To help develop this extension, see [Developing Extensions](https://zed.dev/docs/extensions/developing-extensions) of Zed docs.

This extension internally uses [dpezto/tree-sitter-gnuplot](https://github.com/dpezto/tree-sitter-gnuplot), report parser or grammar issues there. Report Zed query, configuration, or integration issues here in this repository.

## License
MIT
