package test_struts.Repositories;

import test_struts.models.Eleve;
import org.springframework.stereotype.Repository;
import test_struts.models.Eleve;

import java.util.List;

@Repository
public interface EleveRepository{

    List<Eleve> getAll();
    Eleve getCode(String id);
    void create(Eleve type);
    void update(Eleve type);
    void delete(String id);

}
