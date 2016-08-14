
<%@page import="org.hibernate.Transaction"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="hibernate.*"%>
<%@ include file="/import/hibernateConfig.jsp"%>
<%    String lastPage = session.getAttribute("lastPage").toString();
    String productByColorID = session.getAttribute("productByColorID").toString();
    String size = "";

    try {
        size = request.getParameter("size").toString();
        session.setAttribute("size", size);
    } catch (Exception e) {
        size = session.getAttribute("size").toString();
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
            isWishList = false;
            isOrder = false;
            isCart = true;
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
        response.sendRedirect("cart-step1.jsp");
    } catch (Exception e) {
        //out.print("Err<br>" + e + "<br>" + size + "mm<br>" + session.getAttribute("isLoggedIn").toString());
        response.sendRedirect("auth.jsp");
    }

    hib_session.close();


%>