
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
    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Listes des demandes d'achat</h4>
                <div class="mt-4 d-flex align-items-center justify-content-between">
                    <form action="" method="POST">
                        <div class="input-groups d-flex align-items-center">
                            <div class="form-group me-4">
                                <label for="">Service</label>
                                <select name="" id=""
                                    class="form-control form-control-sm px-5 mt-2">
                                    <option value="">Informatique</option>
                                    <option value="">Direction</option>
                                </select>
                            </div>
                            <div class="form-group me-4">
                                <label for="">Etat du demande</label>
                                <select name="" id=""
                                    class="form-control form-control-sm px-5 mt-2">
                                    <option value="">Non traite</option>
                                    <option value="">Valide</option>
                                    <option value="">Refuse</option>
                                </select>
                            </div>
                            <div>
                                <input type="submit" class="mx-2 btn btn-gradient-primary"
                                    value="Chercher">
                            </div>
                        </div>
                    </form>
                    <div>
                        <a href="./purchase-request-insertion" class="btn btn-gradient-primary">Envoyer
                            demande</a>
                    </div>
                </div>
                <div class="table-responsive mt-2">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th> ID </th>
                                <th> Date </th>
                                <th> Service </th>
                                <th> Titre du demande </th>
                                <th> Etat </th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>REQ0001</td>
                                <td>01-01-2023</td>
                                <td>Informatique</td>
                                <td>Besoin mensuel du departement</td>
                                <td>
                                    <label class="badge badge-gradient-warning label-width">Non traite</label>
                                </td>
                                <td>
                                    <a href="./purchase-request-detail"><i class="mdi mdi-clipboard-text action-icon"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>REQ0001</td>
                                <td>01-01-2023</td>
                                <td>Informatique</td>
                                <td>Besoin mensuel du departement</td>
                                <td>
                                    <label class="badge badge-gradient-success label-width">Valide</label>
                                </td>
                                <td>
                                    <a href="./purchase-request-detail"><i class="mdi mdi-clipboard-text action-icon"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>REQ0001</td>
                                <td>01-01-2023</td>
                                <td>Informatique</td>
                                <td>Besoin mensuel du departement</td>
                                <td>
                                    <label class="badge badge-gradient-danger label-width">Refuse</label>
                                </td>
                                <td>
                                    <a href="./purchase-request-detail"><i class="mdi mdi-clipboard-text action-icon"></i></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

