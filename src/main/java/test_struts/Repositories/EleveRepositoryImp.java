package test_struts.Repositories;

import test_struts.Config.HibernateUtil;
import test_struts.models.Eleve;
import org.hibernate.Session;
import org.hibernate.Transaction;
import test_struts.Config.HibernateUtil;
import test_struts.models.Eleve;

import java.util.ArrayList;
import java.util.List;

public class EleveRepositoryImp implements EleveRepository{
    static Session s;
    static Transaction Tx;
    @Override
    public List<Eleve> getAll() {
        List<Eleve> eleves =new ArrayList<Eleve>();
        s = HibernateUtil.getSessionFactory().openSession();
        Tx = s.beginTransaction();
        try {
            eleves = s.createQuery("from Eleve ").list();
        } catch (Exception var3) {
            var3.printStackTrace();
            System.out.println("Error connection");
        }

        return (List<Eleve>) eleves;

    }

    @Override
    public Eleve getCode(String id) {
        s = HibernateUtil.getSessionFactory().openSession();
        Tx = s.beginTransaction();
        return (Eleve)s.get(Eleve.class, id);
    }

    @Override
    public void create(Eleve eleve) {
        System.out.println("we are creating");
        try {


        s = HibernateUtil.getSessionFactory().openSession();
        Tx = s.beginTransaction();
        s.save(eleve);
        Tx.commit();
        }catch (Exception ex){
            System.out.println(ex.getMessage());
            System.out.println("zbi hna f create ma khdamsh had 9lawi");
        }
    }

    @Override
    public void update(Eleve type) {
        s = HibernateUtil.getSessionFactory().openSession();
        Tx = s.beginTransaction();
        s.saveOrUpdate(type);
        Tx.commit();
    }

    @Override
    public void delete(String id) {
        s = HibernateUtil.getSessionFactory().openSession();
        Tx = s.beginTransaction();
        Eleve art = this.getCode(id);
        s.delete(art);
        Tx.commit();
    }

}
