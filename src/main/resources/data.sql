-- Dane startowe aplikacji. Tabele tworzy Hibernate z encji, a ten plik Spring Boot uruchamia zaraz potem.
-- LAB 01: dopiszcie tu konta wszystkich osób z zespołu (reguła R1.03).
-- LAB 02: dopiszcie dane do swoich tabel (kolejność: najpierw tabele, na które wskazują klucze obce).
insert into user_account (email, display_name, role, created_at) values
    ('ola@student.merito.pl',   'Ola',   'USER',    current_timestamp),
    ('kuba@student.merito.pl',  'Kuba',  'USER',    current_timestamp),
    ('firma@example.com',       'Firma', 'PARTNER', current_timestamp),
    ('admin@example.com',       'Admin', 'ADMIN',   current_timestamp),
    ('maksymilian.pakos@student.merito.pl', 'Pakos', 'ADMIN', current_timestamp),
    ('patryk.paryska@student.merito.pl', 'Patryk', 'ADMIN', current_timestamp),
    ('michał.snella@student.merito.pl', 'Michał', 'ADMIN', current_timestamp),
    ('anna.kowalska@student.merito.pl', 'Anna', 'USER', current_timestamp),
    ('piotr.nowak@student.merito.pl', 'Piotr', 'USER', current_timestamp),
    ('maria.wisniewska@student.merito.pl', 'Maria', 'USER', current_timestamp),
    ('tomasz.wojcik@student.merito.pl', 'Tomasz', 'USER', current_timestamp),
    ('julia.kaminska@student.merito.pl', 'Julia', 'USER', current_timestamp);

-- LAB 01: Wasze konta (zmieńcie na swoje dane, rola USER)
-- insert into user_account (email, display_name, role, created_at) values
--     ('imie.nazwisko@student.merito.pl', 'Imię', 'USER', current_timestamp);

insert into user_profiles (first_name, last_name, email, street, city, country, user_id) values
    ('Anna', 'Kowalska', 'anna.kowalska@example.com', 'ul. Długa 12', 'Warszawa', 'Polska', 8),
    ('Piotr', 'Nowak', 'piotr.nowak@example.com', 'ul. Prosta 8', 'Krakow', 'Polska', 9),
    ('Maria', 'Wiśniewska', 'maria.wisniewska@example.com', 'ul. Leśna 4', 'Gdańsk', 'Polska', 10),
    ('Tomasz', 'Wójcik', 'tomasz.wojcik@example.com', 'ul. Szkolna 21', 'Wrocław', 'Polska', 11),
    ('Julia', 'Kamińska', 'julia.kaminska@example.com', 'ul. Ogrodowa 7', 'Poznań', 'Polska', 12);

insert into courses (title, description, price, currency, practical, level) values
    ('Podstawy żeglarstwa', 'Wprowadzenie do budowy jachtu, zasad bezpieczeństwa i podstawowej terminologii żeglarskiej.', 0.00, 'PLN', true, 'BEGINNER'),
    ('Manewrowanie jachtem żaglowym', 'Nauka podstawowych manewrów pod żaglami, pracy załogi i prowadzenia jachtu.', 149.99, 'PLN', true, 'BEGINNER'),
    ('Nawigacja morska i śródlądowa', 'Planowanie trasy, czytanie map, korzystanie z kompasu oraz podstawy nawigacji GPS.', 119.50, 'PLN', true, 'INTERMEDIATE'),
    ('Technika prowadzenia łodzi motorowej', 'Zasady bezpiecznego manewrowania łodzią motorową w porcie i na otwartej wodzie.', 179.00, 'PLN', true, 'INTERMEDIATE'),
    ('Zaawansowane manewry motorowodne', 'Doskonalenie manewrowania, podejść do kei i reagowania w sytuacjach awaryjnych.', 249.90, 'PLN', true, 'ADVANCED');

insert into modules (title, description, is_active) values
    ('Wprowadzenie do żeglarstwa', 'Podstawowe informacje o jachtach, bezpieczeństwie i terminologii.', 1),
    ('Manewry żaglowe', 'Nauka podstawowych manewrów pod żaglami i pracy załogi.', 1),
    ('Nawigacja i planowanie trasy', 'Podstawy nawigacji morskiej i śródlądowej.', 1),
    ('Technika prowadzenia łodzi motorowej', 'Zasady bezpiecznego manewrowania łodzią motorową.', 1),
    ('Zaawansowane manewry motorowodne', 'Doskonalenie manewrowania i reagowania w sytuacjach awaryjnych.', 1);


insert into lessons (title, content, duration, additional_resources, module_id) values
    ('Budowa jachtu żaglowego', 'Poznaj najważniejsze elementy jachtu, olinowanie oraz przeznaczenie podstawowych żagli.', 45.0, 'https://www.sailing.org/', 1),
    ('Bezpieczeństwo na jachcie', 'Dowiedz się, jak prawidłowo korzystać z kamizelek ratunkowych, sygnałów alarmowych i procedur awaryjnych.', 30.0, 'https://www.gov.pl/web/mswia/bezpieczny-wypoczynek-nad-woda', 1),
    ('Podstawowe manewry żaglowe', 'Naucz się wykonywać zwroty przez sztag i rufę oraz koordynować pracę załogi podczas manewrów.', 60.0, 'https://www.rya.org.uk/', 2),
    ('Nawigacja podstawowa', 'Poznaj oznakowanie szlaków wodnych, kierunki świata i zasady wyznaczania kursu.', 50.0, 'https://www.iala-aism.org/', 3),
    ('Manewrowanie łodzią motorową', 'Ćwicz ruszanie, zatrzymywanie, skręcanie i podejście do kei przy różnych warunkach.', 40.0, 'https://www.gov.pl/web/infrastruktura/bezpieczenstwo-na-wodach', 4),
    ('Zaawansowane manewry motorowodne', 'Doskonalenie manewrowania, podejść do kei i reagowania w sytuacjach awaryjnych.', 70.0, 'https://www.boat-ed.com/', 5),
    ('Zwroty przez sztag i rufę', 'Naucz się prawidłowo wykonywać podstawowe zwroty oraz koordynować pracę załogi.', 60.0, 'https://www.rya.org.uk/', 5),
    ('Podstawy nawigacji', 'Poznaj oznakowanie szlaków wodnych, kierunki świata i zasady wyznaczania kursu.', 50.0, 'https://www.iala-aism.org/', 5);


insert into questions (title, content, answerA, answerB, answerC, answerD, correct_answer, lesson_id) values
    ('Znak kardynalny', 'Co oznacza pojedynczy czerwony znak kardynalny w kształcie walca?', 'Bezpieczna woda', 'Lewą stronę szlaku', 'Prawą stronę szlaku', 'Miejsce kotwiczenia', 'A', 4),
    ('Zwrot przez sztag', 'Co należy zrobić przed rozpoczęciem zwrotu przez sztag?', 'Zwiększyć prędkość silnika', 'Sprawdzić otoczenie i uprzedzić załogę', 'Opuścić kotwicę', 'Zgasić wszystkie światła', 'B', 5),
    ('Kamizelka ratunkowa', 'Kiedy należy założyć kamizelkę ratunkową?', 'Tylko podczas postoju', 'W razie potrzeby, zgodnie z zasadami bezpieczeństwa', 'Tylko po zmroku', 'Nigdy na spokojnej wodzie', 'B', 4),
    ('Manewr łodzią motorową', 'Jak najbezpieczniej ograniczyć prędkość łodzi motorowej przed podejściem do kei?', 'Zwolnić odpowiednio wcześnie', 'Wyłączyć sterowanie', 'Przyspieszyć', 'Wykonać ostry skręt przy kei', 'A', 5),
    ('Pierwszeństwo na wodzie', 'Co powinien zrobić sternik, gdy nie ma pewności co do zamiarów innej jednostki?', 'Zmniejszyć prędkość i zachować bezpieczny odstęp', 'Przyspieszyć', 'Wykonać przypadkowy zwrot', 'Opuścić załogę do wody', 'A', 4);



insert into modules (title, description, is_active) values
    ('Wprowadzenie do żeglarstwa', 'Podstawowe informacje o jachtach, bezpieczeństwie i terminologii.', 1),
    ('Manewry żaglowe', 'Nauka podstawowych manewrów pod żaglami i pracy załogi.', 1),
    ('Nawigacja i planowanie trasy', 'Podstawy nawigacji morskiej i śródlądowej.', 1),
    ('Technika prowadzenia łodzi motorowej', 'Zasady bezpiecznego manewrowania łodzią motorową.', 1),
    ('Zaawansowane manewry motorowodne', 'Doskonalenie manewrowania i reagowania w sytuacjach awaryjnych.', 1);



insert into course_modules (course_id, module_id, order_in_course, mandatory) values
    (1, 1, 1, true),
    (2, 2, 1, true),
    (3, 3, 1, true),
    (4, 4, 1, true),
    (5, 5, 1, true);


insert into user_courses (user_id, course_id, enrollment_date) values
    (1, 1, current_timestamp),
    (2, 2, current_timestamp),
    (3, 3, current_timestamp),
    (4, 4, current_timestamp),
    (5, 5, current_timestamp);