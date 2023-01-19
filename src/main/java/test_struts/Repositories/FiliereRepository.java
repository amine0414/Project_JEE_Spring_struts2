package test_struts.Repositories;

import test_struts.models.Eleve;
import test_struts.models.Filiere;

import java.util.List;

public interface FiliereRepository {
    List<Filiere> getAll();
    Filiere getCode(String id);
    void create(Filiere type);
    void update(Filiere type);
    void delete(String code);


}
