## Stromy

!!! Theorem "Teorie"

    - Definujte strom. (1b)
    - Formulujte vetu o existenci listu a dokážte. (3b)
    - Formulujte vetu o trhani listu a dokážte. (3b)
    - Formulujte nejakou ekvivalentni definíci stromu a dokážte, že táto ekvivalence platí. (3b)

---

## BFS

!!! Theorem "Teorie"

    - Napište algoritmus BFS buď podrobně slovně nebo komentovaným pseudokódem a popište co znamenají používaná pomocná pole P a D. (3b)
    - Dokažte správnost algoritmu BFS, že BFS uzavře jen dosažitelné vrcholy ze startovního vrcholu s. (2b)

<a id="implication-bfs.1"></a>

!!! Implication "Úloha - Jones a Obluda"

    ### Úloha - Jones a Obluda {#implication-bfs.1}
    Na vstupu matice, kde jednotlivé pole reprezentovaly volný prostor nebo stěnu. V bludišti je Indiana Jones a obluda. Indiana se pohybuje každé kolo jen o jedno políčko (nemusí se ale pohybovat vůbec). Obluda se pohybuje o dvě políčka, pohybuje se ale deterministicky. Vždy se pokusí zmenšit svoji vzdálenost od Indiany (buď zmenšit souřadnici x a nebo y, s tím, že prioritně zmenšuje X). V momentě, co se obluda žádným krokem nemůže přiblížit, nehýbe se (mezi Indianou a obludou je stěna). Úkolem je vymyslet algoritmus, který nalezne nejraktší sled ze Startu do cíle bez setkání se s obludou (5b)
    
    ??? Proof "řešení"
        
        Jelikož je obluda deterministická, můžeme si vytvořit graf, kde každý vrchol bude reprezentovat pozici Jonese a obludy. Hrany budou reprezentovat pohyb Jonese. Následně můžeme použít BFS, kde v každém kroku zjistíme, zda se obluda může přiblížit Jonese. Pokud ano, tak daný vrchol ignorujeme. Pokud ne, tak se pohybujeme dál. Pokud se dostaneme do cíle, tak jsme našli nejkratší cestu. 
        > (AI Written - not reviewed)

<a id="implication-bfs.2"></a>
!!! Implication "Úloha - Tajný agent"

    ### Úloha - Tajný agent {#implication-bfs.2}
    Máme tajnou operaci, tajný agent má dopadnout na přesně stanovený dům a přejít do jiného domu buď skákáním po střechách nebo chozením přes sklep. Změna toho jestli jde po střeše nebo přes sklep může nastat v každém domě ale stojí to agenta více času (a může být odhalen), proto počet změn chceme minimalizovat. Uvažujeme, že z jednoho domu do druhého může jít pouze jedním typem hrany (tedy ne střechou i sklepem). Hrany jsou tedy označeny např. pomocí roof (střecha) nebo base (sklep). Najděte co nejkratší cestu ze začínajícího domu s do domu d tak, aby algoritmus počítal počet změn roof/base, tzn. kolikrát agent musel přejít přes dům a toto číslo minimalizoval. Chceme také aby šlo o nejkratší z možných takových cest. Složitost algoritmu by měla být O(|V|+|E|). Za O(|V|²) max 2b.
    
    Nápověda: můžete například vhodně modifikovat algoritmus BFS (nebo upravit vhodně graf). (5b)

    ??? Proof "Náznak řešení" 
        > ( Možná správně, feel free to correct )

        - Vytvoříme graf, kde každý vrchol bude reprezentovat stav agenta (pozice, zda je na střeše nebo v suterénu). Hrany budou reprezentovat pohyb agenta mezi domy a přechodové hrany mezi střechou a suterénem.
        - Úprava BFS na dvě fronty, kde jedna značí pohyb v dané hladině a druhá značí přechod mezi střechou a suterénem.
            - Pokud první frontu vyčerpáme, incrementujeme počet přechodů a přesypeme druhou frontu do první.
        - Ukončíme pokud jsme v cílovém domě (buď v suterénu nebo na střeše).

---

## Topologické uspořádání

!!! Theorem "Teorie"

    - Definujte topologické uspořádání vrcholů orientovaného grafu. 1 bod
    - Formulujte a dokažte Větu o existenci zdroje orientovaného grafu. — 3 body
    - Slovně či komentovaným pseudokódem popište algoritmus TopSort včetně používaných datových struktur, případně nejdůležitější části popište pseudokódem. 3 body
    - Dokažte jeho správnost, tedy že v konečném čase vydá požadovaný výsledek. 3 body


<a id="implication-topo.1"></a>

!!! Theorem "Úloha - Antická civilizace"

    ### Úloha - Antická civilizace {#implication-topo.1}
    - Máme k dispozici stránku ze slovníku antické civilizace - používají podmnožinu naší abecedy {A, B, …, Z}, ale v jiném pořadí. Víme, že slova na této stránce jsou v lexikografickém uspořádání.
    - Navrhněte algoritmus, který z posloupnosti slov (s_1, s_2, …, s_k) sestaví uspořádání jednotlivých použitých znaků. 
    - Algoritmus také musí detekovat případy, kdy je uspořádání z dostupných slov nejednoznačné, nebo kdy slova nedodržují lexikografické uspořádání. 
    - Dokažte korektnost tohoto algoritmu, časovou a paměťovou složitost vztaženou k hodnotám k (počet slov) a n (suma délek slov). (5b)

## Haldy

<a id="theorem-bin_heap"></a>

!!! Theorem "Binární halda"

    ### Binární halda {#theorem-bin_heap}
    - Definujte binární haldu (1 bod)
    - Popište operace HeapInsert a HeapExtractmin a dokažte jejich časovou složitost (5 bodů)
    - Popište HeapBuild (2 body)
    - Dokažte časovou složitost HeapBuild (3 body)

<a id="theorem-binomial_heap"></a>

!!! Theorem "Binomiální halda"

    ### Binomiální halda {#theorem-binomial_heap}

    - Definujte binomiální strom řádu k. (1b)
    - Ukažte, kolik má binomiální strom řádu k vrcholů, jaká je jeho hloubka a jaký je stupeň kořene. (3b)
    - Popište operaci BHMerge(), dokažte její korektnost a časovou složitost. (4b)
    - Popište operaci BHExtractMin(), dokažte její časovou složitost (2b)

---

## Rozděl a panuj

### MergeSort

!!! Theorem "MergeSort"

    - Podrobně slovně i pseudokódem popište algoritmus MergeSort. 
    - Zdůvodněte jeho správnost a odvoďdte jeho časovou a paměťovou složitost.

<a id="implication-merge.1"></a>
!!! Implication "Úloha - Vzácné prvky"

    ### Úloha - Vzácné prvky {#implication-merge.1}
    - Dostali jsme nádobu plnou kuliček — označme jejich počet M. Všechny kuličky jsou podle tvaru, váhy, chuti, vůně i dalších, lidskými smysly testovatelných vlastností nerozlišitelné jedna od druhé. Kuličky mají ve svém jádru uzavřený jeden atom vzácného prvku. Máme k dispozici zařízení, které, pokud na vstup dostane dvě kuličky, svítí červeně (v případě, že jsou v jádrech testovaných kuliček různé atomy vzácných prvků) a nebo zeleně (jsou-li v jádrech testovaných kuliček shodné atomy vzácných prvků). 
    - Vaším úkolem je navrhnout algoritmus, který zjistí, zda existuje vzácný prvek, který je obsažen ve striktně více než N/2 kuličkách. Váš algoritmus musí pracovat v čase o(N?). Algoritmus podrobně slovně popište, případně nejdůležitější části zapište v pseudokddu. Zdůvodněte správnost vašeho algoritmu. Odvoďdte časovou a paměťovou složitost. vašeho řešení. e Nápověda: Vhodně modifikujte algoritmus MergeSort.
    ??? Proof "Náznak řešení"
        - Upravení MergeSortu tak, aby vracel jen buď kandidáta na vzácný prvek, nebo Fail indikátor. Pokud spojuji:
            1. Prvek a prvek -> Pokud jsou stejné, tak vracím prvek, pokud ne, tak Fail
            2. Prvek a Fail -> Potřeba spočítat počet prvků, které jsou stejné jako prvek v patřičné části pole
            3. Fail a Fail -> Fail

### QuickSelect

!!! Theorem "Teorie"

    - Napište pseudokód algoritmu QuickSelect a popište ho.
    - Dokažte složitost algoritmu v nejhorším případě.
    - Dokažte složitost algoritmu v případě, že jako pivota volíme pokaždé skoromedián.
    - Ukažte a důkladně dokažte složitost algoritmu ve střední hodnotě s náhodnou volbou pivota.

### Karatsubovo násobení

!!! Theorem "Teorie"

- Popište Karatsubovo násobení

---


---

## Minimální kostry

!!! Theorem "Teorie"

    - Definujte kostru, problém hledání minimální kostry a Kruskalův algoritmus (není potřeba popisovat vylepšovací struktury jen hlavní myšlenku) ( 2 body)
    - Popište lemma o řezech a dokažte ho. (3 body)
    - Definice Elementárního řezu
    - Jarníkův algoritmus
    - Definujte strukturu Union-Find s keříkovou implementací (2b)
    - Dokažte, že časové složitosti Union a Find jsou O(log n) (3b)

<a id="implication-mst.1"></a>
!!! Implication "Úloha - Města a arény (5b)"

    ### Úloha - Města a arény {#implication-mst.1}
    - Úkol na úpravu Kruskala - Máme dané ceny silnic mezi různými městy a ceny arén. Můžeme v libovolném městě postavit arénu popřípadě spojit dvě města cestou. Jak nejlevněji zařídit, aby se z každého města lidé dostali do arény? Můžou nastat extrémní případy:
        - V každém městě zvlášť postavíme arénu
        - Postavíme arénu v jednom městě a spojíme toto město se všemi ostatními cestami.

    ??? Proof "Řešení"
    
        - Sestrojíme graf kde vrcholy jsou města a jedna "super aréna"
        - Ohodnocené hrany mezi městy znázorňují cenu cesty mezi nimi, zatímco ohodnocené hrany mezi každým městem a super arénou znázorňují cenu vystavení arény v daném městě
        - Po projetí tohoto grafu kruskalem zbydou ty hrany mezi městy kde se více vyplatí postavit cesta a tam kde zbyde hrana mezi městem a super arénou se vyplatí postavit arénu
        - Korektnost tohoto faktu necháváme bez důkazu

<a id="implication-uf.1"></a>
!!! Implication "Úloha - UF - Add a Increase"

    ### Úloha - UF - Add a Increase {#implication-uf.1}
    Mějme zadané vrcholy, které mají každý přiřazenou hodnotu (cenu) a které nejsou ze začátku propojeny. Navrhněte takovou strukturu, která bude podporovat operace:
    - Add(v,w) - propojí vrchol v a w hranou (pokud ještě nejsou).
    - Increase(v,x) - zvýší vrcholu v cenu o konstantu x.
    
    Po každém provedení operace Add nebo Increase vraťte všechny hrany dané komponenty. Tyto dvě operace musí fungovat v logaritmickém čase, zároveň dokažte že opravdu v ***log n*** čase pracují. Byl tam tip, že máme vhodně upravit strukturu union find. (5b) 

--- 

## Quick Sort (+ Problém řazení)

!!! Theorem "Teorie"

    - Definujte porovnávací model řazení. 1 bod
    - Formulujte a dokažte Větu o dolním odhadu složitosti řazení. 4 body
    - Definujte problém řazení celých čísel. 
    - Formulujte a dokažte větu o složitosti vyhledávání v seřazené posloupnosti. 
    - Formulujte větu o složitosti řazení.
    - Komentovaným pseudokódem popište algoritmus CountingSort.
    - Popište, kterou část algoritmu CountingSort nelze v porovnávacím modelu RAM provést a proč.

<a id="implication-sort.1"></a>
!!! Implication  "Úloha vyvrať insert a medián v O(1)"

    Jistý Ondra S. tvrdí, že pro účely druhé progtestové úlohy z BI-AG1 vymyslel následující datovou strukturu na ukládání libovolných prvků, které umíme mezi sebou pouze porovnávat. Tato struktura podporuje

    - operace Insert (vloží prvek do struktury) a.
    - zvláštní funkci ExtractMedian (vrátí a ze struktury vymaže takový prvek, který je mediánem aktuálně uložených dat),

    obojí prý v čase O(1) worst-case.

    Dokažte, že se Ondra mýlí, protože žádná taková datová struktura nemůže existovat! Dejte si záležet, ať je váš důkaz podrobný a má všechny náležitosti. 5 bodů
    Nápověda: Aplikujte větu o dolním odhadu složitosti řazení.

---

## Orientované grafy

!!! Theorem "Teorie"

    - Definice sledu a velikosti sledu. (1b)
    - Definice trojúhelníkové nerovnosti a její důkaz. (2b)
    - Napište pseudokód algoritmu Relaxace a popište ho. (4b)
    - Dokázat vlastnost (V) Vzdálenosti algoritmu Relaxace (3b)

