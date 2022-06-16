package pl.coderslab.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Link;
import pl.coderslab.repository.LinkRepository;
import pl.coderslab.service.LinkService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;

import java.util.List;

@Controller
@RequestMapping("links")
public class LinkController {


    private final LinkService linkService;
    private final LinkRepository linkRepository;

    public LinkController(LinkService linkService, LinkRepository linkRepository) {
        this.linkService = linkService;
        this.linkRepository = linkRepository;
    }


    @GetMapping("/all")
    public String showPosts(Model model) {
        List<Link> links = linkService.getLinks();
        model.addAttribute("links", links);
        return "/links/all";
    }



    @GetMapping("/add")
    public String getAddForm(Model m) {
        m.addAttribute("link", new Link());
        return "links/add";
    }

    @PostMapping("/add")
    public String addLink(@Valid final Link link, final BindingResult validationResult) {
        if (validationResult.hasErrors()) {
            return "links/add";
        }
        linkService.add(link);
        return "redirect:all";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)

    public String showEditForm(@PathVariable long id, Model model) {

        model.addAttribute("link", linkService.get(id));

        return "links/edit";

    }
    @RequestMapping(value = "/edit", method = RequestMethod.POST)

    public String editLink(@Valid Link link, BindingResult result) {

        if (result.hasErrors()) {

            return "links/edit";

        }

        linkService.add(link);

        return "redirect:all";

    }


    @GetMapping("/delete/{id}")

    public String deleteLink(@PathVariable Long id) {

        linkService.delete(id);

        return "redirect:/links/all";

    }
//    @GetMapping("/show/{id}")
//
//    public String showLink(Model model, @PathVariable long id) {
//
//        model.addAttribute("link", linkService.get(id).orElseThrow(EntityNotFoundException::new));
//
//        return "links/show";
//
//    }

}


