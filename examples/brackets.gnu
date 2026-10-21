# Putting the cursor on one brace, highlights it's pair.
# Besides, if you enable colorize_brackets you'll see rainbow colors for braces
# In settings.json: `{"languages":{"Gnuplot":{"colorize_brackets":true}}}`
if (7 > 4) {
    if (2 > 4) {
        print("Ok")
    } else {
        if (1 < 3) {
            print("Hi!")
        }
    }
}
