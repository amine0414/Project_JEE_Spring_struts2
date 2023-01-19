package test_struts.Services;

import test_struts.Config.HibernateUtil;
import test_struts.Repositories.FiliereRepository;
import test_struts.Repositories.FiliereRepositoryImp;
import test_struts.models.Eleve;
import test_struts.models.Filiere;

import java.util.List;
public class FiliereServiceImp implements FiliereService{
    private FiliereRepository filiereRepo=new FiliereRepositoryImp();
    @Override
    public List<Filiere> getAll() {
        return filiereRepo.getAll();
    }

    @Override
    public Filiere getCode(String id) {
       return filiereRepo.getCode(id);
    }

    @Override
    public void create(Filiere type) {
          filiereRepo.create(type);
    }

    @Override
    public void update(Filiere type) {
   filiereRepo.update(type);
    }

    @Override
    public void delete(String code) {
     filiereRepo.delete(code);
    }
}
