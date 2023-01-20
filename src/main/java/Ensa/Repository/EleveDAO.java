/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Ensa.Repository;

import Ensa.Models.Eleve;
import Ensa.Models.Filiere;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author amine
 */
@Repository
public class EleveDAO implements IEleveDAO{
    
    static Session session;
    static Transaction transaction;

    public EleveDAO() {
        session = HibernateUtil.getSessionFactory().openSession();
    }
    
    
    
    
    @Override
    public List<Eleve> getAlleleves() 
    {
        
       List<Eleve> eleves = new ArrayList<Eleve>();
        
        try{
          eleves=session.createQuery("From Eleve").list();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            System.out.println("Exception message: " + ex.getMessage());
        }
        
        return eleves;
    }
    
    @Override
    public Eleve getByCne(String Cne) {
        try{
            Eleve eleve = (Eleve)session.get(Eleve.class, Cne);
            return eleve;
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            System.out.println("Exception code: " + ex.getMessage());
        }
        return null;   
    }
  
    
    @Override
    public void add_eleve(Eleve eleve)
    {   
        try{
            transaction = session.beginTransaction();
            session.save(eleve);
            transaction.commit();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            System.out.println("Exception message add: " + ex.getMessage());
        }
    }
    
    @Override
    public void update_eleve(Eleve eleve)
    {
        try{
            transaction = session.beginTransaction();
            session.merge(eleve);
            transaction.commit();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            System.out.println("Exception message dans Update: " + ex.getMessage());
        }
    }
    
    
    @Override
    public void delete_eleve(String Cne)
    {
        try{
            Eleve eleve = getByCne(Cne);
            System.out.println(eleve);
            
            transaction = session.beginTransaction();
            session.remove(eleve);
            transaction.commit();
            
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            System.out.println("Exception message dans Delete: " + ex.getMessage());
        }
    }

    @Override
    public List<Eleve> getAllelevesNonInscrit()
    {
        List<Eleve> eleves = new ArrayList<Eleve>();
        
        try{
          eleves=session.createQuery("From Eleve E WHERE E.ref_fil is null").list();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            System.out.println("Exception message dans getAll: " + ex.getMessage());
        }
        
        return eleves;
    
    }

    @Override
    public List<Eleve> getAllelevesByFil(Filiere Fil) {
    
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Eleve> criteriaQuery = criteriaBuilder.createQuery(Eleve.class);
        Root<Eleve> root = criteriaQuery.from(Eleve.class);
        criteriaQuery.select(root);
        Predicate filierePredicate = criteriaBuilder.equal(root.get("ref_fil"), Fil);
        criteriaQuery.where(filierePredicate);
        return session.createQuery(criteriaQuery).getResultList();
    }    

    

        
}


