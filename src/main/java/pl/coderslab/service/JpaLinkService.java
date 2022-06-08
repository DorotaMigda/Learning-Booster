package pl.coderslab.service;



import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.model.Link;
import pl.coderslab.repository.LinkRepository;

import java.awt.print.Book;
import java.util.List;
import java.util.Optional;


@Service
@Primary
public class JpaLinkService implements LinkService {

    private final LinkRepository linkRepository;


    public JpaLinkService(LinkRepository linkRepository) {
        this.linkRepository = linkRepository;
    }

    @Override
    public List<Link> getLinks() {
        return linkRepository.findAll();
    }

    @Override
    public void add(Link link) {
        linkRepository.save(link);
    }

    @Override
    public Optional<Link> get(Long id) {
        return linkRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        linkRepository.deleteById(id);

    }

    @Override
    public void update(Link link) {
        linkRepository.save(link);
    }
}