package test_struts.Services;

import test_struts.models.Filiere;

import java.util.List;

public interface FiliereService {
    List<Filiere> getAll();
    Filiere getCode(String id);
    void create(Filiere type);
    void update(Filiere type);
    void delete(String code);
}
