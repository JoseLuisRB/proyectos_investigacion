@extends('voyager::master')

@section('page_title', $titulo.' Investigación')

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-browser"></i> {{ $titulo }} Investigación
    </h1>
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">
                <form role="form" action="@if($action=='store'){{ route('proyectos.'.$action) }} @else {{ route('proyectos.'.$action, ['id' => $proyecto->id]) }} @endif" method="POST" enctype="multipart/form-data">
                    <div class="panel panel-bordered">
                        <div class="panel-body">
                            @csrf
                            @if($action=='update')
                            {{ method_field('PUT') }}
                            @endif
                            <div class="row">
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>Tipo de investigación</label>
                                        <select name="proyecto_tipo_id" class="form-control select2" id="select-proyecto_tipo_id" required="">
                                            <option disabled selected value="">Seleccione una opción</option>
                                            @foreach($tipos as $item)
                                            <option value="{{ $item->id }}">{{ $item->nombre }}</option>
                                            @endforeach
                                        </select>
                                   </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                         <label>Instituto</label>
                                         <select name="entidad_id[]" class="form-control select2" id="select-entidad_id" multiple="" required="">
                                            <option disabled value="">Seleccione una opción</option>
                                            @foreach($entidades as $item)
                                            <option value="{{ $item->id }}">{{ $item->nombre }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                 </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                   <div class="form-group">
                                        <label>Titulo de la investigación</label>
                                        <textarea name="nombre" class="form-control" required="" rows="3">{{ $proyecto->nombre ?? '' }}</textarea>
                                   </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>Responsable o Tutor</label>
                                        <div class="input-group">
                                            <select name="responsable" class="form-control select2" id="select-responsable" required="">
                                                <option disabled selected value="">Seleccione una opción</option>
                                                @foreach($personas as $item)
                                                <option value="{{ $item->id }}">{{ $item->nombre }} {{ $item->apellidos }}</option>
                                                @endforeach
                                            </select>
                                            <span class="input-group-btn">
                                                <button class="btn btn-primary" data-toggle="modal" data-target="#modal_persona" type="button" style="margin-top:0px">
                                                <span class="voyager-plus" aria-hidden="true"></span> Nuevo</button>
                                            </span>
                                        </div>
                                   </div>
                                </div>
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>Año</label>
                                        <input type="number" value="2019" name="anio" value="{{ $proyecto->anio ?? date('Y') }}" class="form-control" required="">
                                   </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>Participantes</label>
                                        <div class="input-group">
                                            <select name="personas[]" class="form-control select2" id="select-personas" multiple="" required="">
                                                @foreach($personas as $item)
                                                <option value="{{ $item->id }}">{{ $item->nombre }} {{ $item->apellidos }}</option>
                                                @endforeach
                                            </select>
                                            <span class="input-group-btn">
                                                <button class="btn btn-primary" data-toggle="modal" data-target="#modal_persona" type="button" style="margin-top:0px">
                                                <span class="voyager-plus" aria-hidden="true"></span> Nuevo</button>
                                            </span>
                                        </div>
                                   </div>
                                </div>
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>Estado</label>
                                        <select name="estado_id" class="form-control select2" id="select-estado_id" required="">
                                            <option disabled selected value="">Seleccione una opción</option>
                                            @foreach($estados as $item)
                                            <option value="{{ $item->id }}">{{ $item->nombre }}</option>
                                            @endforeach
                                        </select>
                                   </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>Área de investigación</label>
                                        <select name="area_id[]" class="form-control select2" id="select-area_id" multiple required="">
                                            <option disabled value="">Seleccione una opción</option>
                                            @foreach($areas as $item)
                                            <option value="{{ $item->id }}">{{ $item->nombre }}</option>
                                            @endforeach
                                        </select>
                                   </div>
                                </div>
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>Porcentaje de avance</label>
                                        <input type="number" min="0" step="1" class="form-control" name="avance" value="{{ $proyecto->avance ?? '' }}" required="">
                                   </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                   <div class="form-group">
                                        <label>Archivo</label>
                                        <input type="file" name="archivo" accept="application/pdf">
                                   </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                   <div class="form-group">
                                        <label>Observaciones</label>
                                        <textarea name="observaciones" class="form-control richTextBox">{{ $proyecto->observaciones ?? '' }}</textarea>
                                   </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary save">Guardar</button>
                        </div>
                    </div>
                </form> 
            </div>
        </div>
    </div>

    <!-- Modal nueva persona -->
    <form id="form-submit" action="" method="POST">
        @csrf
        <div class="modal modal-primary fade" tabindex="-1" id="modal_persona" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title"><i class="voyager-person"></i> Agregar nueva persona</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Cargo</label>
                            <select name="cargo_id" class="form-control select2">
                                <option selected value="">Ninguno</option>
                                @foreach($cargos as $item)
                                <option value="{{ $item->id }}">{{ $item->nombre }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Nombre</label>
                            <input type="text" name="nombre" class="form-control" require>
                        </div>
                        <div class="form-group">
                            <label for="">Apellidos</label>
                            <input type="text" name="apellidos" class="form-control" require>
                        </div>
                        <div class="form-group">
                            <label for="">Cédula de Identidad</label>
                            <input type="text" name="ci" class="form-control" require>
                        </div>
                        <div class="form-group">
                            <label for="">Movil</label>
                            <input type="number" name="movil" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="">E-mail</label>
                            <input type="text" name="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="">Fotografía</label>
                            <input type="file" name="foto" class="form-control">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        <input type="submit" class="btn btn-primary" value="Guardar">
                    </div>
                </div>
            </div>
        </div>
    </form>

@stop

@section('css')
    <style>
        .select2{
            border: solid 1px #cecece
        }
    </style>
@endsection

@section('javascript')
    <script>
        $(document).ready(function(){
            @isset($proyecto->id)
                $('#select-responsable').val({{ $proyecto->responsable }}).trigger('change.select2');
                $('#select-estado_id').val({{ $proyecto->estado_actual }}).trigger('change.select2');
                $('#select-area_id').val([{{ $proyecto->area_id }}]).trigger('change.select2');
                $('#select-entidad_id').val([{{ $proyecto->entidad_id }}]).trigger('change.select2');
                $('#select-proyecto_tipo_id').val([{{ $proyecto->proyecto_tipo_id }}]).trigger('change.select2');
                $('#select-personas').val([{{ $proyecto->participantes }}]).trigger('change.select2');
            @endisset

            $('#form-submit').on('submit', function(e){
                e.preventDefault();
                $.post("{{ route('agregar_persona') }}", $(this).serialize(), function(data){

                    if(data){
                        $('#select-responsable').select2('destroy');
                        $('#select-responsable').append(`<option value="${data.id}">${data.nombre} ${data.apellidos}</option>`)
                        $('#select-responsable').select2();

                        $('#select-personas').select2('destroy');
                        $('#select-personas').append(`<option value="${data.id}">${data.nombre} ${data.apellidos}</option>`)
                        $('#select-personas').select2();
                        toastr.success('Persona agregada correctamente', 'Bien hecho!');
                        $('#modal_persona').modal('hide');
                    }else{
                        toastr.error('Ocurrio un problema al agregar la persona', 'Error!');
                    }
                });
            });
        });
    </script>
@stop
