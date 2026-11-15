# Schemat bazy danych

Plik generują reguły projektu (panel Maven → Lifecycle → verify). Nie edytujcie go ręcznie.

Tabele: 8 · kolumny: 51 · relacje: 6 × @ManyToOne, 2 × @OneToMany, 1 × @OneToOne, 0 × @ManyToMany

| Tabela | Encja | Kolumny | Klucze obce |
|---|---|---|---|
| course_modules | CourseModule | 5 | course_id, module_id |
| courses | Course | 7 | — |
| lessons | Lesson | 6 | module_id |
| modules | Module | 5 | — |
| questions | Question | 9 | lesson_id |
| user_account | UserAccount | 5 | — |
| user_courses | UserCourse | 6 | course_id, user_id |
| user_profiles | UserProfile | 8 | user_id |

```mermaid
erDiagram
    course_modules {
        Long id PK
        Long course_id FK
        Boolean mandatory
        Long module_id FK
        Integer order_in_course
    }
    courses {
        Long id PK
        String currency
        String description
        CourseLevel level
        Boolean practical
        Float price
        String title
    }
    lessons {
        Long id PK
        String additional_resources
        String content
        Float duration
        Long module_id FK
        String title
    }
    modules {
        Long id PK
        String description
        Float duration
        boolean is_active
        String title
    }
    questions {
        Long id PK
        String answer_a
        String answer_b
        String answer_c
        String answer_d
        String content
        CorrectAnswer correct_answer
        Long lesson_id FK
        String title
    }
    user_account {
        Long id PK
        LocalDateTime created_at
        String display_name
        String email
        AccountRole role
    }
    user_courses {
        Long id PK
        Long course_id FK
        Date enrollment_date
        Date last_activity_date
        Integer progress
        Long user_id FK
    }
    user_profiles {
        Long id PK
        String city
        String country
        String email
        String first_name
        String last_name
        String street
        Long user_id FK
    }
    courses ||--o{ course_modules : "course_id"
    courses ||--o{ user_courses : "course_id"
    lessons ||--o{ questions : "lesson_id"
    modules |o--o{ lessons : "module_id"
    modules ||--o{ course_modules : "module_id"
    user_account ||--o| user_profiles : "user_id"
    user_profiles ||--o{ user_courses : "user_id"
```
