<div class="page-header">
    <h3 class="page-title">
        <span class="page-title-icon bg-gradient-primary text-white me-2">
            <i class="mdi mdi-home"></i>
        </span> Demandes d'achat
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
    <div class="col-8 grid-margin mx-auto">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Detail demande achat</h4>
                <h6>Demande N° : REQ0001</h6>
                <div class="mt-4">
                    <form action="" method="POST">
                        <div class="form-group">
                            <label for="exampleInputUsername1">Titre du demande</label>
                            <input type="text" name="title" class="form-control" id="exampleInputUsername1"
                                    placeholder="Demande mensuel du departement" value="Besoin en materiel mensuel">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Description</label>
                            <textarea name="description" class="form-control" id="" cols="30" rows="10">Comme pour chaque mois,  nous avons besoins de ces materiels pour la production</textarea>
                        </div>
                        <div class="row align-items-end">
                            <div class="form-group col-md-5">
                                <label for="article">Article</label>
                                <select name="article" class="form-control form-control-sm input-height mt-2" id="">
                                    <option value="">Cache bouche</option>
                                    <option value="">Ordinateur</option>
                                </select>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="article">Quantite</label>
                                <input type="number" class="form-control mt-2" value="10"  name="quantite">
                            </div>
                            <div class="form-group col-md-3">
                                <label for=""></label>
                                <input type="button" class="btn btn-gradient-primary" value="Ajouter">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-8">
                                <table class="table">
                                    <thead>
                                        <tr>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>ART0001</td>
                                            <td>Cache bouche</td>
                                            <td>20</td>
                                            <td>Unite</td>
                                            <td><a href="" class="action-icon text-danger"><i class="mdi mdi-delete"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>ART0001</td>
                                            <td>Cache bouche</td>
                                            <td>20</td>
                                            <td>Litre</td>
                                            <td><a href="" class="action-icon text-danger"><i class="mdi mdi-delete"></i></a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <p class="text-error"><i class="mdi mdi-information-outline"></i> Veillez remplir toutes les champs</p>
                        <div class="mt-3">
                            <button type="submit"
                                    class="btn btn-gradient-primary px-5 me-2">Modifier demande</button>
                            <a  href="../../purchase-request-list" class="btn btn-light">Cancel</a>
                        </div>
                        <div class="mt-3">
                            <a href="" class="btn btn-gradient-danger px-5 me-2">Valide</a>
                            <a href="" class="btn btn-gradient-success px-5 me-2">Refuse</a>
                            <br>
                            <a  href="../../purchase-request-list" class="btn btn-light mt-3">Cancel</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
