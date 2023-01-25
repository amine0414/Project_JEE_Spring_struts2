package Ensa.actions;

import Ensa.Models.Eleve;
import Ensa.Models.Filiere;
import Ensa.Services.FiliereService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
public class FiliereAction extends ActionSupport {

    @Autowired
    FiliereService filiereService;
    private Filiere filiere=new Filiere();
    public String codFil ;
    private List<Filiere> lesfilieres;
    private List<Eleve> eleves;
    private HashMap<String,Integer> size;
    public Filiere getFiliere() {
        return filiere;
    }

    public HashMap<String, Integer> getSize() {
        return size;
    }

    public void setSize(HashMap<String,Integer> size) {
        this.size = size;
    }

    public List<Eleve> getEleves() {
        return eleves;
    }

    public void setEleves(List<Eleve> eleves) {
        this.eleves = eleves;
    }

    public void setFiliere(Filiere filiere) {
        this.filiere = filiere;
    }

    public FiliereService getFiliereService() {
        return filiereService;
    }

    public void setFiliereService(FiliereService filiereService) {
        this.filiereService = filiereService;
    }

    public List<Filiere> getLesfilieres() {
        return lesfilieres;
    }

    public void setLesfilieres(List<Filiere> lesfilieres) {
        this.lesfilieres = lesfilieres;
    }

    //Filiere
    @Action(value="ListFilieres",results={@Result(name=SUCCESS,location="/ListFilieres.jsp")})
    public String LesFilieres()
    {
        lesfilieres = filiereService.getAllfilieres();
        size = new HashMap();
       /* for (Filiere filiere : lesfilieres) {
            size.put(filiere.getCode_Fil(), filiereService.getCount(filiere.getCode_Fil()));
        }
*/
        return SUCCESS;
    }

    @Action(value="AjouterFiliere",results={@Result(name=SUCCESS,type = "redirectAction", params = {"actionName","ListFilieres"})})
    public String AjouterFiliere()
    {
        filiereService.add_filiere(filiere);
        this.lesfilieres  = filiereService.getAllfilieres();
        return SUCCESS;
    }

    @Action(value="SupprimerFiliere",results={@Result(name=SUCCESS,type = "redirectAction", params = {"actionName","ListFilieres"})})
    public String SupprimerFiliere()
    {

        HttpServletRequest request ;
        request= (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        filiereService.delete_filiere(request.getParameter("Code_Fil"));

        this.lesfilieres  = filiereService.getAllfilieres();

        return SUCCESS;
    }

    @Action(value="EditerFiliere",results={@Result(name=SUCCESS,location="/EditFilieres.jsp")})
    public String EditerFiliere()
    {

        HttpServletRequest request ;
        request= (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        filiere=filiereService.getByCode_fil(request.getParameter("Code_Fil"));
        this.lesfilieres  = filiereService.getAllfilieres();
        return SUCCESS;
    }

    @Action(value="UpdateFiliere",results={@Result(name=SUCCESS,type = "redirectAction", params = {"actionName","ListFilieres"})})
    public String UpdaterFiliere()
    {
        filiereService.update_filiere(filiere);
        this.lesfilieres  = filiereService.getAllfilieres();

        return SUCCESS;
    }

}
