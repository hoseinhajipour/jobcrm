<?php

namespace App\Actions;

use TCG\Voyager\Actions\AbstractAction;

class ViewResumes extends AbstractAction
{
    public function getTitle()
    {
        return 'View Resumes';
    }

    public function getIcon()
    {
        return 'voyager-eye';
    }

    public function getPolicy()
    {
        return 'read';
    }

    public function getAttributes()
    {
        return [
            'class' => 'btn btn-sm btn-primary pull-right',
        ];
    }
    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'jobs';
    }
    public function getDefaultRoute()
    {
        $jobId = $this->data->{$this->data->getKeyName()};
        return "view-resume-job?id={$jobId}";
    }
}
