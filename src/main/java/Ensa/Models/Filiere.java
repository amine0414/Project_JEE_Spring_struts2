/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Ensa.Models;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author amine
 */
@Entity
@Table(name = "filieres")
    
public class Filiere implements Serializable{
    
    @Id
    @Basic(optional = false)
    @Column(name = "Code_Fil")
    private String Code_Fil;
    
    @Column(name = "Nom_Fil")
    private String Nom_Fil;
    
    @OneToMany(mappedBy = "ref_fil" ,cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)

    private Collection<Eleve> elevesCollection;

    public Filiere() {
    }

    public Filiere(String Code_Fil) {
        this.Code_Fil = Code_Fil;
    }
    
    public Filiere(String Code_Fil, String Nom_Fil) {
        this.Code_Fil = Code_Fil;
        this.Nom_Fil = Nom_Fil;
    }

    public String getCode_Fil() {
        return Code_Fil;
    }

    public void setCode_Fil(String Code_Fil) {
        this.Code_Fil = Code_Fil;
    }

    public String getNom_Fil() {
        return Nom_Fil;
    }

    public void setNom_Fil(String Nom_Fil) {
        this.Nom_Fil = Nom_Fil;
    }

    public Collection<Eleve> getElevesCollection() {
        return elevesCollection;
    }

    public void setElevesCollection(Collection<Eleve> elevesCollection) {
        this.elevesCollection = elevesCollection;
    }

    
    
}
