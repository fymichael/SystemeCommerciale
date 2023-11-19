/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.supplier;

import generalisation.GenericDAO.GenericDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.article.Category;
import model.supplier.Supplier;

/**
 *
 * @author Fy Botas
 */
@WebServlet(name = "SupplierModificationServlet", urlPatterns = {"/supplier-modification"})
public class SupplierModificationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("action") == null) {
            try {
                // All required assets
                List<String> css = new ArrayList<>();
                css.add("assets/css/supplier/supplier.css");

                int idSupplier = Integer.valueOf(request.getParameter("idSupplier"));
                List<String> js = new ArrayList<>();

                request.setAttribute("css", css);
                request.setAttribute("js", js);

                List<Category> categories = (List<Category>) GenericDAO.directQuery(Category.class, "SELECT * FROM category WHERE status = 1", null);
                request.setAttribute("listCategory", categories);
                Supplier sup = (Supplier) GenericDAO.findById(Supplier.class, idSupplier, null);
                request.setAttribute("supplier", sup);
                // Page definition
                request.setAttribute("title", "Modification fournisseur");
                request.setAttribute("contentPage", "./pages/supplier/supplierModification.jsp");

                request.getRequestDispatcher("./template.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            try {
                int idSupplier = Integer.valueOf(request.getParameter("idSupplier"));
                Supplier s = (Supplier) GenericDAO.findById(Supplier.class, idSupplier, null);
                s.setStatus(0);
                GenericDAO.updateById(s, idSupplier, null);
                response.sendRedirect("./supplier-list");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name = request.getParameter("name");
            String adresse = request.getParameter("adresse");
            String contact = request.getParameter("contact");
            String email = request.getParameter("email");
            int idSupplier = Integer.valueOf(request.getParameter("idSupplier"));
            String[] categoryValues = request.getParameterValues("category");

            if (categoryValues != null) {

                Supplier s = new Supplier();
                s.setAdresse(adresse);
                s.setNameSupplier(name);
                s.setEmail(email);
                s.setResponsableContact(contact);
                s.setStatus(1);
                s.setCategory(s.setCategoryValuesString(categoryValues));
                s.setIdSupplier(idSupplier);
                GenericDAO.updateById(s, idSupplier, null);
                
                response.sendRedirect("./supplier-list");

            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
