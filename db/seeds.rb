Comment.destroy_all
Video.destroy_all
Channel.destroy_all
Response.destroy_all
User.destroy_all

Question.destroy_all
Quiz.destroy_all
Theme.destroy_all

# puts "seeds begins"

User.create!(pseudo: "Test", password: "azerty")

Theme.create!(illustration: "mst.png", name: "Les MST/IST", description: "Tu connais les MST et tu sais comment t'en protéger, mais que sais-tu sur les IST ?")
Theme.create!(illustration: "acte-sexuel.png", name: "L'acte sexuel", description: "Le sexe ne se limite pas à la pénétration vaginale. Découvre les plaisirs du sexe non-pénétratif.")
premiere_fois = Theme.create!(illustration: "premiere-fois.png", name: "La première fois", description: "La première fois ne se passe pas forcément comme tu l'as prévu et peut être angoissante.")
Theme.create!(illustration: "plaisir.png", name: "Le Plaisir", description: "Le plaisir est l'essence même des rapports sexuels. L'orgasme n'est pas LE but ultime à atteindre.")


Channel.create!(avatar: "p-avatar-seins.png", title: "Faut-il toujours jouir lors d'un rapport ?", user_id: User.first.id, theme_id: Theme.first.id)
Channel.create!(avatar: "p-avatar-clito.png", title: "La première fois fait-elle toujours mal ?", user_id: User.first.id, theme_id: Theme.first.id)
Channel.create!(avatar: "p-avatar-penis.png", title: "A quel âge faire sa première fois ?", user_id: User.first.id, theme_id: Theme.first.id)
Channel.create!(avatar: "p-avatar-penis.png", title: "Est ce que je peux parler de mes peurs à mon copain pour ma première fois ?", user_id: User.first.id, theme_id: Theme.first.id)
Channel.create!(avatar: "p-avatar-seins.png", title: "Je ne me sens pas prête pour ma première fois mais mon copain insiste, que faire ?", user_id: User.first.id, theme_id: Theme.first.id)

Video.create!(title: "Les tabous autour de la première fois", theme_id: Theme.first.id)
Video.create!(title: "Gérer le stress de la première fois", theme_id: Theme.first.id)
Video.create!(title: "Une société pénétrocentrée", theme_id: Theme.first.id)

Quiz.create!(title: "La communication", theme_id: premiere_fois.id, finished: true)
Quiz.create!(title: "Le consentement", theme_id: premiere_fois.id, finished: false)
Quiz.create!(title: "Le sexe non-pénétratif", theme_id: premiere_fois.id, finished: false)
Quiz.create!(title: "Le sexe pénétratif", theme_id: premiere_fois.id, finished: false)

q1 = Question.create!(content: "Ma première fois va être...", order: 1, quiz_id: Quiz.first.id, explication:"Tu ne sais pas conduire une voiture dès la première fois que tu essaies n'est-ce pas ? Pour le sexe c'est pareil, ça s'apprend ! La première fois n'est souvent pas ce que nous pensons. Tu vas te découvrir, être maladroit(e) mais tout sera de plus en plus agréable avec le temps. Les points importants sont la COMMUNICATION avec ton/ta partenaire, le RESPECT mutuel, l'écoute. Prends ton temps et n'hésite pas à dire à ton/ta partenaire ce que tu apprécies. Ne dis JAMAIS oui à ce qui ne t'apporte pas de plaisir, COMMUNIQUE, exprime tes ressentis auprès que ton/ta partenaire sexuel, que tu sois en couple ou non." )
q2 = Question.create!(content: "Mon/ma partenaire a plus d'expérience que moi, il/elle doit donc prendre le dessus ?", order: 2, quiz_id: Quiz.first.id, explication: "STOP ! Que tu aies plus ou moins d'expérience que ton/ta partenaire ne signifie pas que l'un(e) ou l'autre doit prendre le contrôle. Un rapport sexuel est un moment de partage et de connexion. Tu peux te laisser aller et te laisser guider mais cela ne veut pas dire que tu dois faire tout ce que ton/ta partenaire te demande. Tu ne dois pas rechercher une validation de ton/ta partenaire. Que ce soit dans une relation de couple ou non, tu dois prendre soin de toi et faire seulement ce dont tu as envie si ton/ta partenaire est d'accord. Cela va dans les deux sens. N'oublie pas que l'ego n'a rien à faire dans une relation sexuelle." )
q3 = Question.create!(content: "J'ai envie de faire l'amour, mais mon/ma partenaire hésite et a des doutes.", order: 3, quiz_id: Quiz.first.id, explication:"Le respect mutuel est primodial. Que tu sois dans une relation amoureuse ou non, ton/ta partenaire te confie son intimité, tu dois le/la RESPECTER. En plus d'être à l'ECOUTE, tu dois OBSERVER ses gestes. Si tu as un doute, tu ne dois pas hésiter à demander à ton/ta partenaire pour que votre échange soit le plus agréable possible. L'acte sexuel ne consiste pas seulement à assouvir son plaisir personnel. Quand tu sens que ton/ta partenaire n'a pas à 100% envie, tu t'arrêtes, même si le NON n'est pas prononcé, si la gestuelle dit NON alors tu t'arrêtes là. Cette notion de consentement est très importante." )
q4 = Question.create!(content: "Pour les préliminaires, je suis obligé(e) de faire un cunnilingus et/ou une fellation ?", order: 4, quiz_id: Quiz.first.id, explication:"Avant toute explication, nommons les préliminaires: le sexe non-pénétratif. Une chose préliminaire est ce qui précède et prépare une autre chose considérée comme plus importante. Hors, le sexe non-pénétratif est aussi important que le sexe pénétratif. Cela ne consiste pas seulement à faire un cunnilingus ou une fellation. En fait, tout ton corps est une zone érogène. Donc NON, le sexe non-pénétratif ne veut pas dire que tu devras faire un cunillingus ou une fellation, c'est bien plus vaste. N'oublie surtout pas que si tu n'en n'as pas envie, tu ne dois PAS le faire. TON CORPS = TES REGLES.")
q5 = Question.create!(content: "J'ai envie de perdre ma virginité avec mon/ma partenaire mais j'ai des questions.", order: 5, quiz_id: Quiz.first.id, explication: "La communication est la base d'une vie sexuelle épanouïe. Dès que tu as une question, tu dois en faire part à ton/ta partenaire. Si il/elle n'est pas à l'écoute et se montre moqueur(se), demande toi si c'est à ce genre de personne que tu souhaites te livrer. Beaucoup de craintes surgissent avant ta première fois: avoir peur d'être nul(le), de ne pas savoir faire, de ne pas aimer, etc. Sache que la première fois n'est souvent pas très confortable, autant pour toi que ton/ta partenaire. Toutes ces questions sont normales, rassure-toi. L'essentiel est de COMMUNIQUER pour prendre confiance !")

Response.create!(content: "Magique, comme dans les films romantiques.", result: false, question: q1)
Response.create!(content: "Cool, je vais pouvoir tester des positions comme j'ai pu le voir sur internet.", result: false, question: q1)
Response.create!(content: "Sympa, je vais enfin savoir ce que ça fait de jouir.", result: false, question: q1)
Response.create!(content: "Surprenante, tout sera nouveau !", result: true, question: q1)

Response.create!(content: "Bien évidemment, je ne veux surtout pas qu'il/elle pense que je suis nul(le).", result: false, question: q2)
Response.create!(content: "Hors de question je vais lui montrer de quoi je suis capable.", result: false, question: q2)
Response.create!(content: "Non, je veux que ce soit un moment de partage.", result: true, question: q2)
Response.create!(content: "Let's go! Il/Elle va tout m'apprendre, je vais être the sex boss.", result: false, question: q2)

Response.create!(content: "J'essaie de le/la rassurer en lui expliquant que tout va bien se passer.", result: false, question: q3)
Response.create!(content: "Je commence à m'agacer de devoir attendre, je vais aller voir ailleurs.", result: false, question: q3)
Response.create!(content: "Faire l'amour n'est pas urgent, je lui propose d'en parler.", result: true, question: q3)
Response.create!(content: "Je demande à son entourage ce qui ne va pas avec elle/lui.", result: false, question: q3)

Response.create!(content: "Bien sûr ! Tout le monde sait ça.", result: false, question: q4)
Response.create!(content: "Si je ne veux pas, il faut quand même que je le fasse pour faire plaisir à mon/ma partenaire.", result: false, question: q4)
Response.create!(content: "Non c'est que dans le porno.", result: false, question: q4)
Response.create!(content: "Les préliminaires ne s'arrêtent pas à ces pratiques.", result: true, question: q4)

Response.create!(content: "Je prends mon courage à deux mains et j'en parle à mon/ma partenaire.", result: true, question: q5)
Response.create!(content: "Je ne dis rien, je ne voudrais pas créer une gêne.", result: false, question: q5)
Response.create!(content: "Tu es dingue, il y a des questions qui ne se posent pas !", result: false, question: q5)
Response.create!(content: "Je lui dirai après le rapport sexuel.", result: false, question: q5)

puts "Theme créés #{Theme.count}"
puts "Quiz créé #{Quiz.count}"
puts "Questions créé #{Question.count}"
puts "Réponses créés #{Response.count}"


