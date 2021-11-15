fnames = %w[平岡 安倍 澁澤 福永 北 泉 遠藤]
gnames = %w[公威 公房 龍彦 武彦 杜夫 鏡花 周作]
0.upto(20) do |idx|
  Friend.create(
    name: "#{fnames[idx % 7]} #{gnames[idx % 7]}"
  )
end
