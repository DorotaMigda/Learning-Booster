package pl.coderslab.service;


import pl.coderslab.model.Link;

import java.awt.print.Book;
import java.util.List;
import java.util.Optional;

public interface LinkService {

    List<Link> getLinks();
    void add(Link link);
    Optional<Link> get(Long id);
    void delete(Long id);
    void update(Link link);
}
