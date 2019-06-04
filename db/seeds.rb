
random = Random.new
shop = %w(コンビニ 中華料理屋 スーパー ファストフード 美容室 居酒屋 レストラン)
resp = %w(ありがとう お疲れ様 大変だったね)
jname = %w(大柳賢 鋼田一豊大 乙雅三 杉本鈴美  支倉未起隆 川尻早人 川尻浩作 矢安宮重清 山岸由花子 広瀬康一 噴上裕也 小林玉美 汐華初流乃)

users = (1..50).map do
  User.create!(
    name: jname[rand(0..11)],
    password: Faker::Lorem.characters(16),
    email: Faker::Internet.email
  )
end

posts = (1..100).map do
  Post.create!(
    respect: rand(0..1),
    lat: rand(35.60..35.74),
    lng: rand(139.58..139.9),
    user_id: rand(1..50),
    comment: shop[rand(0..6)] + "の店員さん" + resp[rand(0..2)]
  )
end
