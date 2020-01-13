/************** ACTIONS *************/

== action ==

{age < 17: -> event}

~ temp c = RANDOM(1,5)

{
  - c == 1: -> ecology
  - c == 2: -> politic
  - c == 3: -> human
  - c == 4: -> art
  - c == 5: -> science
}

= endAction

+ [Ok]
  -> nextYear


== ecology ==

~ temp c = RANDOM(1,2)

{
  - c == 1: -> cleanOcean
  - c == 2: -> lessGarbage
}

= cleanOcean

{cleanOcean: -> action}

Organise une opération internationnal de nettoyage des océans.

-> action.endAction

= lessGarbage

{lessGarbage: -> action}

Améliore des embalages afin de générer moins de déchets.

-> action.endAction

== politic ==

~ temp c = RANDOM(1,2)

{
  - c == 1: -> peace
  - c == 2: -> lawImmigration
}

= peace

{peace: -> action}

Rétablie la paix {~en Irak|en Iran|au Soudan}
{alter(karma, 5)}

-> action.endAction

= lawImmigration

{lawImmigration: -> action}

Fait voter une Loi pour protéger les immigrés
{alter(karma, 5)}


-> action.endAction

== human ==

~ temp c = RANDOM(1,2)

{
  - c == 1: -> assos
  - c == 2: -> mission
}

= assos

{assos: -> action}

Met en place une association humanitaire pour {~sauver les enfants|soigner les femmes maltraitées}.

-> action.endAction

= mission

{mission: -> action}

Anime un projet de création d'école pour enfants {~défavorisés|abandonnés|maltraités}.

-> action.endAction

== art ==

~ temp c = RANDOM(1,2)

{
  - c == 1: -> paint
  - c == 2: -> building
}

= paint

{paint: -> action}

Crée d'une oeuvre picturale révolutionnant le genre.

-> action.endAction

= building

{building: -> action}

Construit un immeuble en bois zéro carbonne.

-> action.endAction

== science ==

~ temp c = RANDOM(1,2)

{
  - c == 1: -> medical
  - c == 2: -> energy
}

= medical

{medical: -> action}

Invente une nouvelle manière de soigner les infections sans utiliser d'anti-biotique

-> action.endAction

= energy

{energy: -> action}

Conçoit une nouvelle manière de stocker l'energie qui permet de mieux utiliser les sources d'energies renouvelables.

-> action.endAction