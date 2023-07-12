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
        Schema::create('seoproperties', function (Blueprint $table) {
            $table->id();
            $table->enum('pagename',['home', 'about', 'service', 'project', 'blog', 'contact']);
            $table->string('keyword', length:500);
            $table->string('title', length: 200);
            $table->string('description', length:500);
            $table->string('ogsitename', length:200);
            $table->string('ogurl', length:200);
            $table->string('ogtitle', length:200);
            $table->string('ogdescription', length:500);
            $table->string('ogimg', length:200);
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent()->useCurrentOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('seoproperties');
    }
};
