name = ["平岡 公威", "安倍 公房", "泉 鏡花","福永 武彦"]
name.each do |name|
  friend = Friend.find_by(full_name: name)
  cell = [false, true, false, true]
  0.upto(9) do |idx|
  Telephone.create(
    author: friend,
    cellphone: cell[idx % 4],
    number: "070-#{rand(110..999)}-#{rand(1980..9000)}"
  )
  end
end
