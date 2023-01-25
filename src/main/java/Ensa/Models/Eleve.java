/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Ensa.Models;

import java.io.Serializable;
import javax.persistence.*;

/**
 *
 * @author amine
 */
@Entity
@Table(name = "eleves")

public class Eleve implements Serializable{
    @Id
    @Basic(optional = false)
    @Column(name = "cne")
    private String cne;
    
    @Column(name = "nom")
    private String nom;
    
    @Column(name = "prenom")
    private String prenom;
    
    @Column(name = "moyenne")
    private double moyenne;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "RefFil", referencedColumnName = "Code_fil",nullable=true)
    private Filiere ref_fil;

    public Eleve(String cne, String nom, String prenom, double moyenne, Filiere ref_fil) {
        this.cne = cne;
        this.nom = nom;
        this.prenom = prenom;
        this.moyenne = moyenne;
        this.ref_fil = ref_fil;

    }

    public Eleve(String cne, String nom, String prenom, double moyenne) {
        this.cne = cne;
        this.nom = nom;
        this.prenom = prenom;
        this.moyenne = moyenne;
    }
    
    public Eleve(String cne) {
        this.cne = cne;
    }

    public Eleve() {
    }

    public String getCne() {
        return cne;
    }

    public void setCne(String cne) {
        this.cne = cne;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public double getMoyenne() {
        return moyenne;
    }

    public void setMoyenne(double moyenne) {
        this.moyenne = moyenne;
    }

    public Filiere getRef_fil() {
        return ref_fil;
    }

    public void setRef_fil(Filiere ref_fil) {
        this.ref_fil = ref_fil;
    }

    
    
    

    
    
    
}
