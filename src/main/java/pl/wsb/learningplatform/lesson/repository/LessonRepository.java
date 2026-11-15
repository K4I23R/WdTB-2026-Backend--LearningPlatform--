package pl.wsb.learningplatform.lesson.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.wsb.learningplatform.lesson.entity.Lesson;

import java.util.List;

public interface LessonRepository extends JpaRepository<Lesson, Long> {
    List<Lesson> findByModuleId(Long moduleId);
}
