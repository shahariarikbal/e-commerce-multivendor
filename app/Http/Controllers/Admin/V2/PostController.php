<?php

namespace App\Http\Controllers\Admin\V2;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Models\Post;

class PostController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'pdf'   => 'required|max:10000',
            'image' => 'max:5|required', // checks length of array
            'image.*' => 'max:2048', // checks file size        
        ]);
        
        if ($request->file('pdf')[0]->getClientOriginalExtension() !== 'pdf') {
            $request->validate([
                'pdf'   => 'mimes:pdf',
            ]);
        }

        $pdfName = $request->file('pdf')[0]->getClientOriginalName();
        $pdfRename = time().'_'.$pdfName;
        $request->file('pdf')[0]->storeAs('public/posts/', $pdfRename);

        $images = [];
        foreach ($request->file('image') as $image) {
            $imageName = $image->getClientOriginalName();
            $imageRename = time().'_'.$imageName;
            $image->storeAs('public/posts/', $imageRename);
            $images[] = $imageRename;
        }

        $post = new Post();
        $post->author_id = auth()->user()->id;
        $post->title = $request->title;
        $post->body = $request->body;
        $post->excerpt = $request->excerpt;
        $post->slug = $request->slug;
        $post->status = $request->status;
        $post->post_cat_id = $request->post_cat_id;
        $post->meta_description = $request->meta_description;
        $post->meta_keywords = $request->meta_keywords;
        $post->seo_title = $request->seo_title;
        $post->pdf = $pdfRename;
        $post->image = json_encode($images);
        $post->save();

        return redirect()->back()->with('success', 'Post stored successfully .');
    }
}
