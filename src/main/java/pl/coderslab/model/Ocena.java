package pl.coderslab.model;


import org.hibernate.validator.constraints.Range;

import javax.persistence.*;

@Entity
@Table(name = "rating")
public class Ocena {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
//    @OneToOne
//    private Link link;
    @Range(min = 1, max = 3, message ="Wymagana liczba 1,2 lub 3")
    private Integer ocenaKoncowa;
    private String ocenaNotatki;


    public Ocena (Long id, Integer ocenaKoncowa, String ocenaNotatki) {
        this.id = id;
//        this.link = link;
        this.ocenaKoncowa = ocenaKoncowa;
        this.ocenaNotatki = ocenaNotatki;
    }
    public Ocena(){}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

//    public Link getLink() {
//        return link;
//    }
//
//    public void setLink(Link link) {
//        this.link = link;
//    }

    public Integer getOcenaKoncowa() {
        return ocenaKoncowa;
    }

    public void setOcenaKoncowa(Integer ocenaKoncowa) {
        this.ocenaKoncowa = ocenaKoncowa;
    }

    public String getOcenaNotatki() {
        return ocenaNotatki;
    }

    public void setOcenaNotatki(String ocenaNotatki) {
        this.ocenaNotatki = ocenaNotatki;
    }
}