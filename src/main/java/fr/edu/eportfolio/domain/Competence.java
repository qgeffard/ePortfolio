package fr.edu.eportfolio.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Competence {

    @NotNull
    @Size(min = 1, max = 30)
    private String categori;

    @NotNull
    @Size(min = 1, max = 30)
    private String reference;

    @NotNull
    @Size(min = 1, max = 30)
    private String nom;
}
