names = %w(Taro Jiro Hana John Mike Sophy Bill Alex Mary Tom)
fnames = ["平岡", "安倍", "泉", "福永"]
gnames = ["公威", "公房", "鏡花","武彦"]
0.upto(20) do |idx|
  Friend.create(
    full_name: "#{fnames[idx % 4]} #{gnames[idx % 4]}"
  )
end
