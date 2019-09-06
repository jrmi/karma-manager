VAR f = true
VAR money = 0
-> start

=== start ===

{not choixfait: Je me réveille. Gueule de bois. Fait la fête hier, mais pourquoi ???}

  * \ {U|Peut-être u}n anniversaire ?[] Mais de qui déjà ? je n'arrive pas à m'en souvenir.
  * Une peine de coeur{| alors} ?[] Non, ça fait des mois que je suis célibataire.
  * ->
    … # wait: 1s
    … # wait: 1s
    Ça y est je me souviens, je me suis fait{f:e} licencier ! 
    -> licencie
    

- (choixfait) {Non, ce n'est pas ça…|C'est pas ça non plus, allez Camille, réfléchi…} -> start

=== licencie ===

C'était il y a trois mois. Licenciement économique. Comment est-ce possible 
<> pour un équivalent de Facebook ?
On me propose un suivi pour retrouver un job. Je dois aller à ce rendez-vous, 
<> car tous mes anciens collègues ont du mal à trouver.

* Je vais au rendez-vous[.] avec le chasseur de tête. 
  <> On verra bien ce qu'il me dit. -> chasseur_tete

=== chasseur_tete ===

J'arrive un peu en avance au point de rendez-vous dans un café. 
Il est déjà là à m'attendre. Il parait impatient.

* Je me présente[.] : « Bonjour, je suis Camille et je viens pour ... », je n'ai pas le temps de finir.
  « Bonjour Camille, je vous attendais ! »
  « Je viens juste de recevoir une proposition parfaite pour vous. 
  <> Un métier très peu contraignant mais avec un très bon salaire. »
  ** « Continuez ? »[], lui demandais-je curieu{f:se}{not f:x}.
     « C'est simple, vous devez donner 5 minutes de votre temps chaque jour à la société
     <> <nom_de_société>, et en échange vous gagnez 500 euros. »
     *** [« Par jours ? »] Je demande abasourdi{f:e}: « 500 euros par jours ? ».
       « Par jour ! », répond-il du tac au tac. 
       « Facile non ? » dit-il avec un regard un peu amusé.
       **** [« Très bien j'accepte. »] -> chaque_jours

// Vous avez un mois d'essais
- -> DONE

=== chaque_jours ===

Ce matin je me lève et je regarde mon portable. J'ai un nouveau message. On me 
<> demande de {~sortir la poubelle|acheter une bière dans le bar d'à coté|aller parler au vieux d'en face}.

+ Je fais ce que l'on me demande. -> 500euros
+ Je retourne me coucher. -> pascontent

= 500euros

~ money = money + 500
À la fin de la journée je {firstday:re}trouve {not firstday:bien}{firstday:mes} 500 euros glissés sous la porte.

+ (firstday) Je retourne me coucher. -> chaque_jours

= pascontent

Le lendemain matin je suis réveillé{f:e} par des coup fort congnés contre ma porte.
Quand je vais ouvrir, deux personnes m'attendent.
Engueulade puis on me vire.
Décidément je ne vais pas gagner ma vie comme ça. # class: bad

-> END
