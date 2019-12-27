VAR f = true
VAR money = 0
VAR assistant = "Arthur"
-> restart

=== start ===

{not choixfait: Vous vous réveillez. Gueule de bois. Fait la fête hier, mais pourquoi ???}

  * \ {U|Peut-être u}n anniversaire ?[] Mais de qui déjà ? je n'arrive pas à m'en souvenir.
  * Une peine de coeur{| alors} ?[] Non, ça fait des mois que je suis célibataire.
  * ->
    … # wait: 1s
    … # wait: 1s
    Ça y est je me souviens, je me suis fait{f:e} licencier ! 
    -> licencie
    

- (choixfait) {Non, ce n'est pas ça…|C'est pas ça non plus, allez Camille, réfléchi…} -> start

=== restart ===

Un bruit très désagréable vous réveille en sursaut. Vous avez la bouche pâteuse et mal à la tête.
Vous avez visiblement fait la fête hier soir.

* [Quel est ce bruit ?]
  Vous : « Arthur, tu peux me dire pourquoi tu me réveilles si tôt ? »

- Arthur : « Vous ne vous en souvenez pas ? »

Vous détestez cet assistant vocal. C'est pourtant vous qui avait choisi sa personnalité
<> un soir ou vous n'aviez rien d'autre à faire
<> et vous n'avez jamais pris le temps de la changer. Mais seriez vous encore 
<> capable de le faire ?

Vous : « Arthur, s'il te plait… »

Arthur : « Vous avez rendez-vous avec Madame XXX pour un entretien d'embauche »
<> dit-il avec une voix que je prendrais presque pour de la défiance.

En effet, vous vous souvenez, le rendez-vous est dans 35 minutes
<> il faut vraiment vous dépêcher, en plus il parait
<> que ce job est parfait pour vous.

* Vous partez {|donc} au rendez-vous[.] pour rencontrer Madame XXX. 
  <> On verra bien ce qu'elle vous propose.
  -> chasseur_tete

=== licencie === 

Ah oui quand même

-> chasseur_tete

=== chasseur_tete ===

Vous arrivez juste quelques minutes en avance au point de rendez-vous prévu, dans un café juste à coté
de XXX. Elle est déjà là, à vous attendre. Elle parait impatiente, un mauvais point pour vous.

* Vous vous présentez[.] : 
  Vous : « Bonjour, je suis Camille et je viens pour ... », vous n'avez pas le temps de finir.
  Elle : « Bonjour Camille, je vous attendais ! »
  Elle : « Je vais aller droit au but, ce que je vais vous proposer est  
  <> un métier peu contraignant mais avec un très bon salaire. »
  ** « Continuez ? »[], lui demandais vous curieu{f:se}{not f:x}.
     Elle : « C'est simple, vous recevrez des instructions concernant une personne à guider
     <> d'un point A à un point B, et ceci trois fois par jour.
     <> En échange vous recevrez 200 euros chaque jours. »
     *** [« Par jours ? »] vous demandez abasourdi{f:e}: « 200 euros par jours ? ».
       Elle : « Par jour ! », répond t'elle du tac au tac. 
       Elle : « Facile non ? » dit-elle avec un regard un peu amusé.
       -> questions
       
= questions

Vous avez {des|d'autres} questions ?

* Vraiment ? 200 euros par jours ?[] Juste pour faire ça ? Ça doit être dangereux non ?
  Elle : « Parfois oui, mais nous avons une politique sévère de sélection de vos passagers. »
  ** « Comment ça : oui ? »
     Elle : « Non mais rassurez vous ! Je plaisantais. »
  ** « Ah tant mieux[ ! »] ça me rassure ! »

* C'est quoi le nom de votre société déjà ?
  Elle : « NomXXX, vous connaissiez ? »
  Vous : « Non jamais entendu parlé. » 
  ** « Vous faites quoi exactement ? »
     Elle : « Du transport de personne. » dit-elle comme une évidence.
  ** « Vous existez depuis longtemps ? »
     Elle : « Nous sommes une jeune startup, cela faite à peine 6 mois. »

* Attendez, vous me connaissez à peine[…], vous me demandez pas qui je suis ?
  Elle : « Nous savons qui vous êtes ! Nous avons demandé les information à votre assistant vocal »

* Qui sont les gens que je dois transporter ? 
  Elle : « Vous reconnaitrez sans doute quelques personnalités, mais en général ce
  <> sont des gens que vous ne connaitrez pas. »

* [Très bien j'accepte.] -> chaque_jours

// Vous avez un mois d'essais
- -> questions

=== chaque_jours ===

Ce matin vous vous lèvez et vous regardez votre portable. Vous avez un nouveau message. On vous 
<> demande de {~sortir la poubelle|acheter une bière dans le bar d'à coté|aller parler au vieux d'en face}.

+ Vous faites ce que l'on vous demande. -> 200euros
+ Vous retournez vous coucher. -> pascontent

= 200euros

~ money = money + 200
À la fin de la journée vous {firstday:re}trouvez {not firstday:bien}{firstday:vos} 200 euros glissés sous la porte.

+ (firstday) Vous retournez vous coucher. -> chaque_jours

= pascontent

Le lendemain matin vous êtes réveillé{f:e} par des coup fort congnés contre la porte de votre appartement.
Quand vous allez ouvrir, deux personnes vous attendent.
Engueulade puis on vous vire.
Décidément n'allez pas gagner votre vie comme cela. # class: bad

-> END

=== arthur ===

Que veux-tu camille ?

+ Discuter avec toi
  C'est fait.
+ J'ai peur
  Je te rassure.
+ Te demander un service
  Je te l'accorde.
+ Rien de plus merci
  ->->

- -> arthur
