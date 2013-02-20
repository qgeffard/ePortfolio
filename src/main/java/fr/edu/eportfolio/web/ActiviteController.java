package fr.edu.eportfolio.web;

import fr.edu.eportfolio.domain.Activite;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/activites")
@Controller
@RooWebScaffold(path = "activites", formBackingObject = Activite.class)
public class ActiviteController {
}
