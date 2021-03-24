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

Theme.create!(illustration: "mst.png", name: "Les MST/IST", description: "Tu connais les MST et tu sais comment t'en protéger, mais que connais-tu sur les IST ?")
Theme.create!(illustration: "acte-sexuel.png", name: "L'acte sexuel", description: "Le sexe ne se limite pas à la pénétration vaginale. Découvre les plaisirs du sexe non-pénétratif.")
Theme.create!(illustration: "premiere-fois.png", name: "La première fois", description: "La première fois ne se passe pas forcément comme tu l'as prévu et peut être angoissante.")
Theme.create!(illustration: "plaisir.png", name: "Le Plaisir", description: "Le plaisir est l'essence même des rapports sexuels. L'orgasme n'est pas LE but ultime à atteindre.")


Channel.create!(avatar: "p-avatar-seins", title: "Faut-il toujours jouir lors d'un rapport ?", user_id: User.first.id, theme_id: Theme.first.id)
Channel.create!(avatar: "p-avatar-clito", title: "La première fois fait-elle toujours mal ?", user_id: User.first.id, theme_id: Theme.first.id)
Channel.create!(avatar: "p-avatar-penis", title: "A quel âge faire sa première fois ?", user_id: User.first.id, theme_id: Theme.first.id)
Channel.create!(avatar: "p-avatar-penis", title: "Est ce que je peux parler de mes peurs à mon copain pour ma première fois ?", user_id: User.first.id, theme_id: Theme.first.id)
Channel.create!(avatar: "p-avatar-seins", title: "Je ne me sens pas prête pour ma première fois mais mon copain insiste, que faire ?", user_id: User.first.id, theme_id: Theme.first.id)

Video.create!(title: "Les tabous autour de la première fois", theme_id: Theme.first.id)
Video.create!(title: "Gérer le stress de la première fois", theme_id: Theme.first.id)
Video.create!(title: "Une société pénétrocentré", theme_id: Theme.first.id)

Quiz.create!(title: "La communication", theme_id: Theme.first.id, finished: true)
Quiz.create!(title: "Le consentement", theme_id: Theme.first.id, finished: false)
Quiz.create!(title: "Le sexe non-pénétratif", theme_id: Theme.first.id, finished: false)
Quiz.create!(title: "Le sexe pénétratif", theme_id: Theme.first.id, finished: false)

q1 = Question.create!(content: "Ma première fois va être...", order: 1, quiz_id: Quiz.first.id, explication: "Avant toute explication, nommons les préliminaires: le sexe non-pénétratif. Une chose préliminaire est ce qui précède et prépare une autre chose considérée comme plus importante. Hors, le sexe non-pénétratif est aussi important que le sexe pénétratif. D'autant plus que l'importance de la pénétration a été construite sur un mythe, 'l'orgasme vaginale'. Quant au sexe non-pénétratif, il ne consiste pas seulement à faire un cunnilingus ou une fellation. Cela va beaucoup plus loin, pense que tout ton corps est une zone érogène. C'est en carressant, embrassant, griffant, frottant... que tu dois aller découvrir où se trouvent ces zones chez ton/ta partenaire et faire monter le désir qu'il y a entre vous ou même en jouant avec des sex-toys ! Les zones les plus connues sont les parties génitales, les fesses et les seins mais ne te contente pas de ces dernières. Donc NON, le sexe non-pénétratif ne veut pas dire que tu devras faire un cunillingus ou une fellation, c'est bien plus vaste. N'oublie surtout pas que si tu n'en n'as pas envie, tu ne dois PAS le faire. Tu fais ce que tu souhaites de ton corps. TON CORPS = TES REGLES.")
q2 = Question.create!(content: "Mon/ma partenaire a plus d'expérience que moi, il/elle doit donc prendre le dessus.", order: 2, quiz_id: Quiz.first.id, explication: "Tu ne sais pas conduire une voiture dès la première fois que tu essaies n'est-ce pas ? Pour le sexe c'est pareil, ça s'apprend ! Avec le temps ça deviendra de plus en plus naturel et agréable. La première fois n'est souvent pas ce que nous pensons. Cela peut être surprenant, tu vas te découvrir, être maladroit(e) dans tes gestes et ce ne sera pas toujours agréable. Pour les filles, certaines ont mal, d'autres non, certaines saignent, d'autres non (mais ne t'attends pas à avoir un saignement tel que pendant tes règles). Pour les garçons, oubliez la pénétration qui dure. L'acte pénétratif sera court et rapide. Mais rien de grave, tout va bien ! Ce sera de plus en plus agréable avec le temps. Les points vraiment importants sont la COMMUNICATION avec ton/ta partenaire, le RESPECT mutuel, l'écoute, l'observation. Tu ne commenceras pas de suite par du sexe pénétratif, pense au PLAISIR que tu peux DONNER et RECEVOIR lors du sexe non-pénétratif. Le corps entier est une zone érogène. Prend ton temps, du plaisir et n'hésite pas à dire à ton/ta partenaire ce que tu apprécies. Découvre toi petit à petit, il est important que tu te connaisses et que tu saches ce que tu aimes ou non. Ne dis JAMAIS oui à ce qui ne t'apporte pas de plaisir, COMMUNIQUE, exprime tes ressentis auprès que ton/ta partenaire sexuel, que tu sois en couple ou non.")
q3 = Question.create!(content: "J'ai vraiment envie de faire l'amour, mais je sens que mon/ma partenaire hésite et a des doutes.", order: 3, quiz_id: Quiz.first.id, explication: "STOP ! Que tu aies plus ou moins d'expérience que ton/ta partenaire ne signifie pas que l'un(e) ou l'autre doit prendre le contrôle. Un rapport sexuel est un moment de partage et de connexion. Tu peux te laisser aller et te laisser guider mais cela ne veut pas dire que tu dois faire tout ce que ton/ta partenaire te demande. Tu ne dois pas rechercher une validation de ton/ta partenaire. Que ce soit dans une relation de couple ou non, tu dois prendre soin de toi et faire seulement ce dont tu as envie si ton/ta partenaire est d'accord. Cela va dans les deux sens. N'oublie pas que l'ego n'a rien à faire dans une relation sexuelle.")
q4 = Question.create!(content: "Mon/ma partenaire veut que nous fassions les préliminaires, cela signifie que nous devons forcément se faire un cunnilingus et/ou une fellation ?", order: 4, quiz_id: Quiz.first.id, explication: "Le respect mutuel est primordial et cela vaut d'autant plus lorsque nous parlons de sexualité. Que tu sois dans une relation amoureuse ou non, ton/ta partenaire te confie son intimité, tu dois le/la RESPECTER. En plus d'être à l'ECOUTE, tu dois OBSERVER ses gestes. Certaines gestuelles et expressions ne trompent pas. Si tu as un doute, tu ne dois pas hésiter à demander à ton/ta partenaire pour que votre échange soit le plus agréable possible. L'acte sexuel ne consiste pas seulement à assouvir son plaisir personnel. S'assurer que la personne avec laquelle tu partages ce moment apprécie et arrive à prendre du plaisir, que ce soit la première fois ou non, est encore plus stimulant. La sexualité doit être positive, tu ne dois te forcer à rien, ne pas avoir de tabous et pouvoir t'exprimer librement. Quand tu sens que ton/ta partenaire n'a pas à 100% envie, tu t'arrêtes, même si le NON n'est pas prononcé, si tu le ressens, si la gestuelle dit NON alors tu t'arrêtes là. Ces notions d'observation et d'écoute sont super importantes, elle représentent le consentement et permet de ne pas franchir la zone rouge en rentrant dans un rapport négatif à la sexualité.")
q5 = Question.create!(content: "Je suis sûr(e) de vouloir perdre ma virginité avec mon/ma partenaire mais je suis stressé(e) et j'ai des questions.", order: 5, quiz_id: Quiz.first.id, explication: "La communication est la base d'une vie sexuelle épanouïe. Tu ne dois pas avoir peur, ni honte. Tu dois PARLER. Dès que tu as une question ou une gêne tu dois en faire part à ton/ta partenaire. Ne laisse pas des blocages interférer avec la construction de ton identité sexuelle. Si il/elle n'est pas à l'écoute et se montre moqueur(se) demande toi si c'est à ce genre de personne que tu souhaites te livrer. Avant de perdre ta virginité, tu dois te sentir suffisamment à l'aise pour aborder n'importe quel sujet avec ton/ta partenaire. Beaucoup de questions apparaissent quand il s'agit de la première fois: avoir peur d'être nul(le), de ne pas savoir faire, de ne pas aimer, que ça ne rentre pas, d'avoir des odeurs, de douter de la taille de son penis... etc. Sache que la première fois n'est souvent pas très confortable, autant pour toi que ton/ta partenaire. Il/elle doit t'accepter comme tu es. Si ça ne rentre pas, c'est que ton corps te dit que ce n'est pas le moment, donc surtout ne force pas. Et pour ce qui concerne les odeurs, un penis ou une vulve n'est pas censé sentir la vanille ou le désinfectant...alors surtout laisse ta flore tranquille ! Garde en tête que le sexe doit être simple, ça permet de se faire plaisir et de donner du plaisir. Prend soin de toi, de ton corps, de ton esprit et de ton/ta partenaire !")

Response.create!(content: "Comme dans ces films romantiques, où ce moment est vraiment agréable, magique et reste mémorable", result: false, question: q1)
Response.create!(content: "Trop cool, je vais pouvoir tester des positions comme j'ai pu en voir sur internet.", result: false, question: q1)
Response.create!(content: "Sympa je vais enfin savoir ce que ça fait de jouir.", result: false, question: q1)
Response.create!(content: "Surprenant !", result: true, question: q1)


Response.create!(content: "Bien évidemment, je ne veux surtout pas qu'il/elle pense que je suis nul(le).", result: false, question: q2)
Response.create!(content: "Hors de question je vais lui montrer de quoi je suis capable.", result: false, question: q2)
Response.create!(content: "Non, je veux que ce soit un moment de partage", result: true, question: q2)
Response.create!(content: "Let's go! il/elle va tout m'apprendre, je vais être the sex boss", result: false, question: q2)

Response.create!(content: "Tu essaies de le/la rassurer en lui expliquant que tout va bien se passer.", result: false, question: q3)
Response.create!(content: "Tu commences à t'agacer de devoir attendre et tu vas voir ailleurs.", result: false, question: q3)
Response.create!(content: "Tu lui dis que faire l'amour n'est pas urgent et qu'en attendant vous pouvez en parler.", result: true, question: q3)
Response.create!(content: "Tu demandes à son entourage ce qui ne va pas avec elle/lui.", result: false, question: q3)

Response.create!(content: "Oui tout le monde sait ça.", result: false, question: q4)
Response.create!(content: "Si il/elle ne veut pas, il faut y aller quand même.", result: false, question: q4)
Response.create!(content: "Non c'est que dans le porno que tu vois ça.", result: false, question: q4)
Response.create!(content: "Les préliminaires ne s'arrêtent pas à ces pratiques.", result: true, question: q4)

Response.create!(content: "Je prends mon courage à deux mains et j'en parle à mon/ma partenaire calmement.", result: true, question: q5)
Response.create!(content: "Je ne dis rien, je ne voudrais pas créer une gêne.", result: false, question: q5)
Response.create!(content: "Vous êtes dingues, il y a des questions qui ne se posent pas", result: false, question: q5)
Response.create!(content: "Je lui dirai après le rapport sexuel.", result: false, question: q5)

puts "Theme créés #{Theme.count}"
puts "Quiz créé #{Quiz.count}"
puts "Questions créé #{Question.count}"
puts "Réponses créés #{Response.count}"
