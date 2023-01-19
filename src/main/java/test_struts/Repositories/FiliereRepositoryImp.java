package test_struts.Repositories;

import org.hibernate.Session;
import org.hibernate.Transaction;
import test_struts.Config.HibernateUtil;
import test_struts.models.Eleve;
import test_struts.models.Filiere;

import java.util.ArrayList;
import java.util.List;

public class FiliereRepositoryImp implements FiliereRepository {
    static Session s;
    static Transaction Tx;
    @Override
    public List<Filiere> getAll() {
        List<Filiere> filieres =new ArrayList<Filiere>();
        s = HibernateUtil.getSessionFactory().openSession();
        Tx = s.beginTransaction();
        try {
            filieres = s.createQuery("from Filiere ").list();
        } catch (Exception var3) {
            var3.printStackTrace();
            System.out.println("Error connection");
        }

        return (List<Filiere>) filieres;
    }

    @Override
    public Filiere getCode(String id) {
        s = HibernateUtil.getSessionFactory().openSession();
        Tx = s.beginTransaction();
        return (Filiere) s.get(Filiere.class, id);
    }

    @Override
    public void create(Filiere type) {
        try {

            s = HibernateUtil.getSessionFactory().openSession();
            Tx = s.beginTransaction();
            s.save(type);
            Tx.commit();
        }catch (Exception ex){
            System.out.println(ex.getMessage());
            System.out.println("zbi hna f create ma khdamsh had 9lawi");
        }
    }

    @Override
    public void update(Filiere type) {
        s = HibernateUtil.getSessionFactory().openSession();
        Tx = s.beginTransaction();
        s.saveOrUpdate(type);
        Tx.commit();
    }

    @Override
    public void delete(String code) {
        s = HibernateUtil.getSessionFactory().openSession();
        Tx = s.beginTransaction();
        Filiere art = this.getCode(code);
        s.delete(art);
        Tx.commit();
    }

}
