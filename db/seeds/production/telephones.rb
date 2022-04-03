1.upto(19) do |idx|
  friend = Friend.find(idx)
  cell = [false, true]
  0.upto(2) do |idx|
  Telephone.create(
    friend_id: friend.id,
    number: "070-#{rand(0000..9999)}-#{rand(0000..9000)}",
    cellphone: cell[idx % 2]
  )
  end
end
