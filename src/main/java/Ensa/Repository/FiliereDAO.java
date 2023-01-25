/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Ensa.Repository;

import Ensa.Models.Eleve;
import Ensa.Models.Filiere;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author amine
 */

@Repository
public class FiliereDAO implements IFiliereDAO{
    
    static Session session;
    static Transaction transaction;

    public FiliereDAO() {
        session = HibernateUtil.getSessionFactory().openSession();
    }

    @Override
    public List<Filiere> getAllfilieres() 
    {
       List<Filiere> filieres = new ArrayList<Filiere>();
        
        try{
            filieres = session.createQuery("From Filiere").list();

        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            System.out.println("Exception message dans getAll: " + ex.getMessage());
        }
        return filieres;
    }
    
    @Override
    public Filiere getByCode_fil(String Code_Fil) {
        try{
            Filiere filiere = (Filiere)session.get(Filiere.class, Code_Fil);
            return filiere;
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            System.out.println("Exception is getById: " + ex.getMessage());
        }
        return null;   
    }
  
    
    @Override
    public void add_filiere(Filiere filiere)
    {   
        try{
            transaction = session.beginTransaction();
            session.save(filiere);
            transaction.commit();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            System.out.println("Exception message dans add filiere: " + ex.getMessage());
        }
    }
    
    @Override
    public void update_filiere(Filiere filiere)
    {
        try{
            transaction = session.beginTransaction();
            session.merge(filiere);
            transaction.commit();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            System.out.println("Exception message dans update: " + ex.getMessage());
        }
    }
    
    
    @Override
    public void delete_filiere(String code_fil)
    {
        try{
            Filiere filiere = getByCode_fil(code_fil);
            System.out.println(filiere);
            String code=filiere.getCode_Fil();
            transaction=session.beginTransaction();
            session.remove(filiere);
            transaction.commit();
            session.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            System.out.println("Exception message dans Delete methode: " + ex.getMessage());
        }
    }
    public int getCountEleves(String filiereId){


        String hql = "SELECT COUNT(E) FROM Eleve E WHERE E.ref_fil = :filiereId";
        transaction = session.beginTransaction();
        Query query = session.createQuery(hql);

        int count = ((Long) query.uniqueResult()).intValue();

        transaction.commit();

        return count;
    }
    
public void update(String code){

}
  
    
}
