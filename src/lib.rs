use zed_extension_api as zed;

struct GnuplotExtension;

impl zed::Extension for GnuplotExtension {
    fn new() -> Self {
        Self
    }
}

zed::register_extension!(GnuplotExtension);
