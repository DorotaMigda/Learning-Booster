package pl.coderslab.service;


import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.model.Link;
import pl.coderslab.model.Ocena;
import pl.coderslab.repository.LinkRepository;
import pl.coderslab.repository.OcenaRepository;

import java.util.List;
import java.util.Optional;

@Service
@Primary
public class JpaOcenaService implements OcenaService {

    private final OcenaRepository ocenaRepository;


    public JpaOcenaService(OcenaRepository ocenaRepository) {
        this.ocenaRepository = ocenaRepository;
    }

    @Override
    public List<Ocena> getOcena() {
        return ocenaRepository.findAll();
    }

    @Override
    public void add(Ocena ocena) {
        ocenaRepository.save(ocena);
    }

    @Override
    public Optional<Ocena> get(Long id) {
        return ocenaRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        ocenaRepository.deleteById(id);

    }

    @Override
    public void update(Ocena ocena) {
        ocenaRepository.save(ocena);
    }
}