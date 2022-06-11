package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Link;
import pl.coderslab.model.Realizacja;
import pl.coderslab.repository.LinkRepository;
import pl.coderslab.repository.RealizacjaRepository;
import pl.coderslab.service.LinkService;
import pl.coderslab.service.RealizacjaService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("realization")
public class RealizacjaController {


    private final RealizacjaService realizacjaService;
    private final RealizacjaRepository realizacjaRepository;

    public RealizacjaController(RealizacjaService realizacjaService, RealizacjaRepository realizacjaRepository) {
        this.realizacjaService = realizacjaService;
        this.realizacjaRepository = realizacjaRepository;
    }


    @GetMapping("/all")
    public String showPosts(Model model) {
        List <Realizacja> realizacja = realizacjaService.getRealizacja();
        model.addAttribute("realization", realizacja);
        return "/realization/allrealization";
    }


    @GetMapping("/add/{link.id}")
    public String getAddForm(Model m) {
        m.addAttribute("realizacja", new Realizacja());
        return "realization/addrealization";
    }


    @PostMapping("/add/{link.id}")
    public String addRealizacja(@Valid final Realizacja realizacja, final BindingResult validationResult) {
        if (validationResult.hasErrors()) {
            return "realization/addrealization";
        }
        realizacjaService.add(realizacja);
        return "redirect:/realization/all";
    }


    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)

    public String showEditForm(@PathVariable long id, Model model) {

        model.addAttribute("realizacja", realizacjaService.get(id));

        return "realization/editrealization";

    }
    @RequestMapping(value = "/edit", method = RequestMethod.POST)

    public String editRealizacja(@Valid Realizacja realizacja, BindingResult result) {

        if (result.hasErrors()) {

            return "realization/editrealization";

        }

        realizacjaService.add(realizacja);

        return "redirect:/realization/all";

    }


    @GetMapping("/delete/{id}")

    public String deleteRealizacja(@PathVariable Long id) {

        realizacjaService.delete(id);

        return "redirect:/realization/all";

    }
//    @GetMapping("/show/{id}")
//
//    public String showRealizacja(Model model, @PathVariable long id) {
//
//        model.addAttribute("realizacja", realizacjaService.get(id).orElseThrow(EntityNotFoundException::new));
//
//        return "realization/show";
//
//    }
}