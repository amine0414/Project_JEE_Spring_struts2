package test_struts.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import test_struts.Services.FiliereService;
import test_struts.Services.FiliereServiceImp;
import test_struts.models.Filiere;

import java.util.ArrayList;
import java.util.List;

public class FiliereAction extends ActionSupport implements ModelDriven {
    Filiere filiere=new Filiere();
    List<Filiere> filieres=new ArrayList<>();
    public String CodeFile;
    FiliereService filiereService=new FiliereServiceImp();
    @Override
    public Filiere getModel() {
        return filiere;
    }

    public FiliereAction() {
    }
    @Action(value = "allFiliere", results = {
            @Result(name = "success", location = "/filieres.jsp"),
            @Result(name = "error", location = "/error.jsp")
    })
    public String getAll() {
        System.out.println("we are her");
        this.filieres =this.filiereService.getAll();
        return "success";
    }
    @Action(value = "saveFiliere", results = {
            @Result(name = "success",  type = "redirectAction", params = {
                    "actionName", "allFiliere"}),
            @Result(name = "error", location = "/error.jsp")
    })
    public String SaveFiliere(){
        try {
            filiereService.create(filiere);

            return "success";
        }catch (Exception ex){
            System.out.println("ereeeur");
            return "error";
        }
    }
    @Action(value = "editFiliere", results = {
            @Result(name = "success", location = "/editFiliere.jsp"),
            @Result(name = "error", location = "/error.jsp")
    })
    public String EditFiliere(){

        filiere=filiereService.getCode(CodeFile);
        return "success";
    }
    @Action(value = "updateFiliere", results = {
            @Result(name = "success",  type = "redirectAction", params = {
                    "actionName", "allFiliere"}),
            @Result(name = "error", location = "/error.jsp")
    })
    public String updateEleve() {
        filiereService.update(filiere);
        return SUCCESS;

    }
    @Action(value = "deleteFiliere", results = {
            @Result(name = "success", type = "redirectAction", params = {
                    "actionName", "allFiliere"}),
            @Result(name = "error", location = "/error.jsp")
    })
    public String Delete(){
        filiereService.delete(CodeFile);
        return SUCCESS;
    }

    public List<Filiere> getFilieres() {
        return filieres;
    }

    public Filiere getFiliere() {
        return filiere;
    }

    public void setFiliere(Filiere filiere) {
        this.filiere = filiere;
    }

    public void setFilieres(List<Filiere> filieres) {
        this.filieres = filieres;
    }
}
