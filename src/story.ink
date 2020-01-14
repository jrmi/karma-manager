VAR rich = 0
VAR education = 0
VAR support = 0
VAR simplicity = 0
VAR age = 0
VAR karma = 0
VAR gender = "F"
VAR name = "Noname"
VAR start = 0

LIST tags = nothing

-> init

== function alter(ref var_, val) ==
  ~ var_ += val

== function set(ref var_, val) ==
  ~ var_ = val

== function addTag(tag) ==
  ~ tags += tag

== function removeTag(tag) ==
  ~ tags -= tag

== function hasTag(tag) ==
  ~ return tags ? tag


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
  - currentAge < 10:
    ~ return (RANDOM(1, 400) == 1)
  - currentAge < 14:
    ~ return (RANDOM(1, 20) == 1)
  - currentAge <= 24:
    ~ return (RANDOM(1, 2) == 1)
  - currentAge <= 24:
    ~ return (RANDOM(1, 2) == 1)
  - currentAge <= 34:
    ~ return (RANDOM(1, 3) == 1)
  - currentAge <= 44:
    ~ return (RANDOM(1, 5) == 1)
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
    ~ return "de la classe moyenne"
  - rich_ < 25:
    ~ return "avec une bonne aisance materielle"
  - else:
    ~ return "sans aucun besoin"
}


== function descEducationParent(educ) ==
{
  - educ < 5:
    ~ return "plutôt faible"
  - educ < 15:
    ~ return "habituelle"
  - educ < 25:
    ~ return "élevée"
  - else:
    ~ return "excellente"
}

== function descSupportParent(support_) ==
{
  - support_ < 5:
    ~ return "peu attentifs à leurs enfants"
  - support_ < 15:
    ~ return "attentifs à leur famille"
  - support_ < 25:
    ~ return "très proches de leur famille"
  - else:
    ~ return "excessivement protecteurs avec leurs proches"
}

== function descSimplicityParent(support_) ==
{
  - support_ < 5:
    ~ return "irrespectueux"
  - support_ < 15:
    ~ return "peu respecteux"
  - support_ < 25:
    ~ return "sages"
  - else:
    ~ return "très sages"
}

== function initCarac(ref rich_, ref education_, ref support_, ref simplicity_, remain) ==

~ temp carac = RANDOM(1,4)
~ temp add = (RANDOM(1, remain / 2) + RANDOM(1, remain /2) + RANDOM(1, remain /2)) / 3

{ shuffle:
  - ~ rich_ += add
  - ~ education_ += add
  - ~ support_ += add
  - ~ simplicity_ += add
}

{ remain - add > 5:
  ~ initCarac(rich_, education_, support_, simplicity_, remain - add)
}

== function visited(divert) ==
  ~ return TURNS_SINCE(divert) > 1 and TURNS_SINCE(divert) < (TURNS() - start)

== init ==

~ age = 0
~ tags = ()
~ start = TURNS()

-> parentChoice

== parentChoice ==

~ rich = 0
~ education = 0
~ support = 0
~ simplicity = 0
~ initCarac(rich, education, support, simplicity, 50 + karma)

{getGirlName()} et {getBoyName()} {getName()} sont deux parents {descRichParent(rich)}.
<> Leur éducation est {descEducationParent(education)}. 
<> Ils sont {descSupportParent(support)}.
<> De plus, ils sont {descSimplicityParent(simplicity)} avec les autres.

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


-> choiceAction

= choiceAction

{~ -> action|-> choice}

/************** ACTIONS *************/

== action ==

action

{age < 17: -> nextYear}

{ shuffle:
  - -> ecology
  - -> politicAction
  - -> human
  - -> art
  - -> science
}

= endAction

{alter(karma, 5)}

+ [Ok]
  -> nextYear


== ecology ==

{ shuffle:
  - -> cleanOcean
  - -> lessGarbage
}

= cleanOcean

{RANDOM(1,(education+rich)/2) < 10: dommage -> nextYear}

À l'age de {age} ans, {name} organise {|une nouvelle|pour la troisième fois} une opération <>
{~internationnale|mondiale|générale} de nettoyage des océans {||et c'est un grand succès}.

-> action.endAction

= lessGarbage

{RANDOM(1,(education+support)/2) < 10: dommage -> nextYear}

À l'age de {age} ans, {name} améliore {|encore plus|toujours plus} les embalages afin de générer moins de déchets.

-> action.endAction

== politicAction ==

~ temp c = RANDOM(1,2)

{ c:
  - 1: -> peace
  - 2: -> lawImmigration
}

= peace

{RANDOM(1,(education+simplicity)/2) < 10: dommage -> nextYear}

À l'age de {age} ans, {name} fait signer un traité de paix {~en Irak|en Iran|au Soudan|en Syrie|au Malie|au Pakistan}.

-> action.endAction

= lawImmigration

{RANDOM(1,(education+simplicity)/2) < 10: dommage -> nextYear}

À l'age de {age} ans, {name} fait voter une nouvelle Loi pour protéger les <>
{shuffle:
  - immigrés
  - femmes batues
  - enfants battus
  - personnes victimes de viols
  - plus démunis
  - manifestants des violences policières
}

-> action.endAction

== human ==

~ temp c = RANDOM(1,2)

{ c:
  - 1: -> assos
  - 2: -> mission
}

= assos

{RANDOM(1, simplicity) < 10: dommage -> nextYear}

À l'age de {age} ans, {name} met en place une association humanitaire pour <>
{~sauver les enfants abandonnés|soigner les femmes maltraitées|aider les victimes de viols|accompagner les immigrés}.

-> action.endAction

= mission

{RANDOM(1, simplicity) < 10: dommage -> nextYear}

À l'age de {age} ans, {name} anime un {|nouveau} projet de création d'école pour enfants {~défavorisés|abandonnés|maltraités|en difficultés}.

-> action.endAction

== art ==

{ shuffle:
  - -> paint
  - -> building
}

= paint

{RANDOM(1, (support + education) / 2) < 10: dommage -> nextYear}

À l'age de {age} ans, {name} créé {|||encore} une {|nouvelle|série} oeuvre picturale {~révolutionnant le genre|d'un nouveau genre|exposée dans plusieurs musées}.

-> action.endAction

= building

{RANDOM(1, (rich + education) / 2) < 10: dommage -> nextYear}

À l'age de {age} ans, {name} fait construire {~un immeuble en bois zéro emission|une un parc éolien|un éco-village}.

-> action.endAction

== science ==

~ temp c = RANDOM(1,2)

{ c:
  - 1: -> medical
  - 2: -> energy
}

= medical

{RANDOM(1, (simplicity + education) / 2) < 10: dommage -> nextYear}

À l'age de {age} ans,  {name} invente <>
{ shuffle:
  - une nouvelle manière de soigner les infections sans utiliser d'anti-biotique
  - une nouvelle thérapie contre le sida accessible aux pays emmergeants
  - une manière de soulager les douleurs sans effets secondaires
}

-> action.endAction

= energy

{RANDOM(1, education) < 10: dommage -> nextYear}

À l'age de {age} ans, {name} conçoit une nouvelle manière de stocker l'energie qui permet de mieux utiliser les sources d'energies renouvelables.

-> action.endAction


/************** CHOICES *************/

== choice ==

choice

{ shuffle: 
  - -> prostitute
  - -> travel
  - -> delegate
  - -> mariage
  - -> child
  - -> extremGroup
  - -> politic
  - -> university
}

= university

{age > 25 or age < 19: -> nextYear}

À l'age de {age} ans, on propose à {name} d'aller dans une école renomée.

+ [Ok]
+ [Non merci]

- -> endEvent

= politic

{age < 22: -> nextYear}

À l'age de {age} ans, on propose à {name} de rejoindre le groupe politique "{~les humanistes solidaires|soyons ensembles|Ensemble et plus fort}".

+ [Ok]
+ [Non merci]

- -> endEvent

= extremGroup

{age < 18: -> nextYear}

À l'age de {age} ans, on propose à {name} de rejoindre le groupe militant "{~les ecoloWarrior|sauvons les dauphins|brulons les pollueurs}".

+ [Ok]
+ [Non merci]

- -> endEvent

= child

{age < 21: -> nextYear}

À l'age de {age} ans, {name} a la possiblité de faire un enfant.

+ [Ok (support + 5, richesse -5)] {alter(rich, -5)} {alter(support, 5)}
+ [Non merci]

- -> endEvent

= mariage

{age < 20: -> nextYear}

À l'age de {age} ans, {name} a la possiblité de se marier.

+ [Ok (support + 5, richesse -5)] {alter(rich, -5)} {alter(support, 5)}
+ [Non merci]

- -> endEvent

= prostitute

{age < 21 or yesprostitute: -> nextYear}

À l'age de {age} ans, on propose à {name} une "promotion canapé" pour gagner plus d'argent.

+ (yesprostitute) [Ok (karma -10, richesse +10)] {alter(karma, -10)} {alter(rich, 10)}
+ [Non merci]

- -> endEvent

= travel

{age < 25: -> studyTravel}

À l'age de {age} ans, {name} a la possiblité de changer de pays pour son travail.

+ [Ok (support -5, richesse +5)] {alter(support, -5)} {alter(rich, 5)}
+ [Non merci]

- -> endEvent

= studyTravel

À l'age de {age} ans, {name} a la possiblité de changer de pays pour ses études.

+ [Ok (support -3, education +3)] {alter(support, -3)} {alter(education, 3)}
+ [Non merci]

- -> endEvent

= delegate

{age < 7 or age > 18: -> nextYear}

À l'age de {age} ans, {name} peut se présenter à l'élection des délégués.

+ [Ok (?)]
+ [Non merci]

- -> endEvent

= endEvent

-> nextYear


/************** DEATH *************/

== death ==

Votre incarnation est morte à l'age de {age} ans.

+ [Ok]
  -> score


== score ==

Votre score :

Après cette vie vous avez {karma} points de karma.


  -> END





