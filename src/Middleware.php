<?php 

namespace MVC;

use Symfony\Component\HttpFoundation\Response;

use Symfony\Component\HttpFoundation\Session\Session;

abstract class Middleware
{
    abstract public function handle(Request $request, Response $response, Session $session):void;

    
}