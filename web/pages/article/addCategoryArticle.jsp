<div class="page-header">
    <h3 class="page-title">
        <span class="page-title-icon bg-gradient-primary text-white me-2">
            <i class="mdi mdi-home"></i>
        </span> Gestion des categories
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
    <div class="col-6 grid-margin mx-auto">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Insertion nouvelle categorie</h4>
                <div class="mt-4">
                    <form action="./add-categorie" method="POST">
                        <div class="form-group">
                            <label for="exampleInputUsername1">Code</label>
                            <input type="text" class="form-control" id="exampleInputUsername1"
                                placeholder="CAT0000" name="code" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Categorie</label>
                            <input type="text" class="form-control" id="exampleInputEmail1"
                                placeholder="Cache bouche" name="designation" required >
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Description</label>
                            <input type="text" class="form-control" id="exampleInputPassword1"
                                   placeholder="Utilise pour protection sanitaire" name="description">
                        </div>
                        <% if(request.getAttribute("error") != null) { %>
                        <p class="text-error"><i class="mdi mdi-information-outline"></i><%=request.getAttribute("error") %></p>
                        <% } %>
                        <button type="submit"
                            class="btn btn-gradient-primary px-5 me-2">Valider</button>
                        <a  href="./add-article" class="btn btn-light">Cancel</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

