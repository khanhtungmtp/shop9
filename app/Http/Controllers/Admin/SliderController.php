<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Slider\SliderRequest;
use App\Http\Services\Slider\SliderService;
use App\Models\Slider;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    protected $sliderService;

    public function __construct(SliderService $sliderService)
    {
        $this->sliderService = $sliderService;
    }

    public function index()
    {
        return view('admin.slider.add', [
            'title' => 'Thêm mới slider'
        ]);
    }

    public function store(SliderRequest $request)
    {
        $this->sliderService->store($request);
        return redirect()->back();
    }

    public function list()
    {
        return view('admin.slider.list', [
            'title'   => 'Danh sách slider',
            'sliders' => $this->sliderService->get()
        ]);
    }

    public function show(Slider $slider)
    {
        return view('admin.slider.edit', [
            'title'  => 'Sửa slider',
            'slider' => $slider
        ]);
    }

    public function update(SliderRequest $request, Slider $slider)
    {
        $slider = $this->sliderService->update($request, $slider);
        if ($slider)
        {
            return redirect()->route('listSlider');
        }
        return redirect()->back();
    }

    public function destroy(Request $request): JsonResponse
    {
        $slide = $this->sliderService->destroy($request);
        if ($slide)
        {
            return response()->json([
                'error'   => false,
                'message' => 'Xóa thành công slider'
            ]);
        }
        return response()->json([
            'error' => true
        ]);
    }
}
