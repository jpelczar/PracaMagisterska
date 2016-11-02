Do zbudowania projektu konieczy jest program pdflatex oraz bibtex.

Aby zbudować projekt należy wykonać skrypt make-all.sh - buduje on poszczególne rozdziały, bibliografię oraz pełen tekst pracy.
Skrypt make.sh przyjmuje jako argument nazwę modułu jaki ma zostać zbudowany np. praca_magisterska lub brutal_force.

Wszelkie wygenerowane pliki zostaną umieszczone w build/ oprócz plików \*.pdf które zostaną przeniesione do pdf/.

Kody źródłowe znajdują się w tex/. Znajdują się tam kody dla całej pracy (praca_magisterska.tex), rozdziałów oraz zawartości rozdziału (${rozdział}_content.tex). Taka struktura pozwala na budowanie osobno rozdziałów oraz całej pracy. Główna zawartość rozdziału znajduje się w pliku ${rozdział}_content.tex.  
