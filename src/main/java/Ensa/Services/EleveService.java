/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Ensa.Services;

import Ensa.Models.Eleve;
import Ensa.Models.Filiere;
import Ensa.Repository.EleveDAO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author amine
 */
@Service
public class EleveService {
    @Autowired
    private EleveDAO ELVDAO ;

    public EleveDAO getELVDAO() {
        return ELVDAO;
    }

    public void setELVDAO(EleveDAO ELVDAO) {
        this.ELVDAO = ELVDAO;
    }

    public List<Eleve> getAlleleves() 
    {    
        return ELVDAO.getAlleleves();
    }
    public Eleve getByCne(String Cne) {
        return ELVDAO.getByCne(Cne);
    }
    public void add_eleve(Eleve eleve){
        ELVDAO.add_eleve(eleve);
    }
    public void update_eleve(Eleve eleve){
        ELVDAO.update_eleve(eleve);
    }
     public void delete_eleve(String Cne){
        ELVDAO.delete_eleve(Cne);
    }
     
    public List<Eleve> getAllelevesNonInscrit()
    {
        return ELVDAO.getAllelevesNonInscrit();
    }
    public List<Eleve> getAllelevesByFil(Filiere Fil) {
     return ELVDAO.getAllelevesByFil(Fil);
    }


    
    


    

}
