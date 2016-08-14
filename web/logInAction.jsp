<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="hibernate.*"%>
<%@ include file="/import/hibernateConfig.jsp"%>
<%    
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    Criteria cr = hib_session.createCriteria(User.class);
    cr.add(Restrictions.eq("email", email));
    //cr.add(Restrictions.eq("password", password));
    List userList=cr.list();
    if(userList.size()==1){
        session.setAttribute("isLoggedIn", "true");
        session.setAttribute("User", ((User)userList.get(0)));
        String lastPage=session.getAttribute("lastPage").toString();
        if(lastPage.equals("cart")){
            response.sendRedirect("addToCartAction.jsp");
        }else{
            response.sendRedirect(lastPage);
        }
    }else{
        
    }
    
%>