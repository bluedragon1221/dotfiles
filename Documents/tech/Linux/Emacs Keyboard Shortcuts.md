---
tags: GNUEmacs, flashcards
description: a list of basic shortcuts for the `emacs` editor
---

## Opening and Closing
Open file:: C-x C-f
<!--SR:!2022-12-19,3,250-->
Save:: C-x C-s
Quit:: C-x C-c

## Zoom
zoom in:: C-x C-+
zoom out:: C-x C--
## Navigation
Cursor down line (next):: C-n
<!--SR:!2022-12-19,3,250-->
Cursor up line (previous):: C-p
Cursor right (forward):: C-f
<!--SR:!2022-12-20,3,250-->
Cursor left (backward):: C-b
<!--SR:!2022-12-19,3,250-->
Cursor left (forward) by word:: M-f
<!--SR:!2022-12-19,3,250-->
Cursor right (backward) by word:: M-b
Beginning of line:: C-a
End of line:: C-e
Beginning of sentence:: M-a
End of sentence:: M-e
beginning of file:: M-< (M-S-,)
<!--SR:!2022-12-21,3,268-->
end of file:: M-\> (M-S-.)
go to line number:: M-g g
<!--SR:!2022-12-21,3,268-->

ESC-number C-n/p/f/b (perform motion that number of times)

## Copy Paste
Enter select mode:: C-space
Cut selected text:: C-w
Copy selected text:: M-w
Paste:: C-y
Cut to end of line:: C-k
<!--SR:!2022-12-19,1,228-->
undo:: C-x u

C-x backspace, M-k (backwards/forwards delete the current line)
M-z character cuts to that character
delete NUMBER of words:: ESC-NUMBER ESC-d
C-h v kill-ring
C-x 0 to close the kill-ring window
C-y Esc-y to cycle through kill-ring for paste

## Buffers TODO
C-x b select another buffer
C-x C-b list all buffers
C-x k kill a buffer

## Case change
capitalize word:: M-c
<!--SR:!2022-12-20,2,248-->
uppercase word:: M-u
lowercase word:: M-l

## Spell Check
Spellcheck word:: M-$
<!--SR:!2022-12-21,3,247-->

## Search
C-s to search forward
C-r to search backward

## Splits
C-x 2 Horizontal Split
C-x 3 Vertical Split
C-x 0 Close window
C-x 4f Opens file in other window
C-x o moves cursor to next frame


