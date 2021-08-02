The shell follows 5 steps when processing a command line

i) Tokenisation

This is the process of reading and dividing the command line
into words and operators. The shell decides where a token starts
and ends by looking for special characters (meta characters).

Once bash has broken up the line into tokens, it then classifies
those tokens as either words or operators.

A word is a token that doesn't contain an unqoted metacharacter.
Operators are tokens that contain at least 1 unquoted meta
character.

https://www.gnu.org/software/bash/manual/bash.html#Basic-Shell-Features

ii) Command Identification

Here the shell breaks the command line up into simple or compound
commands.

Simple commands are just a bunch of words, and each command is
terminated by a control operator (e.g a new line, semi-colon).
We've used simple commands like ls, tar, and pwd.

https://www.gnu.org/software/bash/manual/bash.html#Simple-Commands

Compound commands, provide bash with its programming constructs
(e.g if statements, for loops, while loops)

https://www.gnu.org/software/bash/manual/bash.html#Compound-Commands


iii) Expansions

This includes all the expansions we've currently seen as well
as some new types of expansions. (word splitting, globin)

https://www.gnu.org/software/bash/manual/bash.html#Shell-Expansions

iv) Quote Removal

We add quotes to control how the command is interpreted, this step
will simply remove all those supportive quotes.

https://www.gnu.org/software/bash/manual/bash.html#Quote-Removal

v) Redirection

Redirection allows commands' file handle to be duplicated, opened,
closed, refer to a different file, and change the file the command
reads from and writes to

https://www.gnu.org/software/bash/manual/bash.html#Redirections

When the shell has done these five steps, it will then execute what
is left over.
