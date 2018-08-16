require "./util"

# get_mode
#     Function to get the mode of an interface
#
# @interface     - The name of the interface as a string
def get_mode(interface : String)
    socket = C.socket(AF_INET, SOCK_STREAM, 0)

    return get_mode(interface, socket)
end

# get_mode
#     Function to get the mode of an interface
#
# @interface     - The name of the interface as a string
# @socket        - the socket object used to retrieve the mode
#       --> Returns 0 on failure and the mode as an int otherwise
def get_mode(interface : String, sock) : Int32
    interface = str_interface(interface)

    iwr = C::Iwreq.new
    iwr.ifr_ifrn.ifrn_name = interface

    return (C.ioctl(sock, SIOCGIWMODE, pointerof(iwr)) == -1) ? 0 : iwr.u.mode.to_i
end
