<?php

namespace App\Controllers;

use MVC\Request;
use MVC\Twig;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\Session;

class Controller
{
    public function __construct(
        protected Request $request,
        protected Response $response,
        protected Twig $twig,
        protected Session $session
    ) {}

    protected function view(string $template, array $data = []): Response
    {
        // On met le contenu de notre réponse ...
        return $this->response->setContent(
            // Qui sera la vue générée par Twig
            $this->twig->render($template, $data)
        );
    }
    // protected function input(string $key) //ma version chuitrotriste T_T
    // {
    // return $this->request->get($key);
    // }
}
