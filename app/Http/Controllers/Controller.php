<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Support\Facades\View;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\URL;

class Controller extends BaseController
{
  use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
  protected $id_kecamatan;
  function __construct()
  {

    // $this->id_kecamatan = $this->getIdkecamatan();
    $this->id_kecamatan = URL::to('/');

    $this->setUsers();
    View::share('visitors', $this->getAllVisitors());
    View::share('visitorToday', $this->getVisitorsToday());
    View::share('userOnline', $this->getUserOnline());
    View::share('hitToday', $this->hitToday());
    View::share('totalHit', $this->totalHit());
    View::share('favicon', $this->favicon());
    View::share('logo', $this->logo());
    View::share('getsitus', $this->getsitus());
    View::share('getsosmed', $this->getsosmed());
    View::share('profils', $this->getProfil());
    View::share('jajaran', $this->getJajaran());
  }

  public function setUsers()
  {
    $date = \Carbon\Carbon::now()->format('Y-m-d');
    $ip = \Request::ip();
    $time = time();
    $data = [
      'ip' => $ip,
      'date' => $date,
      'online' => $time,
      'hit' => 1
    ];
    $user = \App\Models\Visitor::where('ip', $ip)->where('date', $date)->get();
    if (count($user) == 0) {
      $insertUser = \App\Models\Visitor::insert($data);
    } else {
      $data['hit'] = $user[0]->hit + 1;
      $updateUser = \App\Models\Visitor::where('ip', $ip)->where('date', $date)->update($data);
    }
  }

  public function getAllVisitors()
  {
    $visitors = \App\Models\Visitor::count('ip');
    return $visitors;
  }

  public function getVisitorsToday()
  {
    $visitorToday = \App\Models\Visitor::where('date', \Carbon\Carbon::now()->format('Y-m-d'))->count();
    return $visitorToday;
  }

  public function getUserOnline()
  {
    $time = time() - 300;
    $userOnline = \App\Models\Visitor::where('online', '>', $time)->count();
    return $userOnline;
  }

  public function hitToday()
  {
    $hitToday = \App\Models\Visitor::where('date', \Carbon\Carbon::now()->format('Y-m-d'))->sum('hit');
    return $hitToday;
  }

  public function totalHit()
  {
    $totalHit = \App\Models\Visitor::sum('hit');
    return $totalHit;
  }

  public function getsosmed()
  {
    $sosmed = \App\Models\SocialMedia::where('status', 'show')->latest()->get();
    return $sosmed;
  }

  public function getsitus()
  {
    $situs = \App\Models\Website::latest()->first();
    if (empty($situs)) {
      return 0;
    } else {
      return $situs;
    }
  }

  public function favicon()
  {
    $web = \App\Models\Website::latest()->first();
    if (empty($web)) {
      return 0;
    } else {
      return $favicon = $web->favicon;
    }
  }

  public function logo()
  {
    $web = \App\Models\Website::latest()->first();
    if (empty($web)) {
      return 0;
    } else {
      return $logo = $web->logo;
    }
  }

  public function getProfil()
  {
    $profil = \App\Models\Profile::where('status', 'show')->get();
    return $profil;
  }

  public function getJajaran()
  {
    $profil = \App\Models\Field::where('status', 'show')->get();
    return $profil;
  }
  public function getIdkecamatan()
  {
    $url = URL::to('/');
    $kecamatan = \App\Models\Kecamatan::where('url', $url)->get();
    return $kecamatan;
  }
}
