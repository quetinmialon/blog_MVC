<?php
namespace App\Controllers;
use App\Controllers\Controller;
use App\Models\User;
use Symfony\Component\HttpFoundation\Response;


class RegisterController extends Controller {
    public function showRegisterForm (){

        return $this->view('register.html');
    }


    public function subscribe():Response{

        $validated = $this->request->validate($this->request->request->all(), [
            'name'=>['required'],
            'email' => ['required', 'email'], 
            'password' => ['required',['lengthMin',8],['equals','password_confirmation']],
            ], $this->session);
        if (! $validated){
            $this->response->setStatusCode(Response::HTTP_FOUND);
            $this->response->headers->set('Location','/inscription');
            return $this->response;
        }
        
        $user = new User;
        $user->name = $validated['name'];
        $user->email = $validated['email'];
        $user->password = password_hash($validated['password'],PASSWORD_DEFAULT);
        $user->save();
        $this->session->set('user_id',$user['id']);
        $this->response->setStatusCode(Response::HTTP_FOUND);
        $this->response->headers->set('Location','/compte');
        return $this->response;
    }

  
    // public function subscribe(){
    //     $name = $this->input('name');
    //     $email = $this->input('email');
    //     $password = $this->input('password');

    //     User::create([
    //         'name' => $name,
    //         'email' => $email,
    //         'password' => $password
    //     ]);

    //     return $this->view('login.html');
    // }
}