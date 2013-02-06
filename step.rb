require "rb-readline"

File.readlines(ARGV[0]).each do |line| p line
end

# Readline.completion_proc =
#  lambda { |s| print s }

hook = proc { |s| 
  RbReadline.rl_insert_text( "foo" )
  RbReadline.rl_redisplay()
 }

RbReadline.set_pre_input_hook( hook )


while buf = Readline.readline("prompt> ", true)
  # Readline.completion_proc().call("boo")
  puts buf
end
