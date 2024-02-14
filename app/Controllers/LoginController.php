<?php
namespace App\Controllers;
use App\Controllers\Controller;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session;
use App\Models\User;

class LoginController extends Controller {
    public function showLoginForm(){

    return $this->view('login.html');
}
    public function login():Response{

        // $this->request->request->all() est un tableau contenant les données de formulaires soumis avec une méthode POST
        $validated = $this->request->validate($this->request->request->all(), [
        'email' => ['required', 'email'], // Champ requis au format e-mail
        'password' => ['required'], // Champ requis
        ], $this->session);

        if (! $validated){
            $this->response->setStatusCode(Response::HTTP_FOUND);
            $this->response->headers->set('Location','/connexion');
            return $this->response;
           
        }

        $user = User::where('email',$validated['email'])->first();

        if (! $user){
        // On stocke toutes les valeurs du formulaire dans la variable de session flash "old"
        $this->session->getFlashBag()->set('old', $this->request->request->all());
        // On créé une erreur pour que mon utilisateur sache que ces identifiants sont erronés
        $this->session->getFlashBag()->set('errors', [
        'email' => ['Identifiants erronés']// L'erreur sera affichée sur le champ e-mail
        ]);
        $this->response->setStatusCode(Response::HTTP_FOUND);
        $this->response->headers->set('Location','/connexion');
        return $this->response;;
        }

        if (! password_verify($validated['password'], $user['password'])){
        // On stocke toutes les valeurs du formulaire dans la variable de session flash "old"
        $this->session->getFlashBag()->set('old', $this->request->request->all());
        // On créé une erreur pour que mon utilisateur sache que ces identifiants sont erronés
        $this->session->getFlashBag()->set('errors', [
        'email' => ['Identifiants erronés']// L'erreur sera affichée sur le champ e-mail
        ]);
        $this->response->setStatusCode(Response::HTTP_FOUND);
        $this->response->headers->set('Location','/connexion');
        return $this->response;
        }

        $this->session->set('user_id',$user['id']);

        $this->response->setStatusCode(Response::HTTP_FOUND);
        $this->response->headers->set('Location','/compte');
        return $this->response;
        }


}