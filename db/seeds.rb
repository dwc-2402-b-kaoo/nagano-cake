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

#    email: 'k@k',
#    password: '123123'
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

