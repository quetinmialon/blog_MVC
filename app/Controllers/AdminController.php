<?php
namespace App\Controllers;
use App\Controllers\Controller;

class AdminController extends Controller {
    public function index(){

    return $this->view('admin.html');
}
}