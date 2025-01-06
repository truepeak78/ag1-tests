
<a id="implication-dp.1"></a>

!!! Implication  "Nejdelší cesta v matici"

    ### Nejdelší cesta v matici {#implication-dp.1}
    - Na vstupu je **NxN** matice **Mat**, kde každý prvek má určenou hodnotu. Prvky $Mat[0][0]$ a $Mat[N][N]$ mají hodnotu 0. Zbytek náhodné celočíselné hodoty (záporné, nulové i kladné).
    - Navrhněte algoritmus, který nalezne posloupnost prvků začínající na $Mat[0][0]$ a končící na $Mat[N][N]$, kde jejich součet je největší. Napříč maticí se dá pohybovat pouze směrem doprava ($Mat[i][j+1]$) a nebo dolů ($Mat[i+1][j]$).

<a id="implication-dp.2"></a>
!!! Implication "Kuchyňská prkýnka"

    ### Kuchyňská prkýnka {#implication-dp.2}
    
    ![Zadání](../assets/exams/pohadka1.png){ align=center }

<a id="implication-dp.3"></a>
!!! Implication "Převoz piva"

    ### Převoz piva {#implication-dp.3}
    Pepa převáží pivo ve městě. Všechny domy jsou na jedné přímce. Každý dům má označeno kolik si objednal piva a jak daleko je od pivovaru v jednoprvkové souřadnici. Vozík váží ~ 20 piv, při pohybu k domu se počítá celková únava podle: celková váha * ušlá vzdálenost. Ze startu má vždy ve vozíku všechny potřebná piva (nemusí se tedy řešit, že vezme prvně pár piv a pak se bude vracet pro další). Při návštěvě domu vyloží všechna potřebná piva. Je třeba najít posloupnost návštěv domů tak, aby celková únava byla nejmenší. Pepa se zároveň musí vrátit zpátky do pivovaru (10b) 
    ??? Proof "Nápověda"
        Rozdělit dynamiku na nejbližší dům nalevo od aktuální pozice a na nejbližší dům napravo od aktuální pozice.

<a id="implication-dp.4"></a>
!!! Implication "Převleky oblečení"

    ### Převleky oblečení {#implication-dp.4}
    > OCR Tohle fakt nepřečetlo

    ![Zadání](../assets/exams/policisti_prevleky.jpeg){ align=center }

<a id="implication-dp.5"></a>
!!! Implication "Kabely"

    ### Kabely {#implication-dp.5}
    ![Zadání](../assets/exams/kabely.png){ align=center }  
