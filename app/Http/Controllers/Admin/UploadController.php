<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Http\Services\UploadService;

class UploadController extends Controller
{
    protected $uploadServices;
    public function __construct(UploadService $uploadService)
    {
        $this->uploadServices = $uploadService;
    }

    //
    public function store(Request $request):JsonResponse
    {
        $url = $this->uploadServices->store($request);
        if ($url !== false){
            return response()->json([
                'error' => false,
                'url' => $url
            ]);
        }
        return response()->json(['error' => true]);
    }
}
