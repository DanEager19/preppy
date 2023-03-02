require 'lib/users'

users = Users.new

def cleanup
    puts `rm -f /root/.viminfo`
    puts `rm -f /root/.bash_history`
    puts `rm -f /root/.zsh_history` 
end