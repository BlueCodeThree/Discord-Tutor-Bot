VIM_COPY_PASTE = %q(
p - paste previously deleted text after cursor
)

VIM_DELETE_ANSWER = %q(
x - deletes
2x - deletes 2 letters

dw - delete word
d$ - delete until the end of the line
de - delete until end of word
dd - delete whole line

d2w - delete two words
)

VIM_EDIT_ANSWER = %q(
i - insert text (before cursor)
I - insert text start of line
a - append text (after cursor)
A - append text at end of line

u - undo last commands
U - undo - change the whole line to it's original state
ctrl + R - redo

rx - replace letter at cursor with x
ce - correct word til the end - type 'ce' then type out the correct letters for the word
)

VIM_EXIT_ANSWER = %q(
:q!<enter> - exit without saving
:wq - save and quit
)

VIM_MOVE_ANSWER = %q(
0 - move cursor to start of line

w - goes to start of next word
e - goes to end of word
b - back to start of previous word

5w - goes forward 5 words 

j - down
k - up 
h - left 
l - right
)