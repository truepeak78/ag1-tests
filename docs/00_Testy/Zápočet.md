!!! Implication "Graf G s průměrným stupněm $\alpha$"

    ### Graf G s průměrným stupněm
   
    Mějme graf $G$, kde  $\alpha = \dfrac{\displaystyle\sum_{v \in V(G)} deg_{G}(v)}{|V(G)|}$

    poté existuje indukovaný podgraf $H$ takový že $(\forall v \in V(G))(deg_H(v) \ge \frac{\alpha}2)$

    <br/>

    - Výsledný graf $H$ vytvoříme postupnou "destrukcí" grafu $G$
    - Začenem tedy s $H = G$
    - Postupně budeme z grafu $H$ odebírat každý vrchol $v \in V(H)$ takový že $deg_{H}(v) \lt \dfrac{\alpha}{2}$
    - Takto tedy odebereme maximálně $n$ vrcholů, kde $n = |V(H)|$
    - Pokud každý vrchol měl stupeň $\lt \frac{\alpha}{2}$, měly tedy dohromady maximálně $n \cdot k$ stupňů, kde $k \lt \frac{\alpha}{2}$ 
    - Pro původní graf $H$ platilo $\displaystyle\sum_{v \in V(H)} deg_{H}(v) = n \cdot \alpha$
    - Poté co odečteme stupně námi odebraných vrcholů $\cdot 2$ (včetně sousedních vrcholů, kterým jsme stupeň odebráním také snížili)
    - Nutně platí:

    $$
    n\alpha = 2n \frac{\alpha}2  \gt 2nk
    $$

    $$
    \displaystyle\sum_{v \in V(H)} deg_{H}(v) - 2nk = n\alpha - 2nk \gt 0
    $$

    - Tedy máme neprázdný graf $H$, který je indukovaný (plyne z konstrukce), neprázdný a všechny jeho vrcholy mají stupeň $\ge \frac{\alpha}{2}$


---

[Michal dvořák, cv1](https://courses.fit.cvut.cz/BI-AG1/teacher/dvora125/media/cviceni1.pdf)

!!! Implication "Cvičení 1.5"

    **Zadání:** Určete počet všech indukovaných podgrafů grafu $K_{n}$

    **Řešení:** 

    - Součet všech $K_{l}$ kde $l \in \{1,...,n\}$ 

    $$
    \sum_{i=1}^{n}\binom{n}{i} = 2^{n} -1
    $$

!!! Implication "Cvičení 1.10"

    **Zadání:** Graf, který obsahuje kružnici jako podgraf, obsahuje kružnici jako indukovaný podgraf

    **Řešení:**

    - Pokud je i indukovaný podgraf kružnice, tak finished
    - Jinak rozdělit podle tětivy a vzít menší část $\rightarrow$ rekurze
    - 1.10.2 neplatí $\rightarrow$ proti příklad např. $K_{n}$
    - 1.10.3 plaí $\rightarrow$ lichá se podle tětivy rozdělí vždy na sudou a lichou část $\rightarrow$ rekurze do liché

 



