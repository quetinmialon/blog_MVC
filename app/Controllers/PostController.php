<?php
namespace App\Controllers;
use App\Controllers\Controller;
use App\Models\Post; 
use App\Models\Comment; 
use Symfony\Component\HttpFoundation\Response;


class PostController extends Controller
{
    public function index()
    {
        
        $posts = Post::latest()->get();                
        return $this->view('index.html', ['posts' => $posts]);
       
    }
    public function show(string $slug){

        $query = Post::where('slug',$slug);
        $post = $query->first();
        if (! $post){
            throw new \Exception("404 page not found");
        }
        return $this->view('post.html',['post'=>$post]);

    }

    public function comment(String $slug){
        $query = Post::where('slug',$slug);
        $post = $query->first();
        if (! $post){
            throw new \Exception("404 page not found");
        }
        $validated = $this->request->validate($this->request->request->all(), [
            'comment'=>['required']
        ], $this->session);

        if (! $validated){
            $this->session->getFlashBag()->set('status','un commentaire vide ne sera pas posté vilain ! ');
            $this->response->setStatusCode(Response::HTTP_FOUND);
            $this->response->headers->set('Location',"/articles/{$slug}");
            $this->response->send();
        }

        $comment = new Comment;
        $comment->content = $validated['comment'];
        $comment->post_id = $post['id'];
        $comment->user_id = $this->session->get('user_id');
        $comment->save();

        $this->session->getFlashBag()->set('status','Commentaire publié');


        $this->response->setStatusCode(Response::HTTP_FOUND);
        $this->response->headers->set('Location',"/articles/{$slug}");
        $this->response->send();
    }
}
