### 1. Charakterystyka oprogramowania

**Nazwa pełna:** TongueRPG <br> 
**Krótki opis:** Klasyczna gra RPG, pomagająca w nauce języka angielskiego, poprzez wykonywanie akcji typu: przechodzenie na wyższy poziom wymagane jest od gracza przetłumaczenie prostych słów z języka polskiego na język angielski.

### 2. Prawa autorskie 

**Autorzy:** Błażej Batko, Jakub Downarowicz, Kacper Hoffman <br> 
**Licencja:** Uznanie autorstwa - użycie niekomercyjne 4.0


### 3. Specyfikacja wymagań funkcjonalnych


| ID | Kategoria     | Podkategoria                 | Opis                                                               | Priorytet |
| -- | ------------- | ---------------------------- | ------------------------------------------------------------------ | --------- |
| F1 | funkcjonalne | Zgadnij|  Funkcja Zgadywania Słów Gracz przed dokonaniem ważniejszych akcji w świecie gry będzie musiał poprawnie przetłumaczyć słowo z języka polskiego na angielski | 1 |
| F2 | funkcjonalne | Eksploruj | Eksploracja i wykonywanie Zadań | 1 |
| F3 | funkcjonalne | Historia | Utworzenie Historii I Fabuły Gry | 2 |
| F4 | funkcjonalne | Oprawa graficzna |  Poprawienie Szaty Graficznej Gry | 3 |
| F5 | funkcjonalne | Budowanie |  Utworzenie planszy I zadań dla gracza | 1 |
| F6 | funkcjonalne | Animacje | Utworzenie i poprawienie animacji przeciwników/gracza | 2 |
| F7 | funkcjonalne | Menu I ustawienia | Utworzenie menu oraz podstawowych ustawien takich jak umożliwienie dostosowywania dźwięków z gry. | 3 |
| F8 | funkcjonalne | HUD | Zaimplementowanie systemu „zdrowia” postaci którą będzie sterował gracz, utworzenie systemu wskrzeszania i punktu odrodzenia. | 2 |


### 3. Specyfikacja wymagań niefunkcjonalnych

| ID | Kategoria     | Podkategoria  | Nazwa krótka    | Opis                                                               | Priorytet |
| -- | ------------- | --------------|---------------- | ------------------------------------------------------------------ | --------- |
| NF1 | niefunkcjonalne | Projekt| Rodzaj oprogramowania |Gra jest oparta o programowanie wolne. Zawartość może być uruchamiana, kopiowana, rozpowszechniana, analizowana oraz zmieniana i poprawiana przez użytkowników. | 1 |
| NF2 | niefunkcjonalne | Intuicyjność/design| Prosta obsługa |Interfejs gry powinien być maksymalnie uproszczony. Poszczególne funkcje i wiadomości powinny być umieszczone w miejscach widocznych dla gracza oraz tam gdzie jest on przyzwyczajony że może spodziewać się danych informacji. (np. poziom zdrowia w rogu ekranu) | 1 |
| NF3 | niefunkcjonalne | Intuicyjność/design| Czytelny design |Design aplikacji musi być czytelny tzn.Kolorystyka dobrana tak, aby czytanie nie sprawiało problemów Ikony, guziki powinny być na tyle duże, aby ich używanie nie sprawiało problemów Muszą być stosowane ogólnie przyjęte ikonografiki, aby użytkownik wiedział do czego służą | 1 |
| NF4 | niefunkcjonalne | Intuicyjność/design| Łatwość użytkowania |Przeciętny użytkownik po  krótkim czasie spędzonym w grze powinien wiedzieć gdzie znajdują się najważniejsze funkcje gry | 2 |
| NF5 | niefunkcjonalne | Obsługiwane systemy| Prosty dostęp |Opcje gry (np. Zmiana poziomu głośności muzyki lub dźwięków) powinny być łatwo dostępne i proste w konfiguracji. | 2 |
| NF6 | niefunkcjonalne | Obsługiwane systemy| Obsługiwane systemy |Gra musi działać na urządzeniach z systemem operacyjnym: Windows 7 Windows 8 Windows 10 | 1 |
| NF7 | niefunkcjonalne | Projekt i rozwój| Obsługiwane systemy | Gra powinna działać na jak największej ilości systemów operacyjnych | 3 |
| NF8 | niefunkcjonalne | Projekt i rozwój| Możliwość dalszego rozwoju |Gra powinna być zaprojektowana w taki sposób aby dalszy rozwój był możliwie jak najprostszy. Kod powinien być na tyle przejrzysty i czytelny aby inni programiści chcąc pracować nad grą nie musieli spędzać dużo czasu na wdrożenie się do projektu. | 1 |
| NF9 | niefunkcjonalne | Niezawodność| Projekt|Gra musi być zaprojektowana zgodnie ze standardami przyjętymi przy projektowaniu aplikacji na systemie Windows | 1 |
| NF10 | niefunkcjonalne | Responsywność| Niezawodność działania |Aplikacja nie może posiadać nieobsłużonych wyjątków. Każde zachowanie potencjalnie generujące błąd/zwracające wyjątek musi być prawidłowo obsłużone | 1 |
| NF11 | niefunkcjonalne | Obsługiwane systemy| Responsywność |Udostępnienie możliwośći zmiany rozdzielczości gry oraz wielkości okna. | 2 |


### Architektura rozwoju 

| LP. | Nazwa produktu | Przeznaczenie w projekcie | Wersja |
| --- | -------------- | ------------------------- | ------ |
| 1 | GDScript | Gra jest tworzona w oparciu o język programowania GDScript – wysoko rozwinięty, dynamiczny jezyk oprogramowania który bardzo przypomina jezyk Python | 3.2 |
| 2 | GoDot engine | Open-sourcowy silnik do tworzenia gier. W samym programie dokonujemy oprogramowywania poszczególnych funkcjonalności oraz pracujemy nad designem gry. | 3.2 |
| 3 | GIT | Gra będzie korzystała z rozproszonego systemu kontroli GIT. | 3.2 |
| 4 | Pixilart | Darmowe narzędzie służące do rysowania prostych “spritow” (np. Drzewa/postać/przeciwnik) które następnie wykorzystamy w naszej grze. | 3.2 |
| 5 | SQLite | Silnik relacyjnych baz danych oparty na plikach. Idealny do składowania strukturalnych danych będących w relacjach (np. Listy obiektów). W naszym przypadku w bazie danych chcemy przetrzymywać słownik wykorzystywany podczas okien dialogowych w których gracz musi poprawnie przetłumaczyć słowo. | 3.2 |
| 6 | Zbiór assetów Itch.io | Gra korzysta z assetów pobranych z biblioteki serwisu Itch.io | 3.2 |
| 7 | FL Studio | Gra jest tworzona w oparciu o język programowania GDScript – wysoko rozwinięty, dynamiczny jezyk oprogramowania który bardzo przypomina jezyk Python | 3.2 |
| 8 | GDScript | Wykonanie efektów dźwiękowych i muzyki. | 3.2 |

## Scenariusze testowe
| Lp. | Priorytet | Nazwa | Warunki wstępne | Kroki wykonania | Oczekiwany rezultat |
| --- | --- | --- | --- | --- | --- |
| 1. | 1 | Uruchomienie gry z poziomu ekranu menu | Użytkownik zainstalował grę i jest wstanie ją uruchomić | 1. Kliknięcie przycisku rozpoczynającego grę | Gra uruchamia się poprawnie |
| 2. | 1 | Poruszanie się i walka w świecie gry | Użytkownik rozpoczął poprawnie grę | 1.Używanie klawiszy WASD lub strzałek w celu poruszania2. Użycie przyciski SPACJI w celu zaatakowania napotkanych wrogów | Wciśnięcie klawiszy skutkuje poruszaniem się w odpowiednich kierunkach. Akcja spacji wywołuje animację ataku oraz daje możliwość zadania obrażeń przeciwnikowi |
| 3. | 1 | Wykonywanie uników | Użytkownik rozpoczął poprawnie grę | 1.Używanie klawiszy WSAD w połączeniu z przyciskiem SHIFT. | Wciśnięcie klawiszy skutkuje wykonaniem uniku postaci sterowanej przez gracza. Wyświetlana jest animacja w odpowiednim kierunku na planszy. |
| 4. | 1 | Mechanizm tłumaczenia słów | Użytkownik jest w stanie pokonać przeciwników na danej planszy i dostać się do teleportu. | 1. Wejście w teleport.2. Uruchomienie się mechanizmu i wpisanie tłumaczenia. 3. Zatwierdzenie wpisanego słowa klawiszem ENTER. | W przypadku wprowadzenia poprawnego tłumaczenia wyrazu wyświetlana jest animacja przejścia na następną planszę, po chwili gracz jest w stanie kontynuować rozgrywkę na nowej lokacji. W przypadku niepoprawnego tłumaczenia gracz traci jeden punkt zdrowia oraz wyświetlana jest jedna litera poprawnego tłumaczenia, czynność ta powtarza się do momentu wpisania poprawnego słowa lub utraty całego zdrowia. |
| 5. | 1 | Mechanizm wskrzeszenia gracza. | Użytkownik poprawnie rozpoczął rozgrywkę i jest w stanie dotrzeć do pierwszych przeciwników i/lub teleportu. | 1.Utracenie wszystkich punktów życia w wyniku ataku ze strony przeciwników lub serii niepoprawnie wpisanych tłumaczeń podczas teleportowania się na następną lokacje.| W przypadku utracenia wszystkich punktów zdrowia akcja gry zostaje wstrzymana, gracz nie może podjąć żadnych działań swoją postacią.Na ekranie pojawia się przycisk służący do wskrzeszenia postaci. Po wciśnięciu gracz zostaje teleportowany na początek obecnej planszy z pełnym poziomem zdrowia, przeciwnicy zostają zresetowani oraz słowo to przetłumaczenia zostaje wylosowane ponownie. |
| 6. | 1 | Poprawne zachowanie przeciwników | Przeciwnicy prawidłowo pojawili się na mapie i mogą wejść w interakcję z postacią użytkownika | 1. Gracz wchodzi w pole zasięgu ataku przeciwnika 2. Przeciwnik kieruję się w stronę postaci i zaczyna ją atakować 3. Przeciwnik lub gracz tracą całe życie | Tekstury przeciwników nie nachodzą na siebie w czasie ataku, a animacje odpowiadają czynnościom. Przeciwnicy zadają oraz otrzymują odpowiednią ilość obrażeń oraz giną po utraceniu punktów życia. |
| 7. | 2 | Poprawne otrzymywanie obrażeń od przeciwników. | Przeciwnicy prawidłowo pojawili się na mapie i mogą wejść w interakcję z postacią użytkownika | 1.Gracz wchodzi w zasięg ataku dwóch przeciwników jednocześnie. | W przypadku znajdowania się postaci gracza w zasięgu ataku dwóch przeciwników jednocześnie gracz otrzymuje obrażenia tylko od jednego z nich. |
| 8. | 2 | Ucieczka postaci gracza od przeciwników | Przeciwnicy prawidłowo pojawili się na mapie i mogą wejść w interakcję z postacią użytkownika | 1.Gracz przy pomocy wykonywanych uników opuszcza pole wizji przeciwników. | W przypadku opuszczenia przez gracza pola wizji przeciwników, przestają oni za nim podążać oraz wchodzą w tryb patrolowania terenu. |
| 9. | 1 | Funkcjonalność menu pauzy | Po kliknięciu odpowiedniego klawisza przez gracza, wyświetla się menu pauzy | 1. Wciśnięcie klawisza i pojawienie się menu pauzy 2. Wybranie jednej z opcji menu lub użycie suwaka | Menu pauzy w pełni zatrzymuje świat gry. Przesuwanie suwaka głośności odpowiednio ją zwiększa lub zmniejsza. Wybranie korespondującej opcji przenosi gracza do menu głównego lub odpauzowuje grę |
| 10. | 2 | Dźwięki oraz muzyka | Gra została poprawnie uruchomiona. | 1. Rozpoczęcie rozgrywki oraz wykonywanie akcji w grze. | Gracz słyszy poprawne oraz korespondujące z wykonywanymi działaniami dźwięki efektów ze świata gry.Na każdym poziomie w tle można usłyszeć inną muzykę. |


# Wersja V0.4
**Turlanie się postaci, przeciwnicy, możliwość zadawania obrażeń, animacje zadawania obrażeń, dodanie odpychania przy uderzeniu przeciwników**
![V0 4](https://user-images.githubusercontent.com/61236659/116167774-45a24380-a701-11eb-9ad9-a6fce07c2cfd.gif)



# Wersja V0.3
**Funkcja i animacja niszczenia obiektów**
![NiszczenieTrawy](https://user-images.githubusercontent.com/61236659/116074177-a8f48d00-a691-11eb-8ebb-86b95dec92c6.gif)

# Wersja V0.2
**Animacje ruchu i ataku gracza we wszystkich kierunkach, kolizje z obiektami**
![TongueRPG V02](https://user-images.githubusercontent.com/61236659/113924724-71a96380-97ea-11eb-988b-65d5a09aa189.gif)

# Wersja V0.1
**dodanie kolizji, animacji, ruchu gracza i warstw terenu**
![Alt Text](https://recordit.co/BtURESt5U3.gif)

