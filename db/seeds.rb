# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
warrior = Warrior.new(id: 1,name: 'Goose the cat', description: 'The friendliest and furriest
  resident of Project Pegasus, Goose is the affectionate tabby cat that joins
  Carol Danvers and Nick Fury on their adventure',level: 1)
warrior.image = Pathname.new(Rails.root.join("app/assets/images/captain-marvels-cat-goose-ft.jpg")).open
warrior.save
warrior = Warrior.new(id: 2,name: 'Iron man', description: 'The friendliest and furriest
  resident of Project Pegasus, Goose is the affectionate tabby cat that joins
  Carol Danvers and Nick Fury on their adventure',level: 2, strength: 4, armor:4)
warrior.image = Pathname.new(Rails.root.join("app/assets/images/images.jpeg")).open
warrior.save
warrior = Warrior.new(id: 3,name: 'Eminem', description: 'Un soldat', level: 3, strength: 6, armor:6)
  warrior.image = Pathname.new(Rails.root.join("app/assets/images/téléchargement.jpeg")).open
  warrior.save
warrior = Warrior.new(id: 4,name: 'Kung Fury', description: 'The friendliest and furriest
  resident of Project Pegasus, Goose is the affectionate tabby cat that joins
  Carol Danvers and Nick Fury on their adventure',level: 4, strength: 8, armor:8)
warrior.image = Pathname.new(Rails.root.join("app/assets/images/kung-fury.jpg")).open
warrior.save
warrior = Warrior.new(id: 5,name: 'The Gopnik', description: 'Un soldat sans peur, ayant toujour une bière dans une main et des graines de tournesol
dans l\'autre. TOP DANGER', level: 5, strength: 10, armor:10)
warrior.image = Pathname.new(Rails.root.join("app/assets/images/gopnik.jpg")).open
warrior.save
