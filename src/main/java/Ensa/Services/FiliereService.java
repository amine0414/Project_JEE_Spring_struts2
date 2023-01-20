/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Ensa.Services;

import Ensa.Models.Filiere;
import Ensa.Repository.FiliereDAO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author amine
 */
@Service
public class FiliereService {

    @Autowired
    private FiliereDAO FilDAO ;
    

    public FiliereDAO getFilDAO() {
        return FilDAO;
    }

    public void setFilDAO(FiliereDAO FilDAO) {
        this.FilDAO = FilDAO;
    }
    
     public List<Filiere> getAllfilieres(){
        return FilDAO.getAllfilieres();
     }
    
    public Filiere getByCode_fil(String Code_fil){
        return FilDAO.getByCode_fil(Code_fil);
    }
    
    public void add_filiere(Filiere filiere){
        FilDAO.add_filiere(filiere);
    }
    
    public void update_filiere(Filiere filiere){
        FilDAO.update_filiere(filiere);
    }
    
    public void delete_filiere(String Code_Fil){
        FilDAO.delete_filiere(Code_Fil);
    }
        
        

    
}
