require "./*"
lib C
    struct Iw_param
        value : Int32               # The value of itself
        fixed : UInt8               # Hardware shouldnt use autoselect
        disabled : UInt8            # Disable feature
        flags : UInt16              # Various flags
    end
end
