class SysPrep
    def intialize 
        
    end

    def users
        user_file = "users.txt"

        File.open(user_file, "r").each_line do |user| 
            user.strip!
            if user.end_with?('*')  
                puts `useradd -m -G sudo #{user.chop}`
            else
                puts `useradd -m #{user}`
            end
        end
    end

    def passwords
        File.open("/etc/passwd", "r").each_line do |line| 
            user.strip!
            if user =~ /\/bin\/\.\*sh/
                puts `echo #{user}:Password1! | chpasswd`
            end
        end
    end

    def firewall

    end

    def containers

    end

    def ssh

    end
end