package pl.coderslab.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
@Entity
@Table(name = "realization")
public class Realizacja {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @OneToOne
    private Link link;
    private String planowaneTerminy;
    private String naukaNotatki;


    public Realizacja(Long id, Link link, String planowaneTerminy, String naukaNotatki) {
        this.id = id;
        this.link = link;
        this.planowaneTerminy = planowaneTerminy;
        this.naukaNotatki = naukaNotatki;
    }
    public Realizacja(){}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Link getLink() {
        return link;
    }

    public void setLink(Link link) {
        this.link = link;
    }

    public String getPlanowaneTerminy() {
        return planowaneTerminy;
    }

    public void setPlanowaneTerminy(String planowaneTerminy) {
        this.planowaneTerminy = planowaneTerminy;
    }

    public String getNaukaNotatki() {
        return naukaNotatki;
    }

    public void setNaukaNotatki(String naukaNotatki) {
        this.naukaNotatki = naukaNotatki;
    }

    public boolean isActivelink(){
        return link!=null;
    }



}
