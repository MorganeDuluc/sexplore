Theme.destroy_all
Quiz.destroy_all
Question.destroy_all
User.destroy_all
Response.destroy_all
Channel.destroy_all
Video.destroy_all

puts "seeds begins"

User.create!(username: "Morgane", email: "test@test.com", password: "azerty")

Theme.create!(name: "plaisir", category: "sexualité", description: "le plaisir est une donnée essentielle dans les rapports humains et encore plus dans les rapports sexuels")
Theme.create!(name: "maladie", category: "santé", description: "les maladies sexuellement transmissibles existent et il faut s'en protéger")
Theme.create!(name: "jeux érotiques", category: "sexualité", description: "ici tu pourras découvrir plein de trucs sympas")
Theme.create!(name: "première fois", category: "sexualité", description: "la première fois, ça fout les boules, et ça ne se passe pas forcément comme on l'a prévu")


Channel.create!(title: "première?", user_id: User.first.id, theme_id: Theme.first.id)
Channel.create!(title: "deuxième?", user_id: User.first.id, theme_id: Theme.first.id)
Channel.create!(title: "troisième?", user_id: User.first.id, theme_id: Theme.first.id)
Channel.create!(title: "quatrième?", user_id: User.first.id, theme_id: Theme.first.id)


Video.create!(title: "Gérer le stress de la première fois", theme_id: Theme.first.id)
Video.create!(title: "Les tabous de la première fois", theme_id: Theme.first.id)


Quiz.create!(title: "Le mythe", theme_id: Theme.first.id)
Quiz.create!(title: "Le consentement", theme_id: Theme.first.id)
Quiz.create!(title: "La communication", theme_id: Theme.first.id)
Quiz.create!(title: "Le sexe non-pénétratif", theme_id: Theme.first.id)
Quiz.create!(title: "Le sexe pénétratif", theme_id: Theme.first.id)


Question.create!(content: "première", order: 1, quiz_id: Quiz.first.id)
Question.create!(content: "deuxième", order: 2, quiz_id: Quiz.first.id)
Question.create!(content: "troisième", order: 3, quiz_id: Quiz.first.id)
Question.create!(content: "quatrième", order: 4, quiz_id: Quiz.first.id)
Question.create!(content: "cinquième", order: 5, quiz_id: Quiz.first.id)

Response.create!(content: "response1 à la première ", result: false, question_id: 1, explication: "toto")
Response.create!(content: "response2 à la première ", result: false, question_id: 1, explication: "toto")
Response.create!(content: "response3 à la première ", result: false, question_id: 1, explication: "toto")
Response.create!(content: "response4 à la première", result: true, question_id: 1, explication: "toto")

Response.create!(content: "response1 à la deuxième", result: false, question_id: 2, explication: "tata")
Response.create!(content: "response2 à la deuxième", result: false, question_id: 2, explication: "tata")
Response.create!(content: "response3 à la deuxième", result: false, question_id: 2, explication: "tata")
Response.create!(content: "response4 à la deuxième", result: true, question_id: 2, explication: "tata")

Response.create!(content: "response1 à la troisième", result: false, question_id: 3, explication: "titi")
Response.create!(content: "response2 à la troisième", result: false, question_id: 3, explication: "titi")
Response.create!(content: "response3 à la troisième", result: false, question_id: 3, explication: "titi")
Response.create!(content: "response4 à la troisième", result: true, question_id: 3, explication: "titi")


Response.create!(content: "response1 à la quatrième", result: false, question_id: 4, explication: "tutu")
Response.create!(content: "response2 à la quatrième", result: false, question_id: 4, explication: "tutu")
Response.create!(content: "response3 à la quatrième", result: false, question_id: 4, explication: "tutu")
Response.create!(content: "response4 à la quatrième", result: true, question_id: 4, explication: "tutu")


Response.create!(content: "response1 à la cinquième", result: false, question_id: 5, explication: "toutou")
Response.create!(content: "response2 à la cinquième", result: false, question_id: 5, explication: "toutou")
Response.create!(content: "response3 à la cinquième", result: false, question_id: 5, explication: "toutou")
Response.create!(content: "response4 à la cinquième", result: true, question_id: 5, explication: "toutou")

puts "Theme créés #{Theme.count}"
puts "Quiz créé #{Quiz.count}"
puts "Questions créé #{Question.count}"
puts "Réponses créés #{Response.count}"
