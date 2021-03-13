@extends('voyager::master')

@section('page_title', 'Viendo Investigación')

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-browser"></i> Viendo Investigación
    </h1>
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body">
                        <h3 class="text-justify">{{ $proyecto->nombre }}</h3><br>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Instituto(s)</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p>
                                        @php
                                            $entidad_id = explode(',', $proyecto->entidad_id);
                                        @endphp
                                        @foreach($entidades as $entidad)
                                            @foreach($entidad_id as $item)
                                                @if($item == $entidad->id)
                                                <b> {{ $entidad->nombre }}</b><br>
                                                @endif
                                            @endforeach
                                        @endforeach
                                    </p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Tipo de investigación</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b>{{ $proyecto->tipo }}</b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Responsable</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p>
                                        @foreach($personas as $persona)
                                            @if($persona->id == $proyecto->responsable)
                                            <b>{{ $persona->nombre }} {{ $persona->apellidos }}</b>
                                            @endif
                                        @endforeach
                                    </p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Participantes</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p>
                                        @php
                                            $participantes = explode(',', $proyecto->participantes);
                                        @endphp
                                        @foreach($personas as $persona)
                                            @foreach($participantes as $participante)
                                                @if($participante == $persona->id)
                                                <b> {{ $persona->nombre }} {{ $persona->apellidos }}, </b>
                                                @endif
                                            @endforeach
                                        @endforeach
                                    </p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Porcentaje de avance</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b>{{ $proyecto->avance }}%</b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Año de inicio</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b>{{ $proyecto->anio }}</b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Área(s) de investigación</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p>
                                        @php
                                            $area_id = explode(',', $proyecto->area_id);
                                        @endphp
                                        @foreach($areas as $area)
                                            @foreach($area_id as $item)
                                                @if($area->id == $item)
                                                <b> {{ $area->nombre }}, </b>
                                                @endif
                                            @endforeach
                                        @endforeach
                                    </p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Estado actual</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b>{{ $proyecto->estado_actual }}</b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                        </div>
                        @if($proyecto->observaciones)
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Observaciones</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    {!! $proyecto->observaciones !!}
                                </div>
                                <hr style="margin:0;">
                            </div>
                        </div>
                        @endif
                        @if($proyecto->archivo)
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Documento</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <iframe style="width:100%;height:700px" src="{{ url('storage').'/'.$proyecto->archivo }}"></iframe>
                                </div>
                                <hr style="margin:0;">
                            </div>
                        </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>


@stop

@section('javascript')
    <script>
        $(document).ready(function(){

        });
    </script>
@stop
