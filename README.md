# pry-full

Get up and going with a good set of pry tools right away.



## Dependent Gems


### [pry-doc](http://banisterfiend.wordpress.com/)

Allows you to look into the Ruby builtin classes with the ? and $ commands.


  
- ? [].pop
  
- $ [].pop
  
- …etc.
  



### [pry-docmore](https://github.com/rking/pry-docmore/wiki)

Shows docs for dollar-vars and keywords


  
- show-docmores
  
- ? module
  
- ? $`
  



### [pry-debugger](https://github.com/banister/pry-debugger#readme)

An essential gem. Turns Pry into a steppable debugger.


  
- Making the basic &quot;require'pry';binding.pry&quot; from a script come alive.
  
- In conjunction with plymouth or pry-rescue, to explore failing tests.
  
- Following calls into other libs.
  



### [pry-stack_explorer](https://github.com/pry/pry-stack_explorer#readme)

Allows you to navigate the call stack.


  
- So many. TODO = document some.
  



### [pry-exception_explorer](https://github.com/pry/pry-exception_explorer#readme)

Somewhat of a competitor to pry-rescue, but implemented differently. Currently doesn't work on C exceptions (such as `1/0` errors).


  
- Let an exception happen in the REPL, then use enter-exception to find it.
  
- Inline-style trap
  
- Block wrapper-style trap
  
- http://vimeo.com/36061298 ← &quot;mini screencast&quot;
  



### [pry-rescue](https://github.com/ConradIrwin/pry-rescue#readme)

Provides `Pry.rescue do … end` to capture any exceptions and start pry from the context of the source of the exception.


  
- Shortens write-run-debug cycles when exceptions are involved.
  
- Exploring causes of hard-to-replicate exceptions.
  
- Rescues on test failure via `require` of `pry-rescue/minitest` and `pry-rescue/rspec`
  



### [bond](http://tagaholic.me/bond/)

An excellent tabcompletion gem. Having this dep enables new Pry stuff. Note that pry v0.9.10 doesn't have this feature, so you must use a repo version.


  
- `require 'x&lt;tab&gt;`
  
- `{asdf: 1, hjkl: 2}[:a&lt;tab&gt;`
  
- `Chain.of.calls.`&lt;tab&gt; # Old pry completion was generic in this case.
  



### [jist](https://github.com/ConradIrwin/jist#readme)

Replacement for the undermaintained `gist` gem.


  
- Improved implementation for Pry's `gist` command.
  
- Check out the `jist -h` output on the CLI, by the way.
  



### [pry-theme](https://github.com/kyrylo/pry-theme)

Alternative syntax highlighting.


  
- Being more snazzy
  
- Making pry more like your editor, so you can scan more easily.
  



### [pry-awesome_print](https://github.com/michaeldv/awesome_print#readme)

An alternative printing style. A little funky, but more detailed than default Pry, especially for complex objects.


  
- Compare the output of the large `_pry_` object with and without this.
  
- Array indices are shown, so you can enter them in the next REPL line.
  
- If you want to see the old output, you can `obj.inspect`
  



### [pry-pretty-numeric](https://github.com/genki/pry-pretty-numeric)

A very simple, but nice, plugin. Turns 12345689 into 12_345_689 on output (Which is legal Ruby input). Note that this currently gets hidden with the awesome_print output.


  
- Any time you have big numbers.
  



### [pry-syntax-hacks](https://github.com/ConradIrwin/pry-syntax-hacks#readme)

Cirwin's wild bag of tricks. The caveat is that it's pretty wild and tricky - especially since input with `@`s can get rewritten as an instance_variable_get. Still, this is only a matter of understanding the dialect used, and adapting accordingly.


  
- Direct member access; User.new.@secret_password
  
- Calling private methods; User.new.!hash_password('foo')
  
- Accessing Pry outer bindings; cd (a = Object.new)  then  puts ../a
  



### [pry-highlight](https://github.com/ConradIrwin/pry-highlight#readme)

Reformat strings with pretty-printing. Auto-detects JSON/XML/Ruby.


  
- After a method produces ugly XML, do &quot;&gt;&gt;&quot; by itself to see it prettied.
  
- Pass in the string as an arg, e.g., &gt;&gt; '{&quot;a&quot;:1}'
  
- Pass in any Ruby as an arg, &gt;&gt; File.read(&quot;/var/www/foo.html&quot;)
  



### [pry-editline](https://github.com/tpope/pry-editline)

Pop the current line into a text editor. In tpope's words, &quot;Whenever I'm using IRB or Pry, my editor always feels too far away. Yes, there are [ways to] spawn an editor and evaluate the result, but that's not what I need. Usually I'm about 80 characters or so into a hairy one-liner when I think, &quot;you know, I really wish I was in Vim right about now.&quot; In Bash, one can load the current command line into an editor with C-x C-e. And now, you can do so in IRB and Pry.&quot;


  
- Ctrl+x, Ctrl+e or Ctrl+o  (if in Emacs mode or Vi Insert Mode)
  
- v or o (if in Vi Normal Mode)
  



### [pry-git](https://github.com/pry/pry-git)

Method-level git commands.


  
- Blame/diff a specific method.
  



### [pry-developer_tools](https://github.com/pry/pry-developer_tools)

Mostly for Pry/Pry Plugin development, but can be useful interactively.


  
- define-command 'r', 'rerun' do run 'history --replay -1' end
  
- reload-command show-method
  
- edit-command show-method
  
- edit-command -p show-method
  



