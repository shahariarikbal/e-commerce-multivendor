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

        try {
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

            $post = [
                'author_id'        => auth()->user()->id,
                'title'            => $request->title,
                'body'             => $request->body,
                'excerpt'          => $request->excerpt,
                'slug'             => $request->slug,
                'status'           => $request->status,
                'post_cat_id'      => $request->category_id,
                'meta_description' => $request->meta_description,
                'meta_keywords'    => $request->meta_keywords,
                'seo_title'        => $request->seo_title,
                'pdf'              => $pdfRename,
                'image'            => json_encode($images)
            ];

            Post::create($post);
        } catch (\Throwable $th) {
            return 'Something went wrong'.' '.$th;
        }
    }
}
