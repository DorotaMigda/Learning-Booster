package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Link;



public interface LinkRepository extends JpaRepository<Link,Long> {
}


