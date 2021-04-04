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
                        <div class="page-header">
                            <h3>{{ $proyecto->nombre }}</h3>
                        </div>
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
                            <div class="col-md-12">
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
                                    <h3 class="panel-title">Estado actual</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b>{{ $proyecto->estado_actual }}</b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                            {{-- <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Año de inicio</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b>{{ $proyecto->anio }}</b></p>
                                </div>
                                <hr style="margin:0;">
                            </div> --}}
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Inversión Bs.</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b>{{ number_format($proyecto->monto, 2, ',', '.') }}</b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Porductos esperados</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b>{{ $proyecto->productos }}</b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Fecha de inicio</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b>{{ date('d-m-Y', strtotime($proyecto->inicio)) }} <br> <small>{{ \Carbon\Carbon::parse($proyecto->inicio)->diffForHumans() }}</small></b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Fecha de finalización</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b>{{ date('d-m-Y', strtotime($proyecto->fin)) }} <br> <small>{{ \Carbon\Carbon::parse($proyecto->fin)->diffForHumans() }}</small> </b></p>
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
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body">
                        <div class="page-header">
                            <h3 id="timeline" class="text-center">Seguimiento del proyecto</h3>
                        </div>
                        <ul class="timeline">
                            @php
                                $class = '';
                            @endphp
                            @foreach ($proyecto_detalles as $item)
                                <li class="{{ $class }}">
                                    <div class="timeline-badge {{ $item->estado_etiqueta }}"><i class="glyphicon {{ $item->estado_icono }}"></i></div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">{{ $item->estado_nombre }} | <b>{{ $item->avance }}%</b></h4>
                                            <p><small class="text-muted"><i class="glyphicon glyphicon-time"></i> {{ date('d-m-Y', strtotime($item->created_at)) }} - {{ \Carbon\Carbon::parse($item->created_at)->diffForHumans() }}</small></p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>{{ $item->observaciones }}</p>
                                            <hr>
                                            <h4>Monto de ejecución: {{ $item->monto_ejecutado }} Bs.</h4>
                                        </div>
                                    </div>
                                </li>
                                @php
                                    $class = $class == '' ? 'timeline-inverted' : '';
                                    // dd($class);
                                @endphp
                            @endforeach
                            
                            {{-- <li class="timeline-inverted">
                                <div class="timeline-badge warning"><i class="glyphicon glyphicon-credit-card"></i></div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="timeline-title">Mussum ipsum cacilds</h4>
                                        <p><small class="text-muted"><i class="glyphicon glyphicon-time"></i> 11 hours ago via Twitter</small></p>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo.
                                        Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>
                                    </div>
                                </div>
                            </li> --}}
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>


@stop

@section('css')
    <style>
        .timeline {
            list-style: none;
            padding: 20px 0 20px;
            position: relative;
        }

        .timeline:before {
            top: 0;
            bottom: 0;
            position: absolute;
            content: " ";
            width: 3px;
            background-color: #eeeeee;
            left: 50%;
            margin-left: -1.5px;
        }

        .timeline > li {
            margin-bottom: 20px;
            position: relative;
        }

        .timeline > li:before,
        .timeline > li:after {
            content: " ";
            display: table;
        }

        .timeline > li:after {
            clear: both;
        }

        .timeline > li:before,
        .timeline > li:after {
            content: " ";
            display: table;
        }

        .timeline > li:after {
            clear: both;
        }

        .timeline > li > .timeline-panel {
            width: 46%;
            float: left;
            border: 1px solid #d4d4d4;
            border-radius: 2px;
            padding: 20px;
            position: relative;
            -webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
            box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
        }

        .timeline > li > .timeline-panel:before {
            position: absolute;
            top: 26px;
            right: -15px;
            display: inline-block;
            border-top: 15px solid transparent;
            border-left: 15px solid #ccc;
            border-right: 0 solid #ccc;
            border-bottom: 15px solid transparent;
            content: " ";
        }

        .timeline > li > .timeline-panel:after {
            position: absolute;
            top: 27px;
            right: -14px;
            display: inline-block;
            border-top: 14px solid transparent;
            border-left: 14px solid #fff;
            border-right: 0 solid #fff;
            border-bottom: 14px solid transparent;
            content: " ";
        }

        .timeline > li > .timeline-badge {
            color: #fff;
            width: 50px;
            height: 50px;
            line-height: 50px;
            font-size: 1.4em;
            text-align: center;
            position: absolute;
            top: 16px;
            left: 50%;
            margin-left: -25px;
            background-color: #999999;
            z-index: 100;
            border-top-right-radius: 50%;
            border-top-left-radius: 50%;
            border-bottom-right-radius: 50%;
            border-bottom-left-radius: 50%;
        }

        .timeline > li.timeline-inverted > .timeline-panel {
            float: right;
        }

        .timeline > li.timeline-inverted > .timeline-panel:before {
            border-left-width: 0;
            border-right-width: 15px;
            left: -15px;
            right: auto;
        }

        .timeline > li.timeline-inverted > .timeline-panel:after {
            border-left-width: 0;
            border-right-width: 14px;
            left: -14px;
            right: auto;
        }

        .timeline-badge.primary {
            background-color: #2e6da4 !important;
        }

        .timeline-badge.success {
            background-color: #3f903f !important;
        }

        .timeline-badge.warning {
            background-color: #f0ad4e !important;
        }

        .timeline-badge.danger {
            background-color: #d9534f !important;
        }

        .timeline-badge.info {
            background-color: #5bc0de !important;
        }

        .timeline-title {
            margin-top: 0;
            color: inherit;
        }

        .timeline-body > p,
        .timeline-body > ul {
            margin-bottom: 0;
        }

        .timeline-body > p + p {
            margin-top: 5px;
        }    
    </style>
@endsection

@section('javascript')
    <script>
        $(document).ready(function(){

        });
    </script>
@stop
