def ip_to_num(ip_address)
  # TODO: return the number version of the `ip_address` string
  new_array_ip = ""
  ip_address.split(".").each do |num|
    new_array_ip << ("%08b" % num.to_i)
  end
  new_array_ip.to_i(2)
end

def num_to_ip(number)
  # TODO: return the string IP address from the `number`
  number.to_s.split.map { |num| num.to_i }.pack('N').unpack('CCCC').join('.')
end
