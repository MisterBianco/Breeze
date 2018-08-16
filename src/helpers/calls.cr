require "./fun"
require "./constants"
require "./enumerables"

require "./iw/*"
require "./methods/*"

# socket
#     Function to test if supplied name is a wireless card name
#
# @domain     - The domain int
# @type       - The type int
# @protocol   - The protocol int
#       --> Returns 0 on failure and the mode as an int otherwise
def socket(domain : Int32, type : Int32, protocol : Int32) : Int32
    return C.socket(domain, type, protocol)
end
