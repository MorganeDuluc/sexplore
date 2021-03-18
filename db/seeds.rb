Theme.destroy_all

puts "seeds begins"

Theme.create!(name: "plaisir", category: "sexualité", description: "le plaisr est une donnée essentielle dans les rapports humains et encore plus dans les rapports sexuels")
Theme.create!(name: "maladie", category: "santé", description: "les maladies sexuellement transmissibles existent et il faut s'en protéger")
Theme.create!(name: "jeux érotiques", category: "sexualité", description: "ici tu pourras découvrir plein de trucs sympas")
Theme.create!(name: "première fois", category: "sexualité", description: "la première fois, ça fout les boules, et ça ne se passe pas forcément comme on l'a prévu")

puts "Theme créés #{Theme.count}"
