require "rb-readline"

File.readlines(ARGV[0]).each_with_index do |line, index| 
  hook = proc { 
    RbReadline.rl_insert_text( line.chomp )
    RbReadline.rl_redisplay()
   }

  RbReadline.set_pre_input_hook( hook )
  buf = Readline.readline("step #{index}> ", true)
  system buf
end

