package pl.coderslab.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Link;
import pl.coderslab.model.Ocena;
import pl.coderslab.repository.LinkRepository;
import pl.coderslab.repository.OcenaRepository;
import pl.coderslab.service.LinkService;
import pl.coderslab.service.OcenaService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("rating")
public class OcenaController {


    private final OcenaService ocenaService;
    private final OcenaRepository ocenaRepository;

    public OcenaController(OcenaService ocenaService, OcenaRepository ocenaRepository) {
        this.ocenaService = ocenaService;
        this.ocenaRepository = ocenaRepository;
    }


    @GetMapping("/all")
    public String showPosts(Model model) {
        List<Ocena> ocena = ocenaService.getOcena();
        model.addAttribute("ocena", ocena);
        return "/rating/allrating";
    }



    @GetMapping("/add/{link.id}")
    public String getAddForm(Model m) {
        m.addAttribute("ocena", new Ocena());
        return "rating/addrating";
    }

    @PostMapping("/add/{link.id}")
    public String addOcena(@Valid final Ocena ocena, final BindingResult validationResult) {
        if (validationResult.hasErrors()) {
            return "rating/addrating";
        }
        ocenaService.add(ocena);
        return "redirect: /Home/rating/all";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)

    public String showEditForm(@PathVariable long id, Model model) {

        model.addAttribute("ocena", ocenaService.get(id));

        return "rating/editrating";

    }
    @RequestMapping(value = "/edit", method = RequestMethod.POST)

    public String editOcena(@Valid Ocena ocena, BindingResult result) {

        if (result.hasErrors()) {

            return "rating/editrating";

        }

        ocenaService.add(ocena);

        return "redirect:/rating/all";

    }


    @GetMapping("/delete/{id}")

    public String deleteOcena(@PathVariable Long id) {

        ocenaService.delete(id);

        return "redirect:/rating/all";

    }
//    @GetMapping("/show/{id}")
//
//    public String showOcena(Model model, @PathVariable long id) {
//
//        model.addAttribute("ocena", ocenaService.get(id).orElseThrow(EntityNotFoundException::new));
//
//        return "rating/show";
//
//    }
}
