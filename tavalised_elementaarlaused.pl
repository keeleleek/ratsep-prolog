% A. TAVALISED ELEMENTAARLAUSED
% Tavaliste elementaarlausete hulka arvatakse niisugused mini­-
% maalsed verbikesksed lausemallid, kus keskne verbivorm (finiit-
% vorm) on lauses ainsaks verbivormiks, s. t. puuduvad sekundaar-­
% sed infiniitvormid, ja elementideks pole kõrvallauseid ega lausun­-
% geid. (lk 77).

%%% Nullkohalised elementaarlaused

%% 1. (lk 77)
s --> v_a_1.

v_a_1 --> v_müristama.
v_müristama --> [v_müristama].


%% 1.1. (lk 77)
s --> n(nom), v_a_1_1.
s -->         v_a_1_1.
v_a_1_1 --> v_hämarduma.
v_a_1_1 --> v_iiveldama.
v_a_1_1 --> v_müristama.
v_a_1_1 --> v_tuulama.
v_a_1_1 --> v_tõmbama.

v_hämarduma --> [v_hämarduma].
v_iiveldama --> [v_iiveldama].
v_müristama --> [v_müristama].
v_tuulama   --> [v_tuulama].
v_tõmbama   --> [v_tõmbama].


%% 1.2. (lk 77)
s -->         v_a_1_2.
s --> n(nom), v_a_1_2.
s --> n(nom), v_a_1_2, n(ngp).
s --> n(nom), v_a_1_2, n(ngp), a(tr).

v_a_1_2 --> v_kahutama.
v_a_1_2 --> v_külmetama.
v_a_1_2 --> v_sulatama.

v_kahutama  --> [v_kahutama].
v_külmetama --> [v_külmetama].
v_sulatama  --> [v_sulatama].


%% 1.3. (lk 77)
s -->        v_a_1_3.
s -->        v_a_1_3, n(part).
s --> n(di), v_a_1_3, n(part).

v_a_1_3 --> v_sadama.
v_a_1_3 --> v_tibama.
v_a_1_3 --> v_tuiskama.
v_a_1_3 --> v_udutama.

v_sadama   --> [v_sadama].
v_tibama   --> [v_tibama].
v_tuiskama --> [v_tuiskama].
v_udutama  --> [v_udutama].


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






%%% nimisõnafraaside struktuurid
%% praegu puuduvad fraasistruktuurid
%np(nom) --> a(nom), n(nom).
%np(nom) --> n(nom).

% 1. Substantiiv nominatiivis (N+nom)
n(nom)      --> ['_S_ sg n'];
                ['_S_ pl n'].
% 2. Substantiiv pluurali nominatiivis (N+nom.+pl)
n(nom,pl)   --> ['_S_ pl n'].
% 3. Substantiiv genitiivis (N+gen)
n(gen)      --> ['_S_ sg g'];
                ['_S_ pl g'].
% 4. Substantiiv singulari nominatiivis või genitiivis või parti­tiivis või pluurali nominatiivis või pluurali partitiivis (sümboliga N+ngp)
n(ngp)  --> n(nom);
            n(gen);
            n(part).
% 5. Substantiiv nominatiivis või partitiivis (sümboliga N+np)
n(np)   --> n(nom);
            n(part).
% 6. Substantiiv partitiivis (N+part)
n(part)     --> ['_S_ sg p'];
                ['_S_ pl p'].
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
% 18. Adjektiiv nominatiivis (A+nom)
a(nom)      --> ['_A_ sg n'];
                ['_A_ pl n'].
% 19. Adjektiiv nominatiivis või genitiivis (A+ng)
a(ng)       --> a(nom) ; a(gen).
% 20. Adjektiiv partitiivis (A+part)
a(part)     --> ['_A_ sg p'];
                ['_A_ pl p'].
% 21. Adjektiiv essiivis (A+ess)
a(ess)      --> ['_A_ sg ess'];
                ['_A_ pl ess'].
% 22. Adjektiiv translatiivis (A+tr)
a(tr)       --> ['_A_ sg tr'];
                ['_A_ pl tr'].
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




