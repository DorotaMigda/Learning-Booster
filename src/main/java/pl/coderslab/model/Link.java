package pl.coderslab.model;

import javax.persistence.*;




import javassist.URLClassPath;
import org.springframework.core.io.UrlResource;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;

    @Entity
    @Table(name = "links")
    public class Link {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;
        private String Nazwa;
        private String Link;
        private Double KosztPLN;
        private Double CzasNauki;
        private LocalDate Deadline;
        private Integer WstepnaOcena;
        private String Rodzaj;
        private String Notatki;

        public Link(Long id, String nazwa, String link, Double kosztPLN, Double czasNauki, LocalDate deadline, Integer wstepnaOcena, String rodzaj, String notatki) {
            this.id = id;
            Nazwa = nazwa;
            Link = link;
            KosztPLN = kosztPLN;
            CzasNauki = czasNauki;
            Deadline = deadline;
            WstepnaOcena = wstepnaOcena;
            Rodzaj = rodzaj;
            Notatki = notatki;
        }

        public Link(){}

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getNazwa() {
            return Nazwa;
        }

        public void setNazwa(String nazwa) {
            Nazwa = nazwa;
        }

        public String getLink() {
            return Link;
        }

        public void setLink(String link) {
            Link = link;
        }

        public Double getKosztPLN() {
            return KosztPLN;
        }

        public void setKosztPLN(Double kosztPLN) {
            KosztPLN = kosztPLN;
        }

        public Double getCzasNauki() {
            return CzasNauki;
        }

        public void setCzasNauki(Double czasNauki) {
            CzasNauki = czasNauki;
        }

        public LocalDate getDeadline() {
            return Deadline;
        }

        public void setDeadline(LocalDate deadline) {
            Deadline = deadline;
        }

        public Integer getWstepnaOcena() {
            return WstepnaOcena;
        }

        public void setWstepnaOcena(Integer wstepnaOcena) {
            WstepnaOcena = wstepnaOcena;
        }

        public String getRodzaj() {
            return Rodzaj;
        }

        public void setRodzaj(String rodzaj) {
            Rodzaj = rodzaj;
        }

        public String getNotatki() {
            return Notatki;
        }

        public void setNotatki(String notatki) {
            Notatki = notatki;
        }




}
