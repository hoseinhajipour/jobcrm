<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jobs', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('areas_of_recruitment');
            $table->string('type_of_employment');
            $table->integer('number_of_recruits');
            $table->string('gender');
            $table->string('age');
            $table->string('education');
            $table->string('day_of_the_week');
            $table->time('working_time');
            $table->time('closing_time');
            $table->string('break_time')->nullable();
            $table->string('preferential_conditions')->nullable();
            $table->string('salary');
            $table->string('damdam_place_name');
            $table->boolean('meal_included')->default(false);
            $table->boolean('negotiable')->default(false);
            $table->boolean('probation_period')->default(false);
            $table->boolean('performance_pay')->default(false);
            $table->string('contact');
            $table->string('fax_number')->nullable();
            $table->string('email');
            $table->string('address');
            $table->text('description');
            $table->boolean('agreed')->default(false);
            $table->integer('user_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jobs');
    }
}
