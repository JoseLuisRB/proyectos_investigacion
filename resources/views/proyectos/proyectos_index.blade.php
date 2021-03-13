@extends('voyager::master')

@section('page_title', 'Viendo Investigaciones')

@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-browser"></i> Investigaciones
        </h1>
        <a href="{{ route('proyectos.create') }}" class="btn btn-success btn-add-new">
            <i class="voyager-plus"></i> <span>{{ __('voyager::generic.add_new') }}</span>
        </a>
        
    </div>
@stop

@section('content')
    <div class="page-content browse container-fluid">
        @include('voyager::alerts')
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table id="dataTable" class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Área</th>
                                        <th>Nombre</th>
                                        <th>Estado actual</th>
                                        <th>Avance</th>
                                        <th>Archivo</th>
                                        <th class="actions text-right">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($registros as $item)
                                    <tr>
                                        <td>{{ $item->id }}</td>
                                        <td>{{ $item->area }}</td>
                                        <td>{{ $item->nombre }}</td>
                                        <td>{{ $item->estado }}</td>
                                        <td>{{ $item->avance }}%</td>
                                        <td>@if($item->archivo) <a href="{{ url('storage').'/'.$item->archivo }}" target="_blank">Documento</a> @else Ninguno @endif</td>
                                        <td class="no-sort no-click text-right" id="bread-actions">
                                            <a href="{{ route('proyectos.show', ['id' => $item->id]) }}" class="btn btn-sm btn-warning view"> <i class="voyager-eye"></i> <span>Ver</span></a>
                                            <a href="{{ route('proyectos.edit', ['id' => $item->id]) }}" class="btn btn-sm btn-primary edit"> <i class="voyager-edit"></i> <span>Editar</span></a>
                                            <a href="#" data-toggle="modal" data-target="#modal_delete" data-id="{{ $item->id }}" class="btn btn-sm btn-danger delete"> <i class="voyager-trash"></i> <span>Borrar</span></a>
                                        </td>
                                    </tr>
                                    @empty

                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Single delete modal --}}
    <div class="modal modal-danger fade" tabindex="-1" id="modal_delete" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title"><i class="voyager-trash"></i> Estás seguro que quieres eliminar este poyecto?</h4>
                </div>
                <div class="modal-footer">
                    <form action="{{ route('proyectos.destroy', ['id' => '__id']) }}" id="delete_form" method="POST">
                        @csrf
                        {{ method_field('DELETE') }}
                        <input type="submit" class="btn btn-danger pull-right delete-confirm" value="Sí, ¡Bórralo!">
                    </form>
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </div>
    </div>
@stop

@section('css')
    <link rel="stylesheet" href="{{ voyager_asset('lib/css/responsive.dataTables.min.css') }}">
@stop

@section('javascript')
    <script src="{{ voyager_asset('lib/js/dataTables.responsive.min.js') }}"></script>
    <script>
        $(document).ready(function () {
            $('#dataTable').DataTable({"order":[],"language":{"sEmptyTable":"No hay datos disponibles en la tabla","sInfo":"Mostrando _START_ a _END_ de _TOTAL_ entradas","sInfoEmpty":"Mostrando 0 a 0 de 0 entradas","sInfoFiltered":"(Filtrada de _MAX_ entradas totales)","sInfoPostFix":"","sInfoThousands":",","sLengthMenu":"Mostrar _MENU_ entradas","sLoadingRecords":"Cargando...","sProcessing":"Procesando...","sSearch":"Buscar:","sZeroRecords":"No se encontraron registros coincidentes","oPaginate":{"sFirst":"Primero","sLast":"\u00daltimo","sNext":"Siguiente","sPrevious":"Anterior"},"oAria":{"sSortAscending":": Activar para ordenar la columna ascendente","sSortDescending":": Activar para ordenar la columna descendente"}},"columnDefs":[{"targets":-1,"searchable":false,"orderable":false}]});

            $('.delete').click(function(){
                let action = $('#delete_form').attr('action');
                $('#delete_form').attr('action',  action.replace('__id', $(this).data('id')));
            });
        });
    </script>
@stop
