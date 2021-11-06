names = %w(Taro Jiro Hana John Mike Sophy Bill Alex Mary Tom)
fnames = ["佐藤", "鈴木", "高橋", "田中"]
gnames = ["太郎", "次郎", "花子"]
0.upto(20) do |idx|
  Friend.create(
    full_name: "#{fnames[idx % 4]} #{gnames[idx % 3]}"
  )
end
