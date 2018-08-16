require "./*"
lib C
    union Iwreq_data
        name : LibC::Char*
        # name : LibC::Char[IFNAMSIZ]
        essid : Iw_point
        nwid : Iw_param
        freq : Iw_freq

        sens : Iw_param
        bitrate : Iw_param
        txpower : Iw_param
        rts : Iw_param
        frag : Iw_param

        mode : UInt32

        retry : Iw_param
        encoding : Iw_point
        power : Iw_param
        qual : Iw_quality

        ap_addr : Sockaddr
        addr : Sockaddr

        param : Iw_param
        data : Iw_point
    end
end
