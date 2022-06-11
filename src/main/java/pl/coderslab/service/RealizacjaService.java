package pl.coderslab.service;

import pl.coderslab.model.Link;
import pl.coderslab.model.Realizacja;

import java.util.List;
import java.util.Optional;

public interface RealizacjaService {

    List<Realizacja> getRealizacja();
    void add(Realizacja realizacja);
    Optional<Realizacja> get(Long id);
    void delete(Long id);
    void update(Realizacja realizacja);
}
