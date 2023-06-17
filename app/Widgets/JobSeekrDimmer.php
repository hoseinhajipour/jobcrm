<?php

namespace App\Widgets;

use App\Models\User;
use TCG\Voyager\Widgets\BaseDimmer;

class JobSeekrDimmer extends BaseDimmer
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
        $count = User::where("role_id", 3)->count();

        $text = "<p>all JobSeekrs $count</p>";


        return view('voyager::dimmer', array_merge($this->config, [
            'icon' => 'voyager-news',
            'title' => "{$count} ",
            'text' => $text,
            'button' => [
                'text' => 'View All Users',
                'link' => route('voyager.users.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/02.jpg'),
        ]));
    }


}
