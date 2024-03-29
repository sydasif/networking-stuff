# Vim Text Editor Beginners Guide

---

Installation on Ubuntu

```console
sudo apt install vim-nox # (nox support more programming languages)
```

1. Open bash and write *vim*, it will open the text editor, now you are in *command mode*.
2. To insert text press *i*, now you are in *insert mode*.
3. To save your text, exit from *insert mode*, press *Esc* key, now again you are in *command mode*.
4. Now save your text with *:w* followed by a file name.
5. Now quit the text editor using *:q*, saving your text.
6. Using *shift+A* will enter in insert mode but at the end of the line at cursor current position.
7. To save and quit at a time using *:wq*
8. To use the previous command use *:* and *up or down* keys.
9. To undo press *u*
10. To delete a character at the cursor current position press *x*.
11. To delete a whole line at cursor position press *dd*.
12. To copy the content from another file in the same directory, write in **command mode** *:r filename* will copy all content to your file.
13. To move up, down, left or right use *h, j, k, l* in command mode.
14. To move up, down, left or right in *insert mode* use *arrow keys*.
15. To suspend the vim to the background, press *ctrl+z* in command mode will suspend the text editor and you will jump to your shell. To activate your vim after doing some jobs in your shell press *fg* (foreground), now your Linux shell will open vim as it is.
16. To use the Linux command while your text editor is also open, press *:! linux cmd*.
17. To navigate multiple files at a time use *:e filename*, which will open another file. use *:bp or :bn* to switch between files and use *bd* to close the current file.
18. To move at beginning of the line at cursor position press *0* and press *$* to move at the end of the line.
19. To copy and paste text press *v* to enter in visual mode and highlight the text with arrow keys and press *y* to copy, press *p* to paste where you want.
20. To replace a word in a file at all locations in command mode, press *:%s/word/word/g*, the first word you want to change followed by a word to insert.
21. To split two files at a time open the first file then the second file with *:split filename* will open the file horizontally, to switch between files use *ctrl+ww*.
22. To open the file vertically open the first file then the second file with *vsplit file name* will open file vertically and switch between file use *ctrl+ww*.
23. To set line number use *:set number* and use *set nonumber* will remove line number. 
24. To edit two files at the same use *vim -o file1 file2* will open both files horizontally.
25. To edit two files at the same vertically use *vim -O file1 file2*.