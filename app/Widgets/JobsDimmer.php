<?php

namespace App\Widgets;

use App\Models\Job;
use TCG\Voyager\Widgets\BaseDimmer;

class JobsDimmer extends BaseDimmer
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
        $count = Job::all()->count();

        $text = "<p>모든 작업 $count</p>";


        return view('voyager::dimmer', array_merge($this->config, [
            'icon' => 'voyager-news',
            'title' => "{$count} ",
            'text' => $text,
            'button' => [
                'text' => '모든 작업 보기',
                'link' => route('voyager.jobs.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/02.jpg'),
        ]));
    }


}
