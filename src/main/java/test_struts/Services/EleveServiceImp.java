package test_struts.Services;

import test_struts.Config.HibernateUtil;
import test_struts.Repositories.EleveRepository;
import test_struts.Repositories.EleveRepositoryImp;
import test_struts.models.Eleve;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import test_struts.Config.HibernateUtil;
import test_struts.Repositories.EleveRepository;
import test_struts.models.Eleve;

import java.util.ArrayList;
import java.util.List;

@Service
public class EleveServiceImp implements EleveService {
    List<Eleve> eleves = new ArrayList();
    static Session s;
    static Transaction Tx;

    private EleveRepository repo=new EleveRepositoryImp();
    @Override
    public List<Eleve> getAll() {

        return repo.getAll();
    }

    @Override
    public Eleve getCode(String cne) {
        return repo.getCode(cne);
    }

    @Override
    public void create(Eleve eleve) {
        try {

            repo.create(eleve);
        }catch (Exception ex){
            System.out.println(ex.getMessage());
            System.out.println("zbi hna f create ma khdamsh had 9lawi");
        }
    }

    @Override
    public void update(Eleve eleve) {
        repo.update(eleve);
    }

    @Override
    public void delete(String cne) {
        repo.delete(cne);
    }
}
