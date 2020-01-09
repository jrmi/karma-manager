VAR f = true
VAR money = 0
VAR rich = 0
VAR education = 0
VAR support = 0
VAR age = 0
VAR karma = 0
VAR gender = "F"
VAR name = "Noname"

LIST tags = yesprostitute, nothing

-> intro

== function getName() ==
  ~ temp tname = "{~Martin|Bernard|Thomas|Petit|Robert|Richard|Durand|Dubois|Moreau|Laurent|Simon|Michel|Lefebvre|Leroy|Roux|David|Bertrand|Morel|Fournier|Girard|Bonnet|Dupont|Lambert|Fontaine|Rousseau|Vincent|Muller|Lefevre|Faure|Andre|Mercier|Blanc|Guerin|Boyer|Garnier|Chevalier|Francois|Legrand|Gauthier|Garcia|Perrin|Robin|Clement|Morin|Nicolas|Henry|Roussel|Mathieu|Gautier|Masson|Marchand|Duval|Denis|Dumont|Marie|Lemaire|Noel|Meyer|Dufour|Meunier|Brun|Blanchard|Giraud|Joly|Riviere|Lucas|Brunet|Gaillard|Barbier|Arnaud|Martinez|Gerard|Roche|Renard|Schmitt|Roy|Leroux|Colin|Vidal|Caron|Picard|Roger|Fabre|Aubert|Lemoine|Renaud|Dumas|Lacroix|Olivier|Philippe|Bourgeois|Pierre|Benoit|Rey|Leclerc|Payet|Rolland|Leclercq|Guillaume|Lecomte|Lopez|Jean|Dupuy|Guillot|Hubert|Berger|Carpentier|Sanchez|Dupuis|Moulin|Louis|Deschamps|Huet|Vasseur|Perez|Boucher|Fleury|Royer|Klein|Jacquet|Adam|Paris|Poirier|Marty|Aubry|Guyot|Carre|Charles|Renault|Charpentier|Menard|Maillard|Baron|Bertin|Bailly|Herve|Schneider|Fernandez|Collet|Leger|Bouvier|Julien|Prevost|Millet|Perrot|Daniel|Cousin|Germain|Breton|Besson|Langlois|Remy|Pelletier|Leveque|Perrier|Leblanc|Barre|Lebrun|Marchal|Weber|Mallet|Hamon|Boulanger|Jacob|Monnier|Michaud|Rodriguez|Guichard|Gillet|Etienne|Grondin|Poulain|Tessier|Chevallier|Collin|Chauvin|Bouchet|Lemaitre|Benard|Marechal|Humbert|Reynaud|Antoine|Hoarau|Perret|Barthelemy|Cordier|Pichon|Lejeune|Gilbert|Lamy|Delaunay|Pasquier|Carlier|Laporte}"
  ~ return tname

== function getBoyName() ==
  ~ temp tname = "{~Gabriel|Raphaël|Léo|Louis|Lucas|Adam|Arthur|Jules|Hugo|Maël|Liam|Ethan|Paul|Nathan|Gabin|Sacha|Noah|Tom|Mohamed|Aaron|Théo|Noé|Victor|Martin|Mathis|Timéo|Nolan|Enzo|Eden|Axel|Antoine|Léon|Marius|Robin|Valentin|Clément|Baptiste|Tiago|Rayan|Samuel|Amir|Augustin|Naël|Maxime|Maxence|Gaspard|Eliott|Alexandre|Isaac|Mathéo}"
  ~ return tname


== function getGirlName() ==
  ~ temp tname = "{~Emma|Jade|Louise|Alice|Chloé|Lina|Léa|Rose|Anna|Mila|Inès|Ambre|Julia|Mia|Léna|Manon|Juliette|Lou|Camille|Zoé|Lola|Agathe|Jeanne|Lucie|Eva|Nina|Sarah|Romane|Inaya|Charlotte|Léonie|Romy|Adèle|Iris|Louna|Sofia|Margaux|Luna|Olivia|Clémence|Victoria|Léana|Clara|Elena|Victoire|Aya|Margot|Nour|Giulia|Charlie}"
  ~ return tname


== function isDead(currentAge) ==
{ 
  - currentAge < 1:
    ~ return (RANDOM(1, 177) == 1)
  - currentAge < 4:
    ~ return (RANDOM(1, 4386) == 1)
  - currentAge < 14:
    ~ return (RANDOM(1, 8333) == 1)
  - currentAge <= 24:
    ~ return (RANDOM(1, 1908) == 1)
  - currentAge <= 24:
    ~ return (RANDOM(1, 1215) == 1)
  - currentAge <= 34:
    ~ return (RANDOM(1, 663) == 1)
  - currentAge <= 44:
    ~ return (RANDOM(1, 279) == 1)
  - currentAge <= 54:
    ~ return (RANDOM(1, 112) == 1)
  - currentAge <= 64:
    ~ return (RANDOM(1, 42) == 1)
  - currentAge <= 74:
    ~ return (RANDOM(1, 15) == 1)
  - currentAge <= 84:
    ~ return (RANDOM(1, 6) == 1)
  - else:
    ~ return (RANDOM(1, 10) == 1)

}

== function hasEvent(currentAge) ==
{
  - currentAge < 1:
    ~ return (RANDOM(1, 30) == 1)
  - currentAge < 4:
    ~ return (RANDOM(1, 20) == 1)
  - currentAge < 14:
    ~ return (RANDOM(1, 10) == 1)
  - currentAge <= 24:
    ~ return (RANDOM(1, 10) == 1)
  - currentAge <= 24:
    ~ return (RANDOM(1, 10) == 1)
  - currentAge <= 34:
    ~ return (RANDOM(1, 10) == 1)
  - currentAge <= 44:
    ~ return (RANDOM(1, 10) == 1)
  - currentAge <= 54:
    ~ return (RANDOM(1, 25) == 1)
  - currentAge <= 64:
    ~ return (RANDOM(1, 50) == 1)
  - currentAge <= 74:
    ~ return (RANDOM(1, 100) == 1)
  - currentAge <= 84:
    ~ return (RANDOM(1, 300) == 1)
  - else:
    ~ return (RANDOM(1, 400) == 1)
}

== function descRichParent(rich_) ==
{
  - rich_ < 5:
    ~ return "ayant du mal a terminer les fin de mois"
  - rich_ < 15:
    ~ return "sans histoire"
  - rich_ < 25:
    ~ return "avec une bonne aisance materielle"
  - else:
    ~ return "sans aucun besoin"
}

== function initCarac(ref rich_, ref education_, ref support_, point)==

~ temp carac = RANDOM(1,4)

{
  - carac == 1:
      ~ rich_ += RANDOM(1,3)
  - carac == 2:
      ~ education_ += RANDOM(1,3)
  - carac == 3:
      ~ support_ += RANDOM(1,3)
}

{ point > 0:
  ~ initCarac(rich_, education_, support_, point - 1)
}


== intro ==

Bienvenue dans votre gestionnaire d'incarnation.

Bla bla bla

* [Compris]
  -> parentChoice


== parentChoice ==

~ age = 0
~ rich = 0
~ education = 0
~ support = 0
~ tags = ()

~ initCarac(rich, education, support, 30)

Carac : ({rich}, {education}, {support})

{getGirlName()} et {getBoyName()} {getName()} sont deux parents {descRichParent(rich)}

Voulez-vous vous incarner dans cette famille ?


+ [Oui]
  -> birth

+ [Non]
  -> parentChoice


== birth ==

~ gender = "{~F|M}"
{ gender=="F":
  ~ name = getGirlName()
- else:
  ~ name = getBoyName()
}

Vous naissez sous le nom de {name}.

+ [Ok]
  -> nextYear

/************** NEXTYEAR *************/

== nextYear ==

~ age++


{ 
- isDead(age):
    -> death
- hasEvent(age):
    -> event
- else:
    -> nextYear
}

-> death

== event ==

à l'age de {age} ans, {name} :

{~ -> action|-> choice}

/************** ACTIONS *************/

== action ==

Fait quelque chose.

+ [Super]
  -> nextYear


/************** CHOICES *************/

== choice ==

~ temp c = RANDOM(1,2)

{
  - c == 1: -> prostitute
  - c == 2: -> travel
}

= prostitute

{tags ? yesprostitute: x -> choice}

On propose à {name} de se prostituer pour gagner plus d'argent.

+ [Ok (karma -10, richesse +10)]
  ~ tags += (yesprostitute)
  ~ karma -= 1
  ~ rich += 10
+ [Non Merci]

- -> endEvent

= travel

Vous pouvez changer de pays.

+ [Ok (support -5, richesse +5)]
  ~ support -= 5
  ~ rich += 5
+ [Non Merci]

- -> endEvent

= endEvent

Carac : ({rich}, {education}, {support})

-> nextYear


/************** DEATH *************/

== death ==

Votre incarnation est morte à l'age de {age} ans.

+ [Ok]
  -> score


== score ==

Votre score

+ [Nouvelle incarnation]
  -> parentChoice
* [Quitter le cycle des ré-incarnations]
  -> END





