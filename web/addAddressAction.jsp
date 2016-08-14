<%@page import="org.hibernate.Transaction"%>
<%@page import="hibernate.User"%>
<%@page import="hibernate.*"%>
<%@ include file="/import/hibernateConfig.jsp"%>
<%    User user = (User) session.getAttribute("User");
    String typeAddr = request.getParameter("typeAddr");
    String pincode = request.getParameter("pincode");
    String stateAddr = request.getParameter("stateAddr");
    String city = request.getParameter("city");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String landMark = request.getParameter("landMark");
    String mobileNo = request.getParameter("mobileNo");
    Transaction transaction=hib_session.beginTransaction();
    Address address=new Address(user, typeAddr, pincode, stateAddr, city, firstName, lastName, landMark, mobileNo);
    hib_session.save(address);
    transaction.commit();
    hib_session.close();
    response.sendRedirect("cart-step2.jsp");
%>