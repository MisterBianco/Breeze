require "./*"
lib C
    struct Sockaddr
        sa_family : UInt16
        sa_data : LibC::Char[14]
    end
end
