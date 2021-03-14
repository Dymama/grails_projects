package fr.mbds.grails

import fr.mbds.grails.Annonce
import grails.converters.JSON
import grails.converters.XML
import grails.plugin.springsecurity.annotation.Secured


@Secured(value=["hasRole('ROLE_ADMIN')"])
class ApiController {

    // Annonce Singleton
    // Requêtes GET / PUT / DELETE / PATCH
    // Joignable sur /api/annonce/id
    def annonce() {
        switch (request.getMethod()) {
            case "GET":
                // On vérifie que le paramètre ID soit bien spécifié sinon erreur 400
                if (!params.id)
                    return response.status = 400
                // On récupère l'instance associée à l'ID et si l'instance est nulle alors on rend une 404
                def annonceInstance = Annonce.get(params.id)
                if (!annonceInstance)
                    return response.status = 404
                // Ici on est certain que l'annonce est bien définie et qu'elle existe dans notre base de données
                doSerialize(annonceInstance)
                break
            case "PUT":
                // Mise à jour complete des informations d'une ressource
                // Si on ne récupère pas toutes les informations pour mettre à jour tous les champs de l'annonce
                // On retourne une erreur
//                TODO : implémenter PUT
                break
            case "PATCH":
                // Mise à jour partielle des informations d'une ressource
                // Mettre à jour tous les champs qui sont spécifiés dans la requete
//                TODO : implémenter PATCH
                break
            case "DELETE":
//                TODO : implémenter DELETE
                break
            default:
                return response.status = 405
        }
        return response.status = 406
    }

    // Collection d'annonces
    // Requêtes GET / POST
    // Joignable sur /api/annonces
    // POST : Données sont dans le body > Récupération des données depuis : "request.JSON / request.XML"
    // body > username & password > request.JSON.username / request.JSON.password
    def annonces() {

    }

    def doSerialize(def instance) {
        switch (request.getHeader("Accept")) {
            case 'json':
            case 'text/json':
            case 'application/json':
                render instance as JSON
                break
            case 'xml':
            case 'text/xml':
            case 'application/xml':
                render instance as XML
                break
        }
    }

}
