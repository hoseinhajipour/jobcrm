<?php

namespace App\Widgets;

use App\Models\Resume;
use TCG\Voyager\Widgets\BaseDimmer;

class ResumesDimmer extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = Resume::all()->count();

        $text = "<p>모든 이력서 $count</p>";


        return view('voyager::dimmer', array_merge($this->config, [
            'icon' => 'voyager-news',
            'title' => "{$count} ",
            'text' => $text,
            'button' => [
                'text' => '모든 이력서 보기',
                'link' => route('ViewAllResumes', ["status" => "pending"]),
            ],
            'image' => voyager_asset('images/widget-backgrounds/02.jpg'),
        ]));
    }


}
