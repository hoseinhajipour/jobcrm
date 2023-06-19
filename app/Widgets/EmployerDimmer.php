<?php

namespace App\Widgets;

use App\Models\User;
use TCG\Voyager\Widgets\BaseDimmer;

class EmployerDimmer extends BaseDimmer
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
        $count = User::where("role_id", 4)->count();

        $text = "<p>모든 고용주 $count</p>";


        return view('voyager::dimmer', array_merge($this->config, [
            'icon' => 'voyager-news',
            'title' => "{$count} ",
            'text' => $text,
            'button' => [
                'text' => '모든 사용자 보기',
                'link' => route('voyager.users.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/02.jpg'),
        ]));
    }


}
