require "./*"
lib C
    struct Iwreq
        ifr_ifrn : UIfr_ifrn
        u : Iwreq_data
    end
end
