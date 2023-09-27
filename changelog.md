Voici la liste des changements par rapport aux différentes remarques sur le manuscrit :

# Major Remarks and Questions

> The introduction could be a little clearer in describing the contributions and providing a global picture.
> In particular, in Section 1.2 it is not clear which of the cited papers are the candidate's and which are related work.

Section 1.2, page 7-8 : Ajout des références des articles sur RLS, ajout de la précision "travaux de la littérature" pour les autres travaux cités.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/f5c92768783a55759d98b7030b254d64277d42ac


> Chapter 2, albeit very interesting contains some unclear sections (see details in the appendix).
> But what I found most disturbing is that the discussion about it Figure 2.28 states that metadata represents 99% of the storage space after some time, but it seems to me that this is the case even after less than 10 operations.
> Is the plot correct?

Section 2.4.5, page 62 : Reformulation de la présentation de la figure pour expliciter le fait que les mesures sont effectuées toutes les 10k modifications.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/637978fdceb62f4c4fb911e8ce5d291a3b726c29
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/11bd1acc580dee82860ed01e5788c3dacb5d7c10

> Chapter 3 contains the main contribution.
> Here I regretted the fact that the algorithms come with informal justifications and with an empirical evaluation but with no proofs.
> I understand that in the context of systems research, proofs are not very common, but I have the impression that the description of the algorithms in this thesis would benefit from the presence of a clear specification and proof.
> I also found it unfortunate that there is no evaluation of the several optimizations and improvements proposed in Section 3.5, which remain mostly ideas for future work.

Pas de modifs.

> Second, I found the pseudocode particularly hard to read and not sufficiently discussed in the text.
> This may be because I am not an expert in CRDTs, but for example, it took me a while to understand that the variable $pos$ in Algorithm 2 is element $pos$ of the first tuple in the identifier $firstId$.
> A notation like firstId.pos would have been much easier to understand.

Section 3.1.2, page 74 : Ajout d'une explicitation du formalisme du pseudo-code en note de bas de page.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/4edbe2e93870006fcde55047fd78132b7b96fa1a


> Similarly, it took me a while to understand why the offset of the tuple generated at line 20 of Algorithm 2 is $i$, the index of $id_i$.
> I would appreciate seeing a clearer explanation of the algorithm since the Ph.D. thesis does not have a page limit like a published paper.

Section 3.1.2, page 74 à 77 : Refonte de la section pour développer les deux cas présentés, i.e. renommage d'un identifiant inséré en concurrence de l'opération rename et renommage d'un identifiant appartenant à l'ancien état.
Explicite pour ce second cas la relation entre l'index de l'identifiant dans l'ancien état et l'offset de l'identifiant correspondant.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/4edbe2e93870006fcde55047fd78132b7b96fa1a
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/bf29075d26c307eead5f015ad0a1b02ba3ba7863
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/e9c95f99d0e136d7fd0cde3c2a312a7c7db8f794

> I also found section 3.2.3 particularly hard to read.
> I suggest referring directly to examples from the figures when describing the bullet points on page 79 and the management of cases that follows.
> I only understood those clearly when I got to the examples at the end of the section.
> Like before the pseudo-code and the description of the algorithm require some effort to follow. > A clearer although possibly more verbose explanation would have been helpful

Section 3.2.3, pages 82 à 88 : Refonte de la section pour mieux faire apparaitre et détailler chacun des 3 cas gérés par l'algorithme.
Notamment, développe l'explication de l'algorithme pour annuler l'effet du renommage sur un identifiant généré causalement après l'opération rename.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/54abbb4f095068bc37cbf103388ac826796ad23a
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/8cc201f634f1b3ce2fded1327349a65d81fd9928
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/475e36f5a7b29c1182d51afaa02b9e9520378a9a
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/bca2caf10c5c82f333035bf2bc583d1ab9d4838c
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/61a0fc04c768a373d8111ad985095b0790058326
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/ad17541496a5db59ab8db4a2d9d6f144accc0623
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/967a77a5e0bf9cfce99a68cf9aad75a1d2ea0035
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/78702960ae934d8fe7a29b841f8b84abc586125a

> Some descriptions could also be improved by restructuring the text, for example, the last paragraph of Section 3.3 states that the detection of causally stable epochs relies on the use of a group-membership protocol.
> It would have been better to state this requirement up front.
> Moreover, I could not help wondering about the impact of the membership protocol on the example in Figure 3.11.

Section 3.3, page 89 : Mentionne plutôt que les noeuds doivent connaitre la liste des pairs et suivrent leur progression.
Explicite les structures de données correspondantes.
Suppression des références à SWIM : on a besoin de connaitre la liste des pairs, pas leur statut.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/637cac2a16365a2ec6c8368edc69f9fb7a55f8df
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/0c0e8ef79bcd8598e4f88a2d06d088efb37b16f2

> Regarding Section 3.5, I appreciated the analysis of best and worst cases for memory consumption.
> Yet, I wonder if it wouldn't be possible and better to evaluate the actual ability of nodes to detect causally stable operations.

Suppose qu'il s'agit plutôt de la section 3.4.
Section 3.4, page 99 : Mentionne que la stabilité causale ne progresse plus dès qu'un pair est absent.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/a91e88642f2b4624b75cb5806b2e4dad66e5fe0c

> Also, I was expecting Section 3.5 to evaluate the gain in storage space employed for metadata with respect to what was shown in Figure 2.28

Suppose qu'il s'agit toujours de la section 3.4
Section 3.4, page 99 : Explicite que nos mesures montrent que le renommage divise par 100 le surcoût en métadonnées de la séquence répliquée.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/90965eb51a6876234c3a777b58455a96b72b8431

> Finally, it would have been nice to have an empirical evaluation of the design choices and improvements presented in Chapter 4.

Pas de modifs.

# APPENDIX: Minor Comments and typos.

> page 13: Definition 10: need citation.

Section 2.1, page 13 : Remplace convergence à terme par cohérence à terme. Ajout de la référence correspondante [14] (Bayou).

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/177d724331b7a40ab1172fa6096571435dccba62

> page 15: you should explain why you assume that a read is invoked after each add or remove.

Section 2.2, page 15 : Précise que c'est pour le modèle de cohérence en note de bas de page.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/f38e9a79c5a310bb1e018dc4527d20d8150b7c0e

> page 23: is [44] a good citation in this context?

Section 2.2.2, page 23 : Ajout de la référence [47] (Causal Memory).

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/2cc1f49e6bbde81d04e7b6081c03c90ea18f16a7

> page 24: what is a Pure CRDT (synchronized by operation) [41]?
> This part is unclear, first, you say you need two functions but then you say you can omit the first, but it's not clear when.

Section 2.2.2, page 24 : Reformulation pour rendre plus limpide l'explication.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/5ecc04c988461a82e2b8cfd31998a70ff07bd0e1

> Page 26: what is a " mécanisme d’instantané"? is it a snapshot? A citation is needed here.

Section 2.2.2, page 26 : Ajout référence [59] (Database Snapshots).

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/c376882b12541be865026a97bd892fd60067ca2b

> Page 26: "Cependant, ce patron repose sur l’hypothèse d’une livraison causale des opérations et n’est donc pas optimal." Clarify what you mean by this.

Section 2.2.2, page 26 : Explicitation que la livraison causale n'est pas forcément nécessaire pour la convergence, et qu'elle a un coût.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/98305c42314d3926e95deed685df91bc855ed9ca

> page 27: unclear how delta is a state. A difference between states is not a state as far as I can tell

Section 2.2.2, page 27 : Ajout d'un exemple de delta.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/09d9645ae3ae2786d7f4d66ce8238dd8ed7ffefa

> page 28: "convergence forte": recall the definition (Def. 15)

Section 2.2.2, page 29 : Ajout d'un cf. vers la définition 15.

> page 28: I do not understand this statement: le couple ⟨etats du CRDT,couche livraison⟩ qui forme un sup-demi-treillis dans le cadre de ce modèle de synchronisation.
> What does it mean for a bcast protocol to be part of a lattice?

Section 2.2.2, page 29 : Précision qu'il s'agit des états de la couche livraison, et non le protocole.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/ba42fbf6feeb63b9f8d7c67b38c13c6a616189b5

> page 33: the text after Def. 23 is unclear. You should say clearly why causal delivery does not scale.

Section 2.3, page 33 : Explicitation du surcoût de la livraison causale (vecteurs de version/calculs des dépendances causales).

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/732b260c8cafdffe2f555635f954b9c6a3bf947b

> page 50: the text mentions the concept of "dot" but this is never defined before Chapter 4.

Section 2.3.3, page 51 : Suppression de la mention de dot. Parle plutôt de "couple de taille fixe <nodeId, nodeSeq>.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/a546c258f4920ec1bfa2d6d24dfcd19128148120

> Section 2.4.5 should be made clearer.

Section 2.4.5, page 62 : Suppose que cette remarque fait référence à la remarque concernant la figure 2.28 adressée plus tôt.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/637978fdceb62f4c4fb911e8ce5d291a3b726c29
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/11bd1acc580dee82860ed01e5788c3dacb5d7c10

> The synthesis in Section 2.6 ignores refs [82] and [83] (LSEQ).

Section 2.6, page 66 : Refonte de la synthèse pour mener à la conclusion qu' "aucune approche existante ne paraît viable dans le cadre de systèmes P2P dynamiques à large échelle pour limiter le surcoût des CRDTs pour le type Séquence à granularité variable et pour limiter son impact croissant sur les performances". Pour cela, rappelle l'état de l'art (LogootSplit, LSEQ, Core-nebula) et les limites de ces approches.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/72cb66649e23da5311c2e6efd8e1847a93945398

> It is unclear to say that the dataset is generated by simulation, say that it is a simulated execution maybe.

Section 3.4.2, page 96 : J'ai pas trop compris exactement la nuance ici. J'ai reformulé en espérant que ça soit plus clair.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/f9fa3508734ca0eaff187ce48a4ba218eb1c13cf

> The distinction between local and remote operations is unclear in figure 3.13 and its description in the text.
> What is taken in into account in distant operations? Is dissemination to other nodes included?
> Or are distant operations those that have been issued by other nodes?

Section 3.4.1, page 92 et section 3.4.3, page 100 :
Précise que "Nous désignons par intégration de l’opération locale le processus d’application d’une
modification issue du noeud lui-même sur son état courant, e.g. l’insertion d’un nouvel
élément à partir de son index et l’allocation de l’identifiant de position correspondant, et de
génération de l’opération correspondante. L’intégration de l’opération distante correspond
quant à elle au processus d’application d’une opération provenant d’un autre noeud, e.g.
l’insertion d’un nouvel élément à partir de son identifiant de position.".
Y fait référence lors des benchmarks correspondants.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/4f7a91567655d43637af6c04e868bd9c2117b741
- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/566aadd25c76081eb0ab3afed371862a9155af81

> It is not clear where rename operations take place in Figure 3.13. Is it after 30k operations?
> This is never stated clearly.

Section 3.4.3, pages 98 et 100 : Précise que les barres grises représentent quand les opérations rename ont lieu.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/027ca40e2749f5f56a6c33f955ece6c6ff265016

> The last sentence that starts on page 95 appears out of place.
> It repeats what was already said without adding any content.

Section 3.4.3, page 102 : La première phrase indique que l'opération introduit une époque soeur de l'époque courante. La seconde phrase précise l'ordre entre cette nouvelle époque et l'époque courante d'après la relation priority. Je ne vois pas comment reformuler de façon plus limpide.

> I am not sure I understand the suggestion outlined in 4.3.1 of adding a meta-CRDT that controls the integration of additional CRDTs into a given shared document.
> How would these multiple CRDTs and the meta CRDT be visible to the user?

Section 4.3.1, page 102 : Ajout d'une référence à Dropbox Paper pour illustrer ce que j'avais en tête.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/00d7cce0c0ff9e47681ce8188baa095d21ff64c3

> The use of the term state "etat" in the description of the anti-entropy mechanism generates confusion.
> First I understood the mechanism had the objective to discover new nodes and update node-membership lists, then the mention of state suggested that it is also used to synchronize the state of the shared document, but the last sentences confirmed my first interpretation

Section 4.3.2, page 130 : Ajout précision qu'ici "état" fait référence à la liste des collaborateurs.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/8e431ee5b4ab0da883fecb16e185e51a0f5414be

> The Synthesis of Section 4.3.2 mentions a mechanism whose spatial complexity is O(n), but the section makes no mention of spatial complexity.
> The only other mention of spatial complexity refers to the epoch-based delivery mechanism discussed in Section 4.4.3.

Section 4.3.2, page 130 : Ajoute cf. vers la modification décrite précédemment, concernant l'ordre de précédence, pour réduire la complexité spatiale de SWIM

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/323d4cc74c1a651357701b04bdeab563cb7d11d5

> Regarding the delivery layer, I understood it implements the same guarantees for both protocols but the original version of LogootSplit does not have the same requirements.
> Did you use the same delivery layer for both protocols? Does this have an impact on the results?

Section 4.4, page 131 : Précise qu'on a implémenté un module de livraison pour chaque CRDT et qu'on décrit dans le manuscrit celui de RLS.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/896f2f3b49eb529569f980fa593620e40ef5a839

> 4.4.1 Mentions the possibility of removing FIFO delivery by replacing the version vector with an internal version vector recording data for intervals (check).
> Would this lead to any advantage for MUTE?

Section 4.4.1, page 134 : Le paragraphe précédent indique que la livraison FIFO peut introduire des dépendances, et donc des délais, superflues entre opérations. Explicite qu'une livraison dans le désordre n'introduirait pas ces dépendances superflues.

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/06452943eb5228aa2d02e4c1445ba85e51c19baf

# Typos

- https://github.com/MatthieuNICOLAS/thesis-manuscript/commit/d64ec7563221d3601cc9b35dedbc07b10dd401a0
