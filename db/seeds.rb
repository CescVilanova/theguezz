# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  
  clubs = Club.create!([
    { name: 'Olymipacos', crest: File.open('app/assets/images/crests/olympiacos.png') },
    { name: 'F.C. Barcelona', crest: File.open('app/assets/images/crests/barcelona.JPG') },
    { name: 'Atlético de Madrid', crest: File.open('app/assets/images/crests/atletico.png') },
    { name: 'Borussia Dortmund', crest: File.open('app/assets/images/crests/dortmund.jpeg') },
    { name: 'Bayer Leverkusen', crest: File.open('app/assets/images/crests/leverkusen.png') },
    { name: 'Bayern Munchen', crest: File.open('app/assets/images/crests/bayern.png') },
    { name: 'Juventus', crest: File.open('app/assets/images/crests/juventus.png') },
    { name: 'Real Madrid', crest: File.open('app/assets/images/crests/madrid.png') },
    { name: 'Manchester United', crest: File.open('app/assets/images/crests/manchester.png') },
    { name: 'Ajax', crest: File.open('app/assets/images/crests/ajax.jpeg') },
    { name: 'Milan', crest: File.open('app/assets/images/crests/milan.png') },
    { name: 'Manchester City', crest: File.open('app/assets/images/crests/city.jpg') },
    { name: 'Arsenal', crest: File.open('app/assets/images/crests/arsenal.jpeg') },
    { name: 'Galatasaray', crest: File.open('app/assets/images/crests/galatasaray.jpg') },
    { name: 'Celtic Glasgow', crest: File.open('app/assets/images/crests/celtic.jpeg') },
    { name: 'Porto', crest: File.open('app/assets/images/crests/porto.jpg') }
    ])

