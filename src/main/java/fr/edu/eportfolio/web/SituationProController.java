package fr.edu.eportfolio.web;

import fr.edu.eportfolio.domain.SituationPro;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/situationproes")
@Controller
@RooWebScaffold(path = "situationproes", formBackingObject = SituationPro.class)
public class SituationProController {
}
