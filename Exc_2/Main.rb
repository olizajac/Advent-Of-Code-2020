file_data = File.readlines("input.txt", chomp:true)
z = 0
x =  file_data.map { |str| str.split(' ') }
x.each do |nmb, letter, pswd|
  nmb_cnt_pswd = pswd.count(letter.tr(':',''))
  nmb_split =  nmb.split('-').map(&:to_i)
  if nmb_split[0] <= nmb_cnt_pswd and nmb_cnt_pswd <= nmb_split[1]
    z += 1
  else
  end
end
p z
