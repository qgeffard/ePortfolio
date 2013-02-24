package fr.edu.eportfolio.domain;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class SituationPro {

    @NotNull
    @Size(min = 1, max = 200)
    private String nom;

    @NotNull
    @Size(min = 1, max = 200)
    private String urlDetail;

    @NotNull
    @Size(min = 1, max = 200)
    private String vignette;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Competence> competences = new HashSet<Competence>();

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Article> articles = new HashSet<Article>();
}
