package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Link;
import pl.coderslab.model.Realizacja;

public interface RealizacjaRepository extends JpaRepository<Realizacja,Long> {
}
