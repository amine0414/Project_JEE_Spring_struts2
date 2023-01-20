/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Ensa.Repository;

import Ensa.Services.*;
import Ensa.Models.Eleve;
import Ensa.Models.Filiere;
import java.util.List;

/**
 *
 * @author amine
 */
public interface IEleveDAO {
    public List<Eleve> getAlleleves();
    
    public List<Eleve> getAllelevesNonInscrit();
    
    public List<Eleve> getAllelevesByFil(Filiere Fil);
    
    public Eleve getByCne(String cne);
    
    public void add_eleve(Eleve eleve);
    
    public void update_eleve(Eleve eleve);
    
    public void delete_eleve(String cne);
    
    


    
}
