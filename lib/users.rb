class Users
    def users(user_file)
        File.open(user_file, "r").each_line do |user| 
            user.strip!
            if user.end_with?('*')  
                puts `useradd -m -G sudo #{user.chop}`
            else
                puts `useradd -m #{user}`
            end
        end
    end

    def passwords(passwd)
        File.open("/etc/passwd", "r").each_line do |line| 
            user.strip!
            if user =~ /\/bin\/\.\*sh/
                puts `echo #{user}:#{passwd} | chpasswd`
            end
        end
    end
end