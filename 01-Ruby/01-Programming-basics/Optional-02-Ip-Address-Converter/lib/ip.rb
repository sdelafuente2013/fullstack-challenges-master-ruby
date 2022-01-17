def ip_to_num(ip_address)
  # TODO: return the number version of the `ip_address` string
  new_array_ip = ""
  ip_address.split(".").each do |num|
    new_array_ip << ("%08b" % num.to_i)
  end
  return new_array_ip.to_i(2)
end

def num_to_ip(number)
  # TODO: return the string IP address from the `number`
  binary = number.
end

p ip_to_num("37.160.113.170")
p num_to_ip(631271850)
