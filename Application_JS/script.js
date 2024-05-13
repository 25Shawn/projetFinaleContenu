document.getElementById('formulaire').addEventListener('submit', function(event) {
    event.preventDefault();

    var formData = {
        "nom": document.getElementById('nom').value,
        "prenom":document.getElementById('prenom').value,
        "courriel": document.getElementById('courriel').value,
        "mot_de_passe": document.getElementById('motDePasse').value
    };

    console.log(formData);

    const requestOptions = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(formData)
    };

     fetch('https://apiservicewebprojetfinale.onrender.com/api/usager/ajouterUtilisateur', requestOptions)
        .then(response => {
            return response.json();
        })
        .then(data => {
            console.log('Données ajoutées avec succès:', data);

            document.getElementById('reponse').innerHTML = formData.nom + ' ' + formData.prenom + ' a été ajouté avec succès. <br> Voici votre clé d\'accès: ' + data.cle_api + '. \n Conservez-la précieusement.';
        })
        .catch(error => {
            console.error('Erreur lors de l\'ajout des données:', error);
            document.getElementById('reponse').innerHTML = 'Une erreur est survenue lors de l\'ajout des données: ' + error.message;
        });

});


document.getElementById('formulaireDemande').addEventListener('submit', function(event) {
    event.preventDefault();

    const data = {
        "courriel": document.getElementById('courrielDemande').value,
        "mot_de_passe": document.getElementById('motDePasseDemande').value
    };

    console.log(data);

    const requestOptions = {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    };

    fetch('https://apiservicewebprojetfinale.onrender.com/api/usager/demandeCleApi', requestOptions)
    .then(response => {
        if (!response.ok) {
            throw new Error('Erreur lors de l\'ajout des données: ' + response.status);
        }
        return response.json();
    })
    .then(data => {
        console.log('Cle generer avec succès:', data);
        document.getElementById('nouvelleCleApi').innerHTML = 'Voici votre nouvelle clé d\'api: ' + data.cle_api + '. <br> Conservez-la précieusement.';
    })
    .catch(error => {
        console.error('Erreur lors de l\'ajout des données:', error);
    });

});
