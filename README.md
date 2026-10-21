# zed-gnuplot

[Zed](https://zed.dev) extension adding support for the [gnuplot](http://www.gnuplot.info/) language.

## Roadmap
### Initial release
- [x] Add syntax highlighting via Tree-sitter

### In the far future
- [ ] Create a from-scratch gnuplot LSP with rust
- [ ] Use the future LSP

## How it works

The repo [dpezto/tree-sitter-gnuplot](https://github.com/dpezto/tree-sitter-gnuplot) is used as a tree-sitter, pinned to a specific commit. Zed fetches and compiles the grammar to WASM on it's own. The extension's `languages/gnuplot/*.scm` files are Zed queries.
- `highlights.scm` was copied and adapted from the original `tree-sitter-gnuplot` highlighting.
- `brackets.scm` allows bracket characters to identify their pair when placing the cursor over them and to be displayed with rainbow colors if `colorize_brackets` is enabled.
- `config.toml` sets the name of the language (Gnuplot), the allowed file extension, and provides autoclose for brackets.
- `indents.scm` sets autoindent for conditionals, loops and multiplots
You can clone this repo, install the extension locally and check the `examples/` folder to test out the extension.

## Contributing

To help develop this extension, see [Developing Extensions](https://zed.dev/docs/extensions/developing-extensions) of Zed docs.

This extension internally uses [dpezto/tree-sitter-gnuplot](https://github.com/dpezto/tree-sitter-gnuplot) for parser or grammar issues with the tree-sitter, they should be opened there.

## License
MIT
