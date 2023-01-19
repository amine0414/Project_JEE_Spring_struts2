package test_struts.actions;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.interceptor.annotations.BeforeResult;
import test_struts.Services.*;
import test_struts.models.Eleve;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import test_struts.Services.EleveService;
import test_struts.Services.EleveServiceImp;
import test_struts.models.Eleve;
import test_struts.models.Filiere;

import java.util.ArrayList;
import java.util.List;


public class EleveAction  extends ActionSupport implements ModelDriven  {



    private EleveService service = new EleveServiceImp();
    private FiliereService filiereService=new FiliereServiceImp();
   List<Filiere> filieres;
    Eleve eleve =new Eleve() ;

    public boolean editMode = false;

    public EleveAction() {
    }
    public List<Eleve> eleves = new ArrayList<Eleve>();

    public List<Filiere> getFilieres() {
        return filieres;
    }

    public void setFilieres(List<Filiere> filieres) {
        this.filieres = filieres;
    }

    public Eleve getEleve() {
        return this.eleve;
    }
    public String codeId;

    public Eleve getModel() {
        return eleve;
    }

    public List<Eleve> getEleves() {
        return eleves;
    }

    @Action(value = "addAction", results = {
            @Result(name = "success", location = "/add_student.jsp"),
            @Result(name = "error", location = "/error.jsp")
    })
    public String Charge() {
        filieres=filiereService.getAll();
        return "success";
    }

    @Action(value = "all", results = {
            @Result(name = "success", location = "/afficher.jsp"),
            @Result(name = "error", location = "/error.jsp")
    })

    public String getAll() {

        System.out.println("we are her");

        this.eleves =this.service.getAll();

        return "success";
    }

    @Action(value = "eleveAction", results = {
            @Result(name = "success",  type = "redirectAction", params = {
                    "actionName", "all"}),
            @Result(name = "error", location = "/error.jsp")
    })
    public String save() {
        try {
            if(eleve.getFiliere().getCodeFil().isBlank()){
                eleve.setFiliere(null);
            }
            service.create(eleve);
            return "success";
        }catch (Exception ex){
            System.out.println("ereeeur");
           return "error";
    }
    }
    @Action(value = "editAction", results = {
            @Result(name = "success", location = "/editEleve.jsp"),
            @Result(name = "error", location = "/error.jsp")
    })
    public String editEleve() {
        try {
            eleve = service.getCode(codeId);
            filieres=filiereService.getAll();
            return "success";
        } catch (Exception e) {
            return "error";
        }
    }
    @Action(value = "updateEleve", results = {
            @Result(name = "success",  type = "redirectAction", params = {
                    "actionName", "all"}),
            @Result(name = "error", location = "/error.jsp")
    })
    public String updateEleve() {
        service.update(eleve);
        return SUCCESS;

    }
    @Action(value = "deletEleve", results = {
            @Result(name = "success",type = "redirectAction", params = {
                    "actionName", "all"}),
            @Result(name = "error", location = "/error.jsp")
    })
    public String deleteEleve() {

        service.delete(codeId);

        return "success";
    }
 public String getAllFil(){
        filieres=filiereService.getAll();
     return "success";
 }

}
