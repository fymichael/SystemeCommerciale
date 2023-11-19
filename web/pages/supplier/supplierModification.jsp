<%@page import="java.util.List" %>
<%@page import="model.article.Category" %>
<%@page import="model.supplier.Supplier" %>
<%
    List<Category> listCategory = (List<Category>) request.getAttribute("listCategory");
    Supplier s = (Supplier) request.getAttribute("supplier");
%>
<div class="page-header">
    <h3 class="page-title">
        <span class="page-title-icon bg-gradient-primary text-white me-2">
            <i class="mdi mdi-home"></i>
        </span> Gestion des fournisseur
    </h3>
    <nav aria-label="breadcrumb">
        <ul class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">
                <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
            </li>
        </ul>
    </nav>
</div>
<div class="row">
    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Modification du fournisseur</h4>
                <div class="mt-4">
                    <form action="./supplier-modification" method="POST">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="exampleInputUsername1">Nom du fournisseur</label>
                                    <input type="text" class="form-control" id="exampleInputUsername1"
                                           placeholder="Username" name="name" value="<%= s.getNameSupplier() %>">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Adresse</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                           placeholder="Antananrivo Avenue Tokyo" name="adresse" value="<%= s.getAdresse() %>">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Contact du
                                        responsable</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1"
                                           placeholder="+261 00 000 00" name="contact" value="<%= s.getResponsableContact() %>">
                                </div>
                                <input type="hidden" name="idSupplier" value="<%= s.getIdSupplier() %>">
                                <div class="form-group">
                                    <label for="exampleInputConfirmPassword1">Mail</label>
                                    <input type="mail" class="form-control" id="exampleInputConfirmPassword1"
                                           placeholder="johnDoe@example.com" name="email" value="<%= s.getEmail() %>">
                                </div>
                                <p class="text-error"><i class="mdi mdi-information-outline"></i> Veillez remplir toutes les champs</p>
                                <button type="submit" class="btn btn-gradient-primary px-5 me-2">Valider</button>
                                <button class="btn btn-light">Cancel</button>
                            </div>
                            <div class="col-md-6">
                                <h6>Les categories de produits vendue</h6>
                                <hr>
                                <div class="form-group row mx-4">
                                   <% for (int i=0; i<listCategory.size();i++) { %>
                                    <div class="form-check col-md-6">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" name="category" value="<%= listCategory.get(i).getDesignation() %>">
                                            <%= listCategory.get(i).getDesignation() %> </label>
                                    </div>
                                    <% } %>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>