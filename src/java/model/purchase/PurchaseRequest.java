/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.purchase;

import generalisation.GenericDAO.GenericDAO;
import generalisation.annotations.DBField;
import generalisation.annotations.DBTable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.article.Article;
import model.base.Service;
import model.base.Utilisateur;

/**
 *
 * @author To Mamiarilaza
 */
@DBTable(name = "purchase_request", sequenceName = "seq_purchase_request")
public class PurchaseRequest {
    // Field
    @DBField(name = "id_purchase_request", isPrimaryKey = true)
    int idPurchaseRequest;
    
    @DBField(name = "sending_date")
    LocalDate sendingDate;
    
    @DBField(name = "id_utilisateur", isForeignKey = true)
    Utilisateur utilisateur;
    
    @DBField(name = "id_service", isForeignKey = true)
    Service service;
    
    @DBField(name = "title")
    String title;
    
    @DBField(name = "description")
    String description;
    
    @DBField(name = "status")
    int status;
    
    List<ArticleQuantity> articleQuantityList = new ArrayList<>();
    
    // Getter and setter

    public int getIdPurchaseRequest() {
        return idPurchaseRequest;
    }

    public void setIdPurchaseRequest(int idPurchaseRequest) {
        this.idPurchaseRequest = idPurchaseRequest;
    }

    public LocalDate getSendingDate() {
        return sendingDate;
    }

    public void setSendingDate(LocalDate sendingDate) {
        this.sendingDate = sendingDate;
    }

    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }

    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public List<ArticleQuantity> getArticleQuantityList() {
        return articleQuantityList;
    }

    public void setArticleQuantityList(List<ArticleQuantity> articleQuantityList) {
        this.articleQuantityList = articleQuantityList;
    }
    
    // Constructor

    public PurchaseRequest() {
    }

    public PurchaseRequest(LocalDate sendingDate, Utilisateur utilisateur, Service service, String title, String description, int status) {
        this.sendingDate = sendingDate;
        this.utilisateur = utilisateur;
        this.service = service;
        this.title = title;
        this.description = description;
        this.status = status;
    }

    public PurchaseRequest(int idPurchaseRequest, LocalDate sendingDate, Utilisateur utilisateur, Service service, String title, String description, int status) {
        this.idPurchaseRequest = idPurchaseRequest;
        this.sendingDate = sendingDate;
        this.utilisateur = utilisateur;
        this.service = service;
        this.title = title;
        this.description = description;
        this.status = status;
    }
    
///Fonctions
     // ajouter un article dans une demande
    public ArticleQuantity addArticleQuantity(String article, String quantity) throws Exception {
        if (article.trim().equals("")) {
            throw new Exception("L'article ne doit pas être vide !");
        }
        if (quantity.trim().equals("")) {
            throw new Exception("La quantite ne doit pas être vide !");
        }

        Double quantityParsed;
        try {
            quantityParsed = Double.valueOf(quantity);
        } catch (Exception e) {
            throw new Exception("La valeur du quantite doit être un nombre !");
        }

        if(quantityParsed < 0) {
            throw new Exception("La valeur du quantite doit etre un nombre positif");
        }
        Article articleFinding = GenericDAO.findById(Article.class, Integer.valueOf(article), null);
        ArticleQuantity articleQuantity = new ArticleQuantity(articleFinding, quantityParsed, 0, 0.0, 1);

        this.getArticleQuantityList().add(articleQuantity);

        return articleQuantity;
    }

}
