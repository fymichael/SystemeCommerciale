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
    <div class="col-6 grid-margin mx-auto">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Insertion nouvelle article</h4>
                <div class="mt-4">
                    <form action="" method="POST">
                        <div class="form-group">
                            <label for="exampleInputUsername1">Code</label>
                            <input type="text" class="form-control" id="exampleInputUsername1"
                                placeholder="ART0000">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Designation</label>
                            <input type="text" class="form-control" id="exampleInputEmail1"
                                placeholder="Cache bouche">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Description</label>
                            <input type="text" class="form-control" id="exampleInputPassword1"
                                placeholder="Utilisé pour protection sanitaire">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">TVA</label>
                            <input type="number" class="form-control" id="exampleInputPassword1"
                                value="20">
                        </div>
                        <div class="form-group row align-items-end">
                            <div class="col-md-7">
                                <label for="">Categorie</label>
                                <select name="" class="form-select py-2" id="">
                                    <option value="">Hygiene</option>
                                    <option value="">Produits agricole</option>
                                </select>
                            </div>
                            <div class="col-md-5">
                                <a href="./add-categorie" class="btn btn-gradient-primary"><i class="mdi mdi-playlist-plus me-2 "></i> Ajouter</a>
                            </div>
                        </div>
                        <p class="text-error"><i class="mdi mdi-information-outline"></i> Veillez remplir toutes les champs</p>
                        <button type="submit"
                            class="btn btn-gradient-primary px-5 me-2">Valider</button>
                        <a  href="./all-article" class="btn btn-light">Cancel</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>