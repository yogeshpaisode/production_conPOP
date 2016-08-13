<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="hibernate.HibernateUtil"%>

<%
    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session hib_session = sessionFactory.openSession();
%>