class_name Util

static func to_hex(bytes):
    var s = ""
    for i in range(bytes.size()):
        s += "%02X" % [bytes[i]]
        if i < bytes.size() - 1:
            s += " "
    return s

static func equals(a, b):
    if typeof(a) == TYPE_FLOAT or typeof(b) == TYPE_FLOAT:        
        return is_equal_approx(a,b)
    elif typeof(a) == TYPE_DICTIONARY and typeof(b) == TYPE_DICTIONARY:
        return a.hash() == b.hash()
    else:
        return a == b
