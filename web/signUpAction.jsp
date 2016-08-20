<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
         pageEncoding="US-ASCII" errorPage="auth.jsp"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="hibernate.*"%>
<%@ include file="/import/hibernateConfig.jsp"%>
<%    String email = request.getParameter("email");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String mobile = request.getParameter("mobile");
    //String gender = request.getParameter("gender");
    String gender = "Male";
    String password = request.getParameter("password").trim();

    Criteria cr = hib_session.createCriteria(User.class);
    cr.add(Restrictions.eq("email", email));

    if (cr.list().size() >= 1) {
        throw new ServletException("email "+email+" is already taken");
    } else {
        Transaction transaction = hib_session.beginTransaction();
        User user = new User(firstName, lastName, email, mobile, gender, password, null, null, null);
        hib_session.save(user);
        transaction.commit();
        session.setAttribute("isLoggedIn", "true");
        String lastPage = "";
        try {
            lastPage = session.getAttribute("lastPage").toString();
        } catch (Exception e) {
            lastPage = "profile.jsp";
        }
        if (lastPage.equals("cart")) {
            response.sendRedirect("addToCartAction.jsp");
        } else {
            response.sendRedirect("profile.jsp");
        }
    }//End of Else
%>