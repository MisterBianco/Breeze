# Method for converting a string to a StaticArray(UInt8)
def str_interface(interface : String) : StaticArray(UInt8, 16)
    face = StaticArray(UInt8, 16).new(0)

    counter = 0

    interface.each_byte do |byte|
        face[counter] = byte
        counter += 1
    end

    return face
end
