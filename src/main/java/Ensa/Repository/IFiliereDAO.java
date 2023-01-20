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
public interface IFiliereDAO {
    
    public List<Filiere> getAllfilieres();
    
    public Filiere getByCode_fil(String Code_fil);
    
    public void add_filiere(Filiere filiere);
    
    public void update_filiere(Filiere filiere);
    
    public void delete_filiere(String Code_Fil);
    
}