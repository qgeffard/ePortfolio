package fr.edu.eportfolio.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;

import fr.edu.eportfolio.domain.Article;
import fr.edu.eportfolio.domain.SituationPro;

@RequestMapping("/administration/**")
@Controller
public class Administration {

    @RequestMapping(method = RequestMethod.POST, value = "{id}")
    public void post(@PathVariable Long id, ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
    }

    @RequestMapping
    public String index(ModelMap model, WebRequest wr) {
    	
    	List<Article> lesArticles = Article.findAllArticles();
    	List<SituationPro> lesSituationPros = SituationPro.findAllSituationProes();
    	
    	model.addAttribute("lesArticles", lesArticles);
    	model.addAttribute("lesSituationPros", lesSituationPros);
    	
    	
        return "administration/index";
    }
}
