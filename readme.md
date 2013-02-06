# About

Shellstep allows single-stepping through bash scripts using ruby/readline.

# Requirements

Tested on ruby 1.9.3 with a patched version of rb-readline-0.4.2. Apply the rb-readline.patch file
after installing the gem:

    $ gem install rb-readline
    $ cp rb-readline.patch ~/.rvm/gems/ruby-1.9.3-p374/gems 
    $ cd ~/.rvm/gems/ruby-1.9.3-p374/gems 
    $ patch -R -p0 < rb-readline.patch

# Usage 

    $ step <script.sh>

Each line of the script will be presented at a numbered prompt. The line may be inspected
and edited before execution with the enter key.

# Further work

Probably this could be done without patching rb-readline. It would be better to
use the stock readline gem if possible. 
