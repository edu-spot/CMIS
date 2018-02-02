if (Auth::user() &&  Auth::user()->user_type == 'A')
@extends('admin\layouts.app')
else
@extends('Student\layouts.app')