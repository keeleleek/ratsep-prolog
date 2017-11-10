# Huno Rätsep's Estonian verb-governed clause patterns in Prolog

This is work in progress and a simple try-out to implement Huno Rätsep's (1978) work on verb-governed
glause patterns with logic programming in Prolog.

Rätsep, Huno. 1978. Eesti keele lihtlausete tüübid. Tallinn : Valgus. PDF can be found here http://dspace.utlib.ee/dspace/handle/10062/28159.

So far it is only for educational purposes.

More information in Estonian below.



# Huno Rätsepa Eesti keele lihtlausete tüübid Prologis
See väike töö püüab panna Huno Rätsepa (1978) verbikesksete lausemallide
kirjelduse arvutile kirja kasutades loogilist programmeerimist Prologis.

Rätsep, Huno. 1978. Eesti keele lihtlausete tüübid. Tallinn : Valgus. PDF saadaval siit http://dspace.utlib.ee/dspace/handle/10062/28159.


## Sissejuhatus

Teaduse üks eesmärkidest on vahest seista hiiglaste õlgadel. See töö on 
püüd ühe hiiglase õlal seista. Huno Rätsep ei tohi unarusse jääda.

Töö ei hõlma märkimisväärtki osa Rätsepa kirjeldusest. Loogiline programmandmebaas 
on püütud hoida võimalikult üks-ühele Rätsepa kirjaviisile. Töös kasutatud 
osised on valitud vajalikkuse põhjal -- kõik mida ei ole vaja, see on välja
jäetud. Seega on Rätsepa kirjeldus antud tööst palju suurem, komplekssem ja 
kindlasti ka holistlikum.


## Puudusi

Praegu opereeritakse otse sõnaliikide peal. Rätsep kasutab näitelausetes fraase (vähemalt omadussõnaga nimisõnafraase). Fraasistruktuuride juures tuleb silmas pidada Rätsepa käändeklasside lahendust, nt n(ngp).
Finiitverbide valentsiinformatsioon tuleb lisada, nt arvuline kongruents.


## Seletusi

Vormiklasside sümbolite nimetused (lk 40-42).

Käändevormid:
1. Substantiiv nominatiivis (N+nom)
2. Substantiiv pluurali nominatiivis (N+nom.+pl)
3. Substantiiv genitiivis (N+gen)
4. Substantiiv singulari nominatiivis või genitiivis või parti­tiivis või pluurali nominatiivis või pluurali partitiivis (sümboliga N+ngp)
5. Substantiiv nominatiivis või partitiivis (sümboliga N+np)
6. Substantiiv partitiivis (N+part)
7. Substantiiv illatiivis (N+ill)
8. Substantiiv inessiivis (N+in)
9. Substantiiv elatiivis (M+el)
10. Substantiiv allatiivis (N+all)
11. Substantiiv adessiivis (N+ad)
12. Substantiiv ablatiivis (N+abl)
13. Substantiiv essiivis (N+ess)
14. Substantiiv translatiivis (N+tr)
15. Substantiiv terminatiivis (N+term)
16. Substantiiv abessiivis (N+abess)
17. Substantiiv komitatiivis (N+kom)
18. Adjektiiv nominatiivis (A+nom)
19. Adjektiiv nominatiivis või genitiivis (A+ng)
20. Adjektiiv partitiivis (A+part)
21. Adjektiiv essiivis (A+ess)
22. Adjektiiv translatiivis (A+tr)
23. Numeraal translatiivis (Num+tr)

Verbivormid:
1. Verb da-infinitiivis (V+da)
2. Verb des-gerundiivis (V+des)
3. Verb ma-infinitiivi illatiivis (V+ma)
4. Verb ma-infinitiivi inessiivis (V+mas)
5. Verb ma-infinitiivi elatiivis (V+mast)
6. Verb ma-infinitiivi abessiivis (V+mata)
7. Verbi aktiivi preesensi partitsiip nominatiivis (V+v)
8. Verbi passiivi preesensi partitsiip nominatiivis (V+tav)
9. Verbi aktiivi preesensi partitsiip partitiivis (V+vat)
10. Verbi passiivi preesensi partitsiip partitiivis (V+tavat)
11. Verbi aktiivi preesensi partitsiip essiivis (V+vana)
12. Verbi aktiivi preesensi partitsiip translatiivis (V+vaks)
13. Verbi passiivi preesensi partitsiip translatiivis (V+tavaks)
14. Verbi aktiivi preteeritumi partitsiip nominatiivis (V+nud)
15. Verbi aktiivi preteeritumi partitsiip essiivis (V+nuna)
16. Verbi aktiivi preteeritumi partitsiip translatiivis (V+nuks)
17. Verbi passiivi preteeritumi partitsiip translatiivis (V-tuks)

Konjunktsioonide ühendid on esialgu välja jäetud (lk 42). Samuti on 
grammatiliste vormide klassid jäetud välja (lk 43).

