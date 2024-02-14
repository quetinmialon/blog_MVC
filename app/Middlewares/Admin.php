<?php

namespace App\Middlewares;

use MVC\Middleware;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\Session;
use MVC\HttpException;

class Admin extends Middleware{
    public function handle(Request $request, Response $response, Session $session):void{
       if(! isAdmin()){
        throw new HttpException('vous n\avez pas les droits pour cette page',403);
       };

    }

}