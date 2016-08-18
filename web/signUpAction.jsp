<%@page import="org.hibernate.Transaction"%>
<%@page import="hibernate.*"%>
<%@ include file="/import/hibernateConfig.jsp"%>
<%    String email = request.getParameter("email");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String mobile = request.getParameter("mobile");
    String gender = request.getParameter("gender");
    String password = request.getParameter("password");

    Transaction transaction = hib_session.beginTransaction();
    User user = new User(firstName, lastName, email, mobile, gender, null, null);
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
%>