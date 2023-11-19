/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.supplier;

import generalisation.annotations.DBTable;
import generalisation.annotations.DBField;
import java.util.List;
import model.article.Category;

/**
 *
 * @author Fy Botas
 */
@DBTable(name = "supplier", sequenceName = "seq_supplier")
public class Supplier {

    @DBField(name = "id_supplier", isPrimaryKey = true)
    int idSupplier;
    @DBField(name = "name_supplier")
    String nameSupplier;
    @DBField(name = "responsable_contact")
    String responsableContact;
    @DBField(name = "email")
    String email;
    @DBField(name = "adress")
    String adresse;
    @DBField(name = "category_product")
    String category;
    @DBField(name = "status")
    int status;

    // fonction pour voir une seule string venant d'un tableau de string
    public String setCategoryValuesString(String[] categoryValues) {
        StringBuilder concatenatedValues = new StringBuilder(categoryValues[0]);

        for (int i = 1; i < categoryValues.length; i++) {
            concatenatedValues.append(",").append(categoryValues[i]);
        }

        String categoryString = concatenatedValues.toString();
        return categoryString;
    }

    public Supplier(int idSupplier, String nameSupplier, String responsableContact, String email, String adresse, String category, int status) {
        this.idSupplier = idSupplier;
        this.nameSupplier = nameSupplier;
        this.responsableContact = responsableContact;
        this.email = email;
        this.adresse = adresse;
        this.category = category;
        this.status = status;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Supplier() {
    }

    public int getIdSupplier() {
        return idSupplier;
    }

    public void setIdSupplier(int idSupplier) {
        this.idSupplier = idSupplier;
    }

    public String getNameSupplier() {
        return nameSupplier;
    }

    public void setNameSupplier(String nameSupplier) {
        this.nameSupplier = nameSupplier;
    }

    public String getResponsableContact() {
        return responsableContact;
    }

    public void setResponsableContact(String responsableContact) {
        this.responsableContact = responsableContact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
