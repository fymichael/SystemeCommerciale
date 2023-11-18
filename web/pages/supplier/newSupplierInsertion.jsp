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
                <h4 class="card-title">Insertion nouvelle fournisseur</h4>
                <div class="mt-4">
                    <form action="" method="POST">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="exampleInputUsername1">Nom du fournisseur</label>
                                    <input type="text" class="form-control" id="exampleInputUsername1"
                                        placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Adresse</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                        placeholder="Antananrivo Avenue Tokyo">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Contact du
                                        responsable</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1"
                                        placeholder="+261 00 000 00">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputConfirmPassword1">Mail</label>
                                    <input type="mail" class="form-control" id="exampleInputConfirmPassword1"
                                        placeholder="johnDoe@example.com">
                                </div>
                                <p class="text-error"><i class="mdi mdi-information-outline"></i> Veillez remplir toutes les champs</p>
                                <button type="submit" class="btn btn-gradient-primary px-5 me-2">Valider</button>
                                <button class="btn btn-light">Cancel</button>
                            </div>
                            <div class="col-md-6">
                                <h6>Les categories de produits vendue</h6>
                                <hr>
                                <div class="form-group row mx-4">
                                    <div class="form-check col-md-6">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input">
                                            Produits hygienique </label>
                                    </div>
                                    <div class="form-check col-md-6">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" checked>
                                            Pharmacieutique </label>
                                    </div>
                                    <div class="form-check col-md-6">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input">
                                            Electronique </label>
                                    </div>
                                    <div class="form-check col-md-6">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input">
                                            Materiaux de construction </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>