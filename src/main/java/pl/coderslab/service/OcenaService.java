package pl.coderslab.service;


import pl.coderslab.model.Link;
import pl.coderslab.model.Ocena;

import java.util.List;
import java.util.Optional;

public interface OcenaService {

    List<Ocena> getOcena();
    void add(Ocena ocena);
    Optional<Ocena> get(Long id);
    void delete(Long id);
    void update(Ocena ocena);
}
