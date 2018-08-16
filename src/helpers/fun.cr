lib C

# fun set(name : LibC::Char[]) : Iwreq
fun ioctl(fd : Int32, request : UInt32, iwr : C::Iwreq*) : Int32
fun socket(domain : Int32, type : Int32, protocol : Int32) : Int32

end
