<?php

namespace App\Middlewares;

use MVC\Middleware;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\Session;
use MVC\HttpException;

class Guest extends Middleware{
    public function handle(Request $request, Response $response, Session $session):void{
       if(! isGuest()){
        $response->setStatusCode(Response::HTTP_FOUND);
        $response->headers->set('Location','/compte');
        $response->send();
       };

    }

}