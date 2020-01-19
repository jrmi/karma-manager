VAR rich = 0
VAR education = 0
VAR support = 0
VAR simplicity = 0

VAR debug = true

VAR age = 0
VAR karma = 0

VAR gender = "F"
VAR name = "Noname"
VAR start = 0

VAR politician = 0
VAR scientist = 0
VAR artist = 0
VAR activist = 0
VAR humanist = 0

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
  /*- currentAge < 1:
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
    ~ return (RANDOM(1, 663) == 1)*/
  - currentAge <= 44:
    ~ return (RANDOM(1, 279) == 1)
  - currentAge <= 54:
    ~ return (RANDOM(1, 122) == 1)
  - currentAge <= 64:
    ~ return (RANDOM(1, 52) == 1)
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
  - currentAge <= 34:
    ~ return (RANDOM(1, 2) == 1)
  - currentAge <= 44:
    ~ return (RANDOM(1, 3) == 1)
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
    ~ return "qui ont du mal à terminer leurs fins de mois"
  - rich_ < 15:
    ~ return "issus de la classe moyenne"
  - rich_ < 25:
    ~ return "qui possèdent une aisance materielle certaine"
  - else:
    ~ return "qui payent l'impôt sur la fortune"
}

== function descEducationParent(educ) ==
{
  - educ < 5:
    ~ return "ils n'en ont pas"
  - educ < 15:
    ~ return "ils ont suivi le cursus habituel"
  - educ < 25:
    ~ return "ils ont fait des études longues"
  - else:
    ~ return "ils conaissent tout sur tout"
}

== function descSupportParent(support_) ==
{
  - support_ < 5:
    ~ return "sont peu attentifs à leurs enfants"
  - support_ < 15:
    ~ return "font le minimum pour leur famille"
  - support_ < 25:
    ~ return "considèrent que la famille est importante"
  - else:
    ~ return "ne rateraient pour rien au monde une réunion de famille"
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

== function test(threshold) ==
  ~ temp res = RANDOM(1,100)
  ~ return res > threshold

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

/****************** INIT ******************************/

== init ==

~ age = 0
~ tags = ()
~ start = TURNS()
~ politician = 0
~ scientist = 0
~ artist = 0
~ activist = 0
~ humanist = 0

~ gender = "{~F|M}"
{ gender == "F":
  ~ name = getGirlName()
- else:
  ~ name = getBoyName()
}

-> parentChoice

== parentChoice ==

~ rich = 0
~ education = 0
~ support = 0
~ simplicity = 0
~ initCarac(rich, education, support, simplicity, 40 + karma)

Choisissez vos parents. <>
{not first:Première proposition :}
{first and not second:Deuxième proposition :}
{second:Proposition finale :}

{getGirlName()} et {getBoyName()} {getName()} sont deux parents {descRichParent(rich)}.
<> En ce qui concerne leur éducation, {descEducationParent(education)}. 
<> Ils {descSupportParent(support)}.
<> Ils sont {descSimplicityParent(simplicity)} avec autrui.

Voulez-vous vous incarner dans cette famille ?

+ [Oui]
  -> birth

* (first) [Non, suivant…]
  -> parentChoice

* (second) {first} [La prochaine sera la bonne]
  -> parentChoice

+ {debug}[-- Mort --] -> death
+ {debug}[-- +10 karma --] {alter(karma, 10)} -> parentChoice
+ {debug}[-- +10 age --] {alter(age, 10)} -> parentChoice
+ {debug}[-- Max stats --] 
  {set(rich, 100)}
  {set(education, 100)}
  {set(support, 100)}
  {set(simplicity, 100)}
  -> nextYear


== birth ==

Vos parents sont {~heureux|ravis|soulagés|surpris|épuisés mais heureux|contents}
<> d'annoncer la naissance de leur {gender=="F":fille|fils} {name}.

Son signe astral est <>
{ shuffle:
  - Bélier
  - Taureau
  - Gémeaux
  - Cancer
  - Lion
  - Vierge
  - Balance
  - Scorpion
  - Sagittaire
  - Capricorne
  - Verseau
  - Poissons
}
<> et {gender=="F":elle|il} est {gender=="F":{~gauchère|droitière|droitière|droitière}|{~gaucher|droitier|droitier|droitier}}.

Vous allez maintenant suivre la vie de {name}.

+ [Commençons…]
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

{age < 17: -> nextYear}

{ shuffle:
  - -> ecology
  - -> politicAction
  - -> human
  - -> art
  - -> science
}

= endAction

Grâce à l'action de votre incarnation, vous gagnez du Karma (+8).
{alter(karma, 8)}

+ [Ok]
  -> nextYear

= failAction

C'est une occasion ratée, mais la prochaine sera sans doute la bonne.

+ [Ok] 
   -> nextYear


== ecology ==

{debug: <> --ecology}

{test((education+rich)/2 + activist) : 
  À l'âge de {age} ans, le manque d'éducation ({education}%) et de ressources matérielles ({rich}%) empêchent 
  <> {name} de réaliser une action militante. Dommage…
 -> action.failAction
}

À l'âge de {age} ans, grâce{activist>0: à sa carrière,} à son éducation ({education}%) et à ses ressources matérielles ({rich}%), <>

{ shuffle:
  - -> cleanOcean
  - -> lessGarbage
}

= cleanOcean

{name} organise {une|une nouvelle|pour la troisième fois une} opération <>
{~internationnale|mondiale|générale} de nettoyage des océans {||et c'est un grand succès}.

-> action.endAction

= lessGarbage

{name} améliore {|encore plus|toujours plus} les emballages afin de générer moins de déchets.

-> action.endAction

== politicAction ==

{debug: <> --politic}

{test((support+rich)/2 + politician):  
  À l'âge de {age} ans, le manque de soutien de ses proches ({support}%) ainsi que ses difficultés matérielles ({rich}%) ne permettent pas à 
  <> {name} de réaliser l'action politique {gender=="F":qu'elle|qu'il} souhaitait.
 -> action.failAction
}

À l'âge de {age} ans, grâce{politician>0: à sa carrière,} au soutien de son entourage ({support}%) et à ses ressources matérielles ({rich}%), <>

{ shuffle:
  - 1: -> peace
  - 2: -> lawImmigration
}

= peace

{name} fait signer un traité de paix {~en Irak|en Iran|au Soudan|en Syrie|au Malie|au Pakistan}.

-> action.endAction

= lawImmigration

{name} fait voter une nouvelle Loi pour protéger les <>
{shuffle:
  - immigrés
  - femmes battues
  - enfants exploités
  - personnes victimes de viols
  - plus démunis
  - manifestants des violences policières
}

-> action.endAction

== human ==

{debug: <> --human}

{test((support+simplicity)/2 + humanist):  
  À l'âge de {age} ans, la faiblesse de son entourage ({support}%) et de sa sagesse ({simplicity}%) ne permettent pas à 
  <> {name} de s'engager dans une action humanitaire.
 -> action.failAction
}

À l'âge de {age} ans, grâce{humanist>0: à sa carrière,} au soutien de son entourage ({support}%) et à sa sagesse ({simplicity}%), <>

~ temp c = RANDOM(1,2)

{ c:
  - 1: -> assos
  - 2: -> mission
}

= assos

{name} met en place une association humanitaire pour <>
{ shuffle:
 - accueillir les enfants abandonnés
 - réduire les inégalités homme/femme
 - faire avancer la recherche sur les maladies auto-immunes
 - éviter le décrochage scolaire
 - lutter contre la faim dans le monde
 - améliorer le taux d'alphabétisation dans le monde
 - venir en aide aux réfugiés {~|climatiques} 
}.

-> action.endAction

= mission

{name} anime un {|nouveau} projet de création d'école pour enfants {~défavorisés|abandonnés|maltraités|en difficultés}.

-> action.endAction

== art ==

{debug: <> --art}

{test((simplicity + education) / 2 + artist): 
  À l'âge de {age} ans, son manque d'éducation ({education}%) et son manque de discernement ({simplicity}%) font échouer les  
  <> projet artistiques de {name}.
 -> action.failAction
}

À l'âge de {age} ans, grâce{artist>0: à sa carrière,} à son éducation ({education}%) et à sa sagesse ({simplicity}%), <>

{ shuffle:
  - -> paint
  - -> building
  - -> music
}

= paint

{name} peint {|||encore} une {|nouvelle|série} oeuvre picturale {~révolutionnant le genre|d'un nouveau genre|exposée dans plusieurs musées}.

-> action.endAction

= music

{name} compose {|||encore} un {!|nouveau} concerto pour {~piano|harpe|violoncelle|hautbois|triangle} et orchestre.

-> action.endAction

= building

{name} fait construire {~un immeuble en bois zéro emission|une un parc éolien|un éco-village}.

-> action.endAction

== science ==

{debug: <> --science}

{test((support + education) / 2 + scientist): 
  À l'âge de {age} ans, la faiblesse de son éducation ({education}%) et de son entourage ({support}%) ne permettent pas à 
  <> {name} d'innover dans le domaine des sciences.
 -> action.failAction
}

À l'âge de {age} ans, grâce{scientist>0: à sa carrière,} à son éducation ({education}%) et au soutien de son entourage ({support}%), <>

~ temp c = RANDOM(1,2)

{ c:
  - 1: -> medical
  - 2: -> energy
}

= medical

{name} invente <>
{ shuffle:
  - une nouvelle manière de soigner les infections sans utiliser d'anti-biotique
  - une nouvelle thérapie contre le sida accessible aux pays emmergeants
  - une manière de soulager les douleurs sans effets secondaires
}

-> action.endAction

= energy

{name} conçoit une nouvelle manière de stocker l'energie qui permet de mieux 
<> utiliser les sources d'energies renouvelables.

-> action.endAction


/************** CHOICES *************/

== choice ==

{ shuffle: 
  - -> child
  - -> mariage
  - -> extremGroup
  - -> travel
  - -> delegate
  - -> mayor
  - -> universityPolitic
  - -> universityScience
  - -> universityArt
  - -> universityLit
  - -> humanWork
  - -> spiritualRetreat
}

= child

{age < 20 or age > 52: -> nextYear}

À l'âge de {age} ans, {name} souhaite faire un enfant.

+ [Bonne idée] 
  Cela diminue vos ressources matérielles (-10%) mais augmente le soutien de votre entourage (+10%).
  {alter(rich, -10)} {alter(support, 10)}
  ++ [Ok]
+ [Peut-être plus tard]

- -> endEvent

= mariage

{age < 20 or married: -> nextYear}

À l'âge de {age} ans, {name} a la possiblité de se marier. 

+ (married) [Ok] 
  Cela diminue vos ressources financières (-5%) mais augmente le soutien (10%) de votre entourage.
  {alter(rich, -5)} {alter(support, 10)}
  ++ [Ok]
+ [Non merci]

- -> endEvent

= extremGroup

{age < 18: -> nextYear}

À l'âge de {age} ans, on propose à {name} de rejoindre le groupe militant "{~les ecoloWarrior|sauvons les dauphins|actions contre les pollueurs}".

+ [Toujours d'accord pour agir] 
  Vous venez d'augmenter les chances de réaliser une action militante. 
  <> En revanche, la carrière politique sera plus difficile.
  {alter(activist, 20)} {alter(politician, -20)}
  ++ [Ok]
+ [Non merci]

- -> endEvent

= travel

{age < 25: -> studyTravel}

À l'âge de {age} ans, {name} a la possiblité de changer de pays pour son travail.

+ [Le voyage c'est la santé]
  Le voyage l'éloigne un peu de ses proches (Entourage -5%) mais augmente ses ressources matérielles (+5%).
  {alter(support, -5)} {alter(rich, 5)}
  ++ [Ok]
+ [Non merci]

- -> endEvent

= studyTravel

À l'âge de {age} ans, {name} a la possiblité de changer de pays pour ses études.

+ [Les voyages forment la jeunesse] 
  Un voyage permet d'apprendre plus (Education +5%) mais l'éloigne un peu de ses proches (Entourage -5%).
  {alter(support, -5)} {alter(education, 5)}
  ++ [Ok]
+ [Non merci]

- -> endEvent

= delegate

{age < 7 or age > 18: -> nextYear}

À l'âge de {age} ans, {name} peut se présenter à l'élection des délégués.

+ [C'est une bonne première expérience] 
  La carrière politique sera facilitée, mais les actions militantes seront désormais plus difficiles à mener.
  {alter(activist, -10)} {alter(politician, 10)}
  ++ [Ok]
+ [Non merci]

- -> endEvent

= mayor

{age < 22 : -> nextYear}

À l'âge de {age} ans, {name} peut se présenter à la mairie de sa commune.

+ [D'accord pour agir pour sa commune] 
  Sa carrière politique progresse mais cela fait perdre de vue les groupes plus alternatifs.
  {alter(activist, -20)} {alter(politician, 20)}
  ++ [Ok]
+ [Non merci]

- -> endEvent

= universityPolitic

{age < 18 or age > 23: -> nextYear}

À l'âge de {age} ans, {name} a la possibilité de rentrer dans {~une grande école|un cursus universitaire} politique.

+ [Bonne idée] 
  La carrière politique est privilégiée, en dépit des autres carrières.
  {alter(politician, 25)} {alter(scientist, -5)} {alter(activist, -5)} {alter(artist, -5)} {alter(humanist, -5)}
  ++ [Ok]
+ [Non merci]

- -> endEvent

= universityScience

{age < 18 or age > 23: -> nextYear}

À l'âge de {age} ans, {name} a la possibilité de rentrer dans {~une grande école|un cursus universitaire} scientifique.

+ [Les science avant tout] 
  {name} privilégie sa carrière scientifique, en dépit des autres carrières.
  {alter(scientist, 25)} {alter(politician, -5)} {alter(activist, -5)} {alter(artist, -5)} {alter(humanist, -5)}
  ++ [Ok]
+ [Non merci]

- -> endEvent

= universityArt

{age < 18 or age > 23: -> nextYear}

À l'âge de {age} ans, {name} a la possibilité de rentrer dans une grande école artistique.

+ [L'art pour l'art] 
  {name} privilégie sa carrière artistique, en dépit des autres carrières.
  {alter(artist, 25)} {alter(politician, -5)} {alter(activist, -5)} {alter(scientist, -5)} {alter(humanist, -5)}
  ++ [Ok]
+ [Non merci]

- -> endEvent

= universityLit

{age < 18 or age > 23: -> nextYear}

À l'âge de {age} ans, {name} a la possibilité de rentrer dans une {~université|grande école} de {~philosopihe|littérature}.

+ [En avant pour les belles lettres]
  {name} privilégie sa carrière intelectuelle, en dépit des autres carrières.
  {alter(humanist, 25)} {alter(politician, -5)} {alter(activist, -5)} {alter(scientist, -5)} {alter(artist, -3)}
  ++ [Ok]
+ [Non merci]

- -> endEvent

= humanWork

{age < 18 or age > 25 : -> nextYear}

À l'âge de {age} ans, on propose à {name} d'aller faire une mission humanitaire à l'étranger.

+ [Bonne idée] 
  Les chances de faire une action militante augmentent mais la carrière politique sera plus difficile.
  {alter(activist, 20)} {alter(politician, -20)}
  ++ [Ok]
+ [Non merci]

- -> endEvent

= spiritualRetreat

{age < 18 : -> nextYear}

À l'âge de {age} ans, on propose à {name} d'aller faire une retraite spirituelle dans un 
<> grand monastère.

+ [Bonne idée] 
  La sagesse de {name} augmente (+10%) mais sa retraite loin de tous lui fait perdre de vue plusieurs de ses amis proches (Entourage -5%). 
  <> Avec un regard plus distancié sur le monde {gender=="F":elle|il} se deleste de certaines possesions matérielles (Ressources -5%).
  {alter(simplicity, 10)} {alter(support, -5)} {alter(rich, -5)}
  ++ [Ok]
+ [Non merci]

- -> endEvent

= endEvent


-> nextYear


/************** DEATH *************/

== death ==

{name} meurt à l'âge de {age} ans

{ shuffle:
  - <>. Cause de la mort : présence d'un nénuphar dans les poumons.
  - <> d'une mort aussi grotesque que tragique en s'étouffant alors qu'{gender=="F":elle|il} avalait un bretzel.
  - <>. Cause de la mort : l'horloge mécanique qui remplaçait son cœur s'est arrétée.
  - <>. Cause de la mort : grève de la faim prolongée. (Karma + 8) {alter(karma, 8)}
  - <>. Cause de la mort : incertaine, les enquêteurs poursuivent leur enquête.
  - <>. Cause de la mort : lors d'un selfie {~en haut d'une falaise|en haut d'une tour|près d'un {~lion|serpent|éléphant}|au milieu d'une autoroute}.
  - <> lors d'une représentation du Malade imaginaire de Molière.
  - <> en changeant une ampoule alors qu'{gender=="F":elle|il} était dans son bain.
  - <>. Cause de la mort : chute d'un piano du 4ème étage.
  - <>. Cause de la mort : chute d'une tortue nommée Eschyle sur sa tête.
  - <> en testant son invention {~du costume parachute|du gilet pare-balles sexy|du taser anti-émeutes}.
  - <> en s'approchant trop près d'une éruption volcanique.
  - <> dans son sommeil.
  - <> lors d'une partie de cache-cache. Ce sont les éboueurs qui ont retrouvé le corps. On peut affirmer que c'est {gender=="F":la gagnant|le gagnant}.
  - <>. Cause de la mort : assassiné{gender=="F":e} en prenant une douche.
  - <>. Cause de la mort : une météorite.
  - <>. Cause de la mort : {age>80:veillesse|par amour}.
  - <>. Cause de la mort : l'ennui.
  - <> en urinant sur une cloture électrique.
  - <> en enflamant ses pets.
  - <> au moment où {gender=="F":elle|il} plaçait le mot « veinard » au Scrable.
}

+ [Dommage]
  -> score
+ [Ce fut une belle vie]
  -> score
+ [Une vie sans histoire]
  -> score
+ [Paix à vous même]
  -> score

== score ==

Après cette vie, Karma manager v1.2 vous informe que vous avez {karma} point{karma>0:s} de Karma.

Que souhaitez-vous faire ?

  -> END





