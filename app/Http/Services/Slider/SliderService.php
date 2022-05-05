<?php

namespace App\Http\Services\Slider;

use App\Models\Slider;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;

class SliderService
{
    public function store($request):bool
    {
        try
        {
            Slider::create($request->input());
            Session::flash('success', 'Thêm silder thành công');
        } catch (\Exception $err)
        {
            Session::flash('error', 'Thêm slider thất bại');
            Log::info($err->getMessage());
            return false;
        }
        return true;
    }

    public function get()
    {
        return Slider::orderByDesc('id')->paginate(15);
    }

    public function update($request, $slider):bool
    {
        try
        {
            $slider->fill($request->input());
            $slider->save();
            Session::flash('success', 'Cập nhập thành công');
        }catch (\Exception $err){
            Log::info($err->getMessage());
            Session::flash('error', 'Cập nhập thất bại');
            return false;
        }
        return true;
    }

    public function destroy($request):bool
    {
        $slider = Slider::where('id', $request->input('id'))->first();
        if ($slider){
            $path = str_replace('storage', 'public', $request->thumb);
            Storage::delete($path);
            $slider->delete();
            return true;
        }
        return false;
    }
}
