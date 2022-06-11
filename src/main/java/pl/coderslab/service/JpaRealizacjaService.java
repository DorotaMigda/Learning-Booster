package pl.coderslab.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.model.Link;
import pl.coderslab.model.Realizacja;
import pl.coderslab.repository.LinkRepository;
import pl.coderslab.repository.RealizacjaRepository;

import java.util.List;
import java.util.Optional;

@Service
@Primary
public class JpaRealizacjaService implements RealizacjaService {

    private final RealizacjaRepository realizacjaRepository;


    public JpaRealizacjaService(RealizacjaRepository realizacjaRepository) {
        this.realizacjaRepository = realizacjaRepository;
    }

    @Override
    public List<Realizacja> getRealizacja() {
        return realizacjaRepository.findAll();
    }

    @Override
    public void add(Realizacja realizacja) {
        realizacjaRepository.save(realizacja);
    }

    @Override
    public Optional<Realizacja> get(Long id) {
        return realizacjaRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        realizacjaRepository.deleteById(id);

    }

    @Override
    public void update(Realizacja realizacja) {
        realizacjaRepository.save(realizacja);
    }
}
