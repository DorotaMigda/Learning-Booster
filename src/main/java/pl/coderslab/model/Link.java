package pl.coderslab.model;

import javax.persistence.*;




import javassist.URLClassPath;
import org.hibernate.validator.constraints.Range;
import org.hibernate.validator.constraints.URL;
import org.springframework.core.io.UrlResource;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.ExceptionHandler;
import pl.coderslab.converter.LocalDateAttributeConverter;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

    @Entity
    @Table(name = "links")
    public class Link {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;

        private String nazwa;

        private String link;

        @Range(min = 0, message ="Koszt nie może być wartością ujemną")
        private Double kosztPLN;
        @Range(min = 0, message ="Czas nauki nie może być wartością ujemną")
        private Double czasNauki;
        @DateTimeFormat(pattern = "yyyy-MM-dd")
        @Convert(converter = LocalDateAttributeConverter.class)
        private LocalDate deadline;
        @Range(min = 1, max = 3, message ="Wymagana liczba 1,2 lub 3")
        private Integer wstepnaOcena;
        private String rodzaj;
        private String notatki;
       @OneToOne (mappedBy = "link",cascade= CascadeType.REMOVE)
      private Realizacja realizacja;

        @OneToOne (mappedBy = "link",cascade= CascadeType.REMOVE)
        private Ocena ocena;
        public Link(Long id, String nazwa, String link, Double kosztPLN, Double czasNauki, LocalDate deadline, Integer wstepnaOcena, String rodzaj, String notatki, Realizacja realizacja, Ocena ocena) {
            this.id = id;
            this.nazwa = nazwa;
            this.link = link;
            this.kosztPLN = kosztPLN;
            this.czasNauki = czasNauki;
            this.deadline = deadline;
            this.wstepnaOcena = wstepnaOcena;
            this.rodzaj = rodzaj;
            this.notatki = notatki;
           this.realizacja=realizacja;
           this.ocena=ocena;
        }

        public Link(){}

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getNazwa() {
            return nazwa;
        }

        public void setNazwa(String nazwa) {
            this.nazwa = nazwa;
        }

        public String getLink() {
            return link;
        }

        public void setLink(String link) {
            this.link = link;
        }

        public Double getKosztPLN() {
            return kosztPLN;
        }

        public void setKosztPLN(Double kosztPLN) {
            this.kosztPLN = kosztPLN;
        }

        public Double getCzasNauki() {
            return czasNauki;
        }

        public void setCzasNauki(Double czasNauki) {
            this.czasNauki = czasNauki;
        }

        public LocalDate getDeadline() {
            return deadline;
        }

        public void setDeadline(LocalDate deadline) {
            this.deadline = deadline;
        }

        public Integer getWstepnaOcena() {
            return wstepnaOcena;
        }

        public void setWstepnaOcena(Integer wstepnaOcena) {
            this.wstepnaOcena = wstepnaOcena;
        }

        public String getRodzaj() {
            return rodzaj;
        }

        public void setRodzaj(String rodzaj) {
            this.rodzaj = rodzaj;
        }

        public String getNotatki() {
            return notatki;
        }

        public void setNotatki(String notatki) {
            this.notatki = notatki;
        }

      public Realizacja getRealizacja() {
            return realizacja;
       }

        public void setRealizacja(Realizacja realizacja) {
           this.realizacja = realizacja;
       }

       public Ocena getOcena(){return ocena;}

        public void setOcena(Ocena ocena) {
            this.ocena = ocena;
        }
    }
