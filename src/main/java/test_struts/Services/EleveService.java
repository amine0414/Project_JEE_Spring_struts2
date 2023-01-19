package test_struts.Services;

import test_struts.models.Eleve;
import test_struts.models.Eleve;

import java.util.List;


public interface EleveService {
    List<Eleve> getAll();
    Eleve getCode(String cne);
    void create(Eleve eleve);
    void update(Eleve eleve);
    void delete(String cne);
}
