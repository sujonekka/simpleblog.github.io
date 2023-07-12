<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('sociallinks', function (Blueprint $table) {
            $table->id();
            $table->string('facebooklink', length: 500);
            $table->string('githublink', length: 500);
            $table->string('twitterlink', length: 500);
            $table->string('dribblelink', length: 500);
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent()->useCurrentOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sociallinks');
    }
};
