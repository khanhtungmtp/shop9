<?php

namespace App\Http\Requests\Slider;

use Illuminate\Foundation\Http\FormRequest;

class SliderRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize():bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules():array
    {
        return [
            'title' => 'required',
            'thumb' => 'required',
        ];
    }

    public function messages():array
    {
        return [
            'title.required' => 'Tiêu đề không được bỏ trống',
            'thumb.required' => 'Ảnh slider không được bỏ trống',
        ];
    }
}
