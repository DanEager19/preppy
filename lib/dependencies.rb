class Dependencies
    def network_tools
        puts `apt-get install -y wget curl net-tools`
    end

    def build
        puts `apt-get install -y build-essential clang clang-tools`
    end
end