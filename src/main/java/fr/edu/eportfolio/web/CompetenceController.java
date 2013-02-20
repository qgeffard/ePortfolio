package fr.edu.eportfolio.web;

import fr.edu.eportfolio.domain.Competence;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/competences")
@Controller
@RooWebScaffold(path = "competences", formBackingObject = Competence.class)
public class CompetenceController {
}
