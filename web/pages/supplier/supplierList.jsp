<%@page import="java.util.List" %>
<%@page import="model.supplier.Supplier" %>
<%
    List<Supplier> listSuppliers = (List<Supplier>) request.getAttribute("listSupplier");
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
                <h4 class="card-title">Listes des fournisseurs</h4>
                <div class="mt-4 d-flex align-items-center justify-content-between">
                    <form action="" method="POST">
                        <div class="input-groups d-flex align-items-center">
                            <input type="text" class="form-control" placeholder="Nom du fournisseur">
                            <div>
                                <input type="button" class="mx-5 btn btn-gradient-primary" value="Chercher">
                            </div>
                        </div>
                    </form>
                    <div>
                        <a href="./supplier-insertion" class="btn btn-gradient-primary">Nouvelle fournisseur</a>
                    </div>
                </div>
                <div class="table-responsive mt-4">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th> ID </th>
                                <th> Nom </th>
                                <th> Adresse </th>
                                <th> Contact </th>
                                <th> Mail </th>
                                <th> Categories </th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (int i=0; i<listSuppliers.size();i++) { %>
                            <tr>
                                <td><a href="" style="text-decoration: none;">#<%= listSuppliers.get(i).getIdSupplier() %></a></td>
                                <td><%= listSuppliers.get(i).getNameSupplier() %></td>
                                <td><%= listSuppliers.get(i).getAdresse() %></td>
                                <td><%= listSuppliers.get(i).getResponsableContact() %></td>
                                <td><%= listSuppliers.get(i).getEmail() %></td>
                                <td><%= listSuppliers.get(i).getCategory() %></td>
                                <td><a href="./supplier-modification?idSupplier=<%= listSuppliers.get(i).getIdSupplier() %>" class="text-warning action-icon"><i class="mdi mdi-settings"></i></a><a
                                        href="./supplier-modification?idSupplier=<%= listSuppliers.get(i).getIdSupplier() %>&action=1" class="text-danger action-icon"><i class="mdi mdi-delete"></i></a></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>