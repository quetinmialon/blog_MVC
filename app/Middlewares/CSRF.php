<?php

namespace App\Middlewares;

use MVC\Middleware;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\Session;
use MVC\HttpException;

class CSRF extends Middleware{
    public function handle(Request $request, Response $response, Session $session):void{
        $httpMethod = $request -> getMethod();

        $badToken = $request->request->get('_token') !== $session->get('_token');

        if ($httpMethod !== 'GET' && $badToken){
            throw new httpException('CSRF spoted',403);
        }

        $session->set('_token',bin2hex(random_bytes(35))); 
    }
}

