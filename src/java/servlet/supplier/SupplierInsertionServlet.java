/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet.supplier;

import generalisation.GenericDAO.GenericDAO;
import java.io.IOException;
import java.io.PrintWriter;
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
 * @author To Mamiarilaza
 */
@WebServlet(name = "SupplierInsertionServlet", urlPatterns = {"/supplier-insertion"})
public class SupplierInsertionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // All required assets
            List<String> css = new ArrayList<>();
            css.add("assets/css/supplier/supplier.css");

            List<String> js = new ArrayList<>();

            request.setAttribute("css", css);
            request.setAttribute("js", js);

            List<Category> categories = (List<Category>) GenericDAO.directQuery(Category.class, "SELECT * FROM category WHERE status = 1", null);
            request.setAttribute("listCategory", categories);
            // Page definition
            request.setAttribute("title", "Insertion fournisseur");
            request.setAttribute("contentPage", "./pages/supplier/newSupplierInsertion.jsp");

            request.getRequestDispatcher("./template.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
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
            String[] categoryValues = request.getParameterValues("category");

            if (categoryValues != null && categoryValues.length > 0) {
          
                Supplier s = new Supplier();
                s.setAdresse(adresse);
                s.setNameSupplier(name);
                s.setEmail(email);
                s.setResponsableContact(contact);
                s.setCategory(s.setCategoryValuesString(categoryValues));
                s.setStatus(1);
                GenericDAO.save(s, null);

                response.sendRedirect("./supplier-list");

            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
