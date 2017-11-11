% A. TAVALISED ELEMENTAARLAUSED
% Tavaliste elementaarlausete hulka arvatakse niisugused mini­-
% maalsed verbikesksed lausemallid, kus keskne verbivorm (finiit-
% vorm) on lauses ainsaks verbivormiks, s. t. puuduvad sekundaar-­
% sed infiniitvormid, ja elementideks pole kõrvallauseid ega lausun­-
% geid. (lk 77).

%%% Nullkohalised elementaarlaused

%% 1. (lk 77)
% V = Müristab.

s --> v_a_1(Arv).
v_a_1(Arv) --> v(Isik,Arv).


%% 1.1. (lk 77)
% V = hämarduma (Hämardub, Ruum hämardus ) . iiveldama (Iivel­dab, 
% Süda iiveldab), müristama (Müristab, Pikne müristab), tuu­lama (Tuulab, 
% Ilm tuulab), tõmbama (Tõmbab, Tuul tõmbab) jne.

s --> np(nom,Arv), v_a_1_1(Arv).
s -->              v_a_1_1(Arv).
v_a_1_1(Arv) --> v(Isik,Arv).


%% 1.2. (lk 77)
% V = kahutama (Kahutab, Öö külm kahutas tee) , külmetama (Kül­metab,
% Öö külmetab, Öö külmetab maa) , sulatama (Sulatab, Päike
% sulatab maa pehmeks).

s -->              v_a_1_2(Arv).
s --> np(nom,Arv), v_a_1_2(Arv).
s --> np(nom,Arv), v_a_1_2(Arv), np(ngp, SArv).
s --> np(nom,Arv), v_a_1_2(Arv), np(ngp, SArv), ap(tr, SArv).
v_a_1_2(Arv) --> v(Isik,Arv).

%% 1.3. (lk 77)
% V = sadama (Sadas, Sadas vihma, Mantlile sadas vihma), tibama (Tibab,
% Tibas vihma), tibutama (Tibutab külma vihma), tuis­kama (Tuiskab,
% Tuiskab lund), udutama (Udutab, Udutas vihma) jne.

s -->        v_a_1_3(AArv).
s -->        v_a_1_3(AArv), np(part, SArv).
s --> n(di), v_a_1_3(AArv), np(part, SArv).
v_a_1_3(Arv) --> v(Isik,Arv).


%%% Ühekohalised elementaarlaused (lk 78)
%% 2.0.
%% See on kõige rohkem verbe hõlmav elementaarlause ja siin
%% on ka rohkesti alltüüpe. Need alltüübid on jagatud kolme rühma:
%% fakultatiivse laiendita alltüüp (2.0), fakultatiivse objektiga all­
%% tüübid (2.1) ja ainult muude fakultatiivsete laienditega alltüübid (2.2).
s --> n(nom), v_a_2_0.

v_a_2_0 --> [aeguma]; [hukkuma]; [ilmuma]; [kestma]; [klõbisema];
  [kohisema]; [kumisema]; [lõbutsema]; [peatuma]; [pikutama]; [põrama];
  [pööritama]; [raksuma]; [seisma]; [surisema]; [teravnema]; [täituma];
  [täiustuma]; [vaikima]; [vananema]; [vasardama]; [veiklema]; [vinguma];
  [virvendama]; [vurlestuma]; [võbelema]; [võsuma]; [õitsema]; [äparduma].




%%% verbikategooriad
%% väga lihtsustatud
v(3,sg) --> ['_V_ b'].
v(3,pl) --> ['_V_ vad'].

%%% nimisõnafraaside struktuurid
%% praegu puuduvad fraasistruktuurid
%np(nom) --> a(nom), n(nom).
np(Kääne,Arv) --> n(Kääne,Arv).

% 1. Substantiiv nominatiivis (N+nom)
n(nom,sg)   --> ['_S_ sg n'].
% 2. Substantiiv pluurali nominatiivis (N+nom.+pl)
n(nom,pl)   --> ['_S_ pl n'].
% 3. Substantiiv genitiivis (N+gen)
n(gen,sg)      --> ['_S_ sg g'].
n(gen,pl)      --> ['_S_ pl g'].
% 4. Substantiiv singulari nominatiivis või genitiivis või parti­tiivis või pluurali nominatiivis või pluurali partitiivis (sümboliga N+ngp)
np(ngp,Arv)  --> n(nom,Arv);
                 n(gen,Arv);
                 n(part,Arv).
% 5. Substantiiv nominatiivis või partitiivis (sümboliga N+np)
np(np,Arv)   --> n(nom,Arv);
                 n(part,Arv).
% 6. Substantiiv partitiivis (N+part)
n(part,sg)     --> ['_S_ sg p'].
n(part,pl)     --> ['_S_ pl p'].
% 7. Substantiiv illatiivis (N+ill)
n(ill)      --> ['_S_ sg ill'];
                ['_S_ pl ill'].
% 8. Substantiiv inessiivis (N+in)
n(in)       --> ['_S_ sg in'];
                ['_S_ pl in'].
% 9. Substantiiv elatiivis (M+el)
n(el)       --> ['_S_ sg el'];
                ['_S_ pl el'].
% 10. Substantiiv allatiivis (N+all)
n(all)      --> ['_S_ sg all'];
                ['_S_ pl all'].
% 11. Substantiiv adessiivis (N+ad)
n(ad)       --> ['_S_ sg ad'];
                ['_S_ pl ad'].
% 12. Substantiiv ablatiivis (N+abl)
n(abl)      --> ['_S_ sg abl'];
                ['_S_ pl abl'].
% 13. Substantiiv essiivis (N+ess)
n(ess)      --> ['_S_ sg ess'];
                ['_S_ pl ess'].
% 14. Substantiiv translatiivis (N+tr)
n(tr)       --> ['_S_ sg tr'];
                ['_S_ pl tr'].
% 15. Substantiiv terminatiivis (N+term)
n(term)     --> ['_S_ sg ter'];
                ['_S_ pl ter'].
% 16. Substantiiv abessiivis (N+abess)
n(abess)    --> ['_S_ sg ab'];
                ['_S_ pl ab'].
% 17. Substantiiv komitatiivis (N+kom)
n(kom)      --> ['_S_ sg kom'];
                ['_S_ pl kom'].

ap(Kääne,Arv) --> a(Kääne,Arv).
% 18. Adjektiiv nominatiivis (A+nom)
a(nom,sg)      --> ['_A_ sg n'].
a(nom,pl)      --> ['_A_ pl n'].
% 19. Adjektiiv nominatiivis või genitiivis (A+ng)
a(ng,Arv)       --> a(nom,Arv) ; a(gen,Arv).
% 20. Adjektiiv partitiivis (A+part)
a(part,sg)     --> ['_A_ sg p'].
a(part,pl)     --> ['_A_ pl p'].
% 21. Adjektiiv essiivis (A+ess)
a(ess,sg)      --> ['_A_ sg ess'].
a(ess,pl)      --> ['_A_ pl ess'].
% 22. Adjektiiv translatiivis (A+tr)
a(tr,sg)       --> ['_A_ sg tr'].
a(tr,pl)       --> ['_A_ pl tr'].
% 23. Numeraal translatiivis (Num+tr)


% Intralokaalne direktsionaal (sümboliga Di). Sel­lel substitutsiooniklassil 
% on relevantseks tähenduseks kuhu-suund, s.t. substitutsiooniklassi liikmed 
% osutavad kohta, kuhu mingist tegevusest osavõttev objekt on suunatud, 
% mille poole ta suundub. (lk 45).

n(di) --> [siia] ; [sinna].
% n(ill); n(all); n(gen) alla; n(gen) asemele; allapoole n(part); 
% n(gen) ette; ettepoole n(part); n(gen,pl) hulka; n(gen) juurde; 
% keset n(part); kesk n(part); n(gen) keskele; n(gen) kohale; 
% n(gen) kõrvale; n(gen) külge; n(gen) ligi; n(gen) ligidale; 
% n(gen) lähedale; n(gen) manu; n(gen) najale; n(gen) otsa; 
% n(gen) peale; pealepoole n(part); n(gen) poole; n(gen,pl) sekka; 
% n(gen) sisse; sissepoole n(part); n(gen) taha; tahapoole n(part); 
% teispoole n(part); n(gen,pl) vahele; n(gen) ja n(gen) vahele; 
% n(gen) vastu; vastu n(part); n(part) vastu; väljapoole n(part); 
% n(gen) äärde; üle n(gen); n(gen) üle; n(gen) ümber; ümber n(gen).




