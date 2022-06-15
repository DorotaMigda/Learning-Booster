package pl.coderslab.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Link;
import pl.coderslab.model.Ocena;

public interface OcenaRepository extends JpaRepository<Ocena,Long> {
}