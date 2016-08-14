
<%@page import="org.hibernate.Transaction"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="hibernate.*"%>
<%@ include file="/import/hibernateConfig.jsp"%>
<%    
    String lastPage = session.getAttribute("lastPage").toString();
    String productByColorID = session.getAttribute("productByColorID").toString();
    String size = "";
    String type="";
    try {
        size = request.getParameter("size").toString();
        type = request.getParameter("type").toString();
        session.setAttribute("size", size);
        session.setAttribute("type", type);
    } catch (Exception e) {
        size = session.getAttribute("size").toString();
        type = session.getAttribute("type").toString();
    }

    try {

        Transaction transaction = hib_session.beginTransaction();
        String isLoggedIn = session.getAttribute("isLoggedIn").toString();
        User user = (User) session.getAttribute("User");
        boolean isCart = false;
        boolean isWishList = false;
        boolean isOrder = false;
        String trxId = "NA";
        int productSizeId = Integer.parseInt(size);
        out.print(productSizeId);
        ProductSize productSize;

        Criteria cr = hib_session.createCriteria(ProductSize.class);
        cr.add(Restrictions.eq("productSizeId", productSizeId));
        productSize = (ProductSize) cr.list().get(0);

        if (lastPage.equals("cart")) {
            isOrder = false;
            if(type.equals("cart")){
                isCart=true;
                isWishList=false;
            }else{
                isCart=false;
                isWishList=true;
            }
        }
        int pdID = Integer.parseInt(productByColorID);
        cr = hib_session.createCriteria(ProductByColor.class);
        cr.add(Restrictions.eq("productByColorId", pdID));
        ProductByColor pbc = (ProductByColor) cr.list().get(0);

        cr = hib_session.createCriteria(Cart.class);
        cr.add(Restrictions.eq("productByColor", pbc));
        cr.add(Restrictions.eq("user", user));
        cr.add(Restrictions.eq("isCart", true));
        List orderList = cr.list();

        if (orderList.size() <= 0) {
            Cart cart = new Cart(productSize, pbc, user, isCart, isWishList, isOrder, trxId);
            hib_session.save(cart);
            transaction.commit();
        }
        response.sendRedirect("product-view.jsp?id="+productByColorID);
    } catch (Exception e) {
        //out.print("Err<br>" + e + "<br>" + size + "mm<br>" + session.getAttribute("isLoggedIn").toString());
        response.sendRedirect("auth.jsp");
    }

    hib_session.close();


%>