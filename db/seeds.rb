# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Creation des marques

ducati = Marque.new(
    nom: "Ducati"
)
ducati.save

suzuki = Marque.new(
    nom: "Suzuki"
)
suzuki.save

honda = Marque.new(
    nom: "Honda"
)
honda.save

kawasaki = Marque.new(
    nom: "Kawasaki"
)
kawasaki.save

yamaha = Marque.new(
    nom: "Yamaha"
)
yamaha.save

aprilia = Marque.new(
    nom: "Aprilia"
)
aprilia.save

triumph = Marque.new(
    nom: "Triumph"
)
triumph.save

bmw = Marque.new(
    nom: "Bmw"
)
bmw.save

puts "la creation des marques s'est bien passée"

# Fin creation des marques

# ---------------------------

# creation des modeles

mod1 = Modele.new(
    nom: "Monster 796",
    marque_id: 1
)
mod1.save

mod2 = Modele.new(
    nom: "Supersport 939",
    marque_id: 1
)
mod2.save

mod3 = Modele.new(
    nom: "Mulistrada 750",
    marque_id: 1
)
mod3.save

mod4 = Modele.new(
    nom: "Bandit 600",
    marque_id: 2
)
mod4.save

mod5 = Modele.new(
    nom: "Hornet 600",
    marque_id: 3
)
mod5.save

puts "la creation des modeles s'est bien passée"

# Fin creation des modeles

# ---------------------------

# creation des operations

operation1 = Operation.new(
    nom: "Vidange",
)
operation1.save

operation2 = Operation.new(
    nom: "Purge liquide de frein",
)
operation2.save

operation3 = Operation.new(
    nom: "Pneu avant",
)
operation3.save

operation4 = Operation.new(
    nom: "Pneu arrière",
)
operation4.save

operation5 = Operation.new(
    nom: "Kit chaine",
)
operation5.save

operation6 = Operation.new(
    nom: "Plaquette de frein avant",
)
operation6.save

operation7 = Operation.new(
    nom: "Plaquette de frein arrière",
)
operation7.save

operation8 = Operation.new(
    nom: "Révision constructeur",
)
operation8.save

operation9 = Operation.new(
    nom: "Autre ...",
)
operation9.save

puts "la creation des operations s'est bien passée"

# Fin creation des marques
