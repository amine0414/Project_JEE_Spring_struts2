/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Ensa.actions;

import Ensa.Models.Eleve;
import Ensa.Models.Filiere;
import Ensa.Repository.EleveDAO;
import Ensa.Repository.FiliereDAO;

import Ensa.Services.EleveService;
import Ensa.Services.FiliereService;
import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;
import java.util.ArrayList;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 *
 * @author amine
 */
@Controller
public class EleveAction extends ActionSupport {
    private Eleve eleve = new Eleve();
    private Filiere filiere = new Filiere();
    private List<Eleve> eleves ;
    private List<Filiere> lesfilieres;
    private List<String> ListeDesFilieres = new ArrayList<String>();
    private String codFil ;

    @Autowired
    private EleveService ElvService;

   @Autowired
  private FiliereService FilService;

    
    public Eleve getEleve() {
        return eleve;
    }

    public void setEleve(Eleve eleve) {
        this.eleve = eleve;
    }

    public Filiere getFiliere() {
        return filiere;
    }

    public void setFiliere(Filiere filiere) {
        this.filiere = filiere;
    }

    public List<Eleve> getEleves() {
        return eleves;
    }

    public void setEleves(List<Eleve> eleves) {
        this.eleves = eleves;
    }

    

    public List<Filiere> getLesfilieres() {
        return lesfilieres;
    }

    public void setLesfilieres(List<Filiere> lesfilieres) {
        this.lesfilieres = lesfilieres;
    }

    public List<String> getListeDesFilieres() {
        return ListeDesFilieres;
    }

    public void setListeDesFilieres(List<String> ListeDesFilieres) {
        this.ListeDesFilieres = ListeDesFilieres;
    }

    public String getCodFil() {
        return codFil;
    }

    public void setCodFil(String codFil) {
        this.codFil = codFil;
    }

    public EleveService getElvService() {
        return ElvService;
    }

    public void setElvService(EleveService ElvService) {
        this.ElvService = ElvService;
    }

    public FiliereService getFilService() {
        return FilService;
    }

    public void setFilService(FiliereService FilService) {
        this.FilService = FilService;
    }

  

    //page d'acceuil
     @Action(value = "/", results = { @Result(name = "success", location = "/Home.jsp") })
    public String Home() {
        eleves = ElvService.getAllelevesNonInscrit();
            return SUCCESS;
    
    }
    //charger les filieres
    @Action(value = "load", results = { @Result(name = "success", location="/Eleves.jsp") })
    public String Load() {
        lesfilieres=FilService.getAllfilieres();
        lesfilieres=FilService.getAllfilieres();
        for (Filiere fil:lesfilieres)
        {
            ListeDesFilieres.add(fil.getCode_Fil());
        }

        return SUCCESS;
    }


    //Lister les eleves
    @Action(value="ListEleves",results={@Result(name=SUCCESS,location="/ListEleves.jsp")})
    public String ListDesEleves()
    {	
        eleves = ElvService.getAlleleves();
            return SUCCESS;
    }
    //Ajouter un eleve
    @Action(value="AjouterEleve",results={@Result(name=SUCCESS,type = "redirectAction", params = {"actionName","ListEleves"})})
    public String AjouterEleve()
    {
        if(eleve.getRef_fil().getCode_Fil().isBlank()){
            eleve.setRef_fil(null);
        }
         ElvService.add_eleve(eleve);


         return SUCCESS;
    }
    //supprimer un eleve
    @Action(value="SupprimerEleve",results={@Result(name=SUCCESS,type = "redirectAction", params = {"actionName","ListEleves"})}) 
    public String DeleteEleve()
    {
        HttpServletRequest request ;
        request= (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         ElvService.delete_eleve(request.getParameter("cne"));

         return SUCCESS;
    }
    //Modifier un eleve
    @Action(value="EditerEleve",results={@Result(name=SUCCESS,location="/EditEleves.jsp")})  
    public String EditerEleve()
    {
        HttpServletRequest request ;
        request= (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        eleve=ElvService.getByCne(request.getParameter("cne"));
        lesfilieres=FilService.getAllfilieres();
        for (Filiere fil:lesfilieres)
        {
            ListeDesFilieres.add(fil.getCode_Fil());
        }
        
        return SUCCESS;
    }
    //mettre a jour un eleve
    @Action(value="UpdateEleve",results={@Result(name=SUCCESS,type = "redirectAction", params = {"actionName","ListEleves"})})
  
    public String UpdateEleve()
    {
         ElvService.update_eleve(eleve);
         return SUCCESS;
    }
    
    @Action(value="EleveDeFil",results={@Result(name=SUCCESS,location="/ElevesByFiliere.jsp")})  
    public String EleveDeFiliere()
    {
        HttpServletRequest request ;
        request= (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        filiere=FilService.getByCode_fil(request.getParameter("Code_Fil"));
        eleves=ElvService.getAllelevesByFil(filiere);
        
        return SUCCESS;
    }

    @Override
    public void validate() {
        super.validate();
    }
}
