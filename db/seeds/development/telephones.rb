%w(佐藤 太郎 高橋 花子 田中 太郎).each do |name|
  friend = Friend.find_by(full_name: name)
  cell = [false, true, false, true]
  0.upto(9) do |idx|
  Telephone.create(
    author: friend,
    # cellphone: cell[idx % 4],
    #  number: "070-#{rand(110..999)}-#{rand(1980..9000)}"
    cellphone: true,
    number: "070-#{rand(110..999)}-#{rand(1980..9000)}"
  )
  end
end
