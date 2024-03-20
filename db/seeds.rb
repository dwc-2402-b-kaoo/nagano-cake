# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin.create!(
#     email: 'k@k',
#     password: '123123'
# )

# genres = [
#   {id: 1, name: "ケーキ"},
#   {id: 2, name: "プリン"},
#   {id: 3, name: "焼き菓子"},
#   {id: 4, name: "キャンディ"}
# ]
# genres.each do |genre_params|
# Genre.create!(genre_params)
# end

# items = [
#   { name: "ショートケーキ",
#     introduction: "甘くて滑らかなスポンジケーキと、ふわふわの生クリーム、そして新鮮な苺を組み合わせた、贅沢で爽やかなケーキです。",
#     price: 600,
#     is_active: true,
#     genre_id: Genre.find_by(id: 1).id,
#     item_image: Rails.root.join("app/assets/images/cake1.jpg").open },

#   { name: "プリン",
#     introduction: "程よい甘さのプリンです。コーヒーや紅茶と共にお楽しみください。",
#     price: 500,
#     is_active: true,
#     genre_id: Genre.find_by(id: 2).id,
#     item_image: Rails.root.join("app/assets/images/purine1.jpg").open },

#   { name: "チョコクッキー",
#     introduction: "美味しいチョコクッキーです。",
#     price: 400,
#     is_active: true,
#     genre_id: Genre.find_by(id: 3).id,
#     item_image: Rails.root.join("app/assets/images/cookie1.jpg").open },

#   { name: "キャンディ",
#     introduction: "手軽に持ち運べるサイズのキャンディです。",
#     price: 300,
#     is_active: true,
#     genre_id: Genre.find_by(id: 4).id,
#     item_image: Rails.root.join("app/assets/images/candy1.jpg").open },

#   { name: "チョコレートケーキ",
#     introduction: "程よい甘さのチョコレートケーキです。",
#     price: 650,
#     is_active: true,
#     genre_id: Genre.find_by(id: 1).id,
#     item_image: Rails.root.join("app/assets/images/cake2.jpg").open },

#   { name: "ショートケーキ(ホール)",
#     introduction: "ホールケーキですホールケーキですホールケーキですホールケーキですホールケーキです",
#     price: 2000,
#     is_active: true,
#     genre_id: Genre.find_by(id: 1).id,
#     item_image: Rails.root.join("app/assets/images/cake3.jpg").open },

#   { name: "クッキー",
#     introduction: "普通のクッキーです",
#     price: 400,
#     is_active: true,
#     genre_id: Genre.find_by(id: 3).id,
#     item_image: Rails.root.join("app/assets/images/cookie2.jpg").open },

#   { name: "キャンディ",
#     introduction: "キャンディです",
#     price: 350,
#     is_active: true,
#     genre_id: Genre.find_by(id: 4).id,
#     item_image: Rails.root.join("app/assets/images/candy2.jpg").open },

#   { name: "大きめプリン",
#     introduction: "大きめのプリンです",
#     price: 600,
#     is_active: true,
#     genre_id: Genre.find_by(id: 2).id,
#     item_image: Rails.root.join("app/assets/images/purine2.jpg").open }
# ]

# items.each_with_index do |item, index|
#   item[:item_image] = { io: item[:item_image], filename: "#{index + 1}.jpg", content_type: "image/jpg" }
#   Item.create!(item.merge(id: index + 1))
# end

# Customer.create(last_name: '田中',first_name:'太郎',last_name_kana:'タナカ',first_name_kana:'タロウ',postal_code: '1111111',telephone_number: '2222222',address: '東京都',is_active: true,email: '1@1', password: 'aaaaaa')
# Customer.create(last_name: '堀江',first_name:'文子',last_name_kana:'ホリエ',first_name_kana:'フミコ',postal_code: '1111111',telephone_number: '3333333',address: '岩手県',is_active: true,email: '2@2', password: 'aaaaaa')
Customer.create(last_name: '藤本',first_name:'陽一',last_name_kana:'フジモト',first_name_kana:'ヨウイチ',postal_code: '1111111',telephone_number: '2224444',address: '沖縄県',is_active: true,email: '3@3', password: 'aaaaaa')
Customer.create(last_name: '西本',first_name:'君枝',last_name_kana:'ニシモト',first_name_kana:'キミエ',postal_code: '1111111',telephone_number: '4443333',address: '青森県',is_active: true,email: '4@4', password: 'aaaaaa')
Customer.create(last_name: '和田',first_name:'俊二',last_name_kana:'ワダ',first_name_kana:'シュンジ',postal_code: '1111111',telephone_number: '2224554',address: '宮崎県',is_active: true,email: '5@5', password: 'aaaaaa')
Customer.create(last_name: '秋山',first_name:'忠彦',last_name_kana:'アキヤマ',first_name_kana:'タダヒコ',postal_code: '1111111',telephone_number: '4456553',address: '鹿児島県',is_active: true,email: '6@6', password: 'aaaaaa')
Customer.create(last_name: '齋藤',first_name:'細美',last_name_kana:'サイトウ',first_name_kana:'ホソミ',postal_code: '1111111',telephone_number: '2227744',address: '栃木県',is_active: true,email: '7@7', password: 'aaaaaa')
Customer.create(last_name: '黒山',first_name:'和樹',last_name_kana:'クロヤマ',first_name_kana:'カズキ',postal_code: '1111111',telephone_number: '4943383',address: '宮城県',is_active: true,email: '8@8', password: 'aaaaaa')
Customer.create(last_name: '渡',first_name:'由美',last_name_kana:'ワタリ',first_name_kana:'ユミ',postal_code: '1111111',telephone_number: '2227654',address: '山口県',is_active: true,email: '9@9', password: 'aaaaaa')
Customer.create(last_name: '戸田',first_name:'和子',last_name_kana:'トダ',first_name_kana:'カズコ',postal_code: '1111111',telephone_number: '4156453',address: '熊本県',is_active: true,email: '10@10', password: 'aaaaaa')
Customer.create(last_name: '豊橋',first_name:'豊美',last_name_kana:'トヨハシ',first_name_kana:'トヨミ',postal_code: '1111111',telephone_number: '4122453',address: '広島県',is_active: true,email: '11@11', password: 'aaaaaa')