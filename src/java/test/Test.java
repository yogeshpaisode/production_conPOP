/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author yogeshpaisode
 */
public class Test {
    public static void main(String[] args) {
        SessionFactory sessionFactory=hibernate.HibernateUtil.getSessionFactory();
        Session session=sessionFactory.openSession();
        Criteria cr=session.createCriteria(hibernate.MainCategory.class);
        System.out.println(cr.list().size());
        sessionFactory.close();
    }
}
