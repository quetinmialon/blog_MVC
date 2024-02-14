<?php
namespace App\Controllers;
use App\Controllers\Controller;
use Symfony\Component\HttpFoundation\Response;



class LogoutController extends Controller {
    public function logout():Response{

        $this->session->remove('user_id');
        $this->response->setStatusCode(Response::HTTP_FOUND);
        $this->response->headers->set('Location','/connexion');
        return $this->response;

     }
}