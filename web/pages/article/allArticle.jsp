<%@page import="java.util.List"%>
<%@page import="model.article.Category"%>
<%@page import="model.article.Article"%>
<%@page import="model.article.Unity"%>

<div class="page-header">
    <h3 class="page-title">
        <span class="page-title-icon bg-gradient-primary text-white me-2">
            <i class="mdi mdi-home"></i>
        </span> Gestion des articles
    </h3>
    <nav aria-label="breadcrumb">
        <ul class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">
                <span></span>Overview <i
                    class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
            </li>
        </ul>
    </nav>
</div>
<div class="row">
    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Listes des articles</h4>
                <div class="mt-4 d-flex align-items-center justify-content-between">
                    <form action="" method="POST">
                        <div class="input-groups d-flex align-items-center">
                            <input type="text" class="form-control"
                                placeholder="Nom de l'article">
                            <div>
                                <input type="button" class="mx-5 btn btn-gradient-primary"
                                    value="Chercher">
                            </div>
                        </div>
                    </form>
                    <div>
                        <a href="./add-article" class="btn btn-gradient-primary">Nouvelle
                            article</a>
                    </div>
                </div>
                <div class="table-responsive mt-4">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th> Code </th>
                                <th> Designation </th>
                                <th> Description </th>
                                <th> Categorie </th>
                                <th> Unite </th>
                                <th> TVA </th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <% if(request.getAttribute("articles") != null) { 
                                List<Article> articles = (List<Article>)request.getAttribute("articles");
                                for(int i = 0; i < articles.size(); i++) {
                            %>
                            <tr>
                                <td><a href="" style="text-decoration: none;"><%=articles.get(i).getCode() %></a></td>
                                <td><%=articles.get(i).getDesignation() %></td>
                                <td><%=articles.get(i).getDescription() %></td>
                                <td><%=articles.get(i).getCategory().getDesignation() %></td>
                                <td><%=articles.get(i).getUnity().getName() %></td>
                                <td><%=articles.get(i).getTva() %></td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <a href="./EditArticle?idArticle=<%=articles.get(i).getIdArticle() %>" class="text-warning action-icon"><i class="mdi mdi-settings"></i></a>
                                        <a href="./DeleteArticle?idArticle=<%=articles.get(i).getIdArticle() %>" class="text-danger action-icon"><i class="mdi mdi-delete"></i></a>
                                    </div>
                                </td>
                            </tr>
                            <% } } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

                