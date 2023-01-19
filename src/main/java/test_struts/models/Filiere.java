package test_struts.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;

@Entity
@Table(name = "filieres")

public class Filiere implements Serializable {

    @Id

    @Basic(optional = false)

    @Column(name = "Code_Fil")
    private String codeFil;

    @Column(name = "Nom_Fil")
    private String nomFil;

    @OneToMany (mappedBy = "filiere", cascade = CascadeType.REMOVE,orphanRemoval = true)
    private Collection<Eleve> eleves;

    public Filiere() {
    }

    public Filiere(String codeFil) {
        this.codeFil = codeFil;
    }

    public Filiere(String codeFil, String nomFil) {
        this.codeFil = codeFil;
        this.nomFil = nomFil;

    }

    public String getCodeFil() {
        return codeFil;
    }

    public void setCodeFil(String codeFil) {
        this.codeFil = codeFil;
    }

    public String getNomFil() {
        return nomFil;
    }

    public void setNomFil(String nomFil) {
        this.nomFil = nomFil;
    }

    public Collection<Eleve> getEleves() {
        return eleves;
    }

    public void setEleves(Collection<Eleve> eleves) {
        this.eleves = eleves;
    }

}





