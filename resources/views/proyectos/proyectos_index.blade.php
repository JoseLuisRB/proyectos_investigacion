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
                                        <td class="no-sort no-click text-right" id="bread-actions">
                                            <a href="#" class="btn btn-sm btn-success btn-fase view" data-toggle="modal" data-target="#fasesModal" data-id="{{ $item->id }}"> <i class="voyager-list"></i> <span>Fases</span></a>
                                            <a href="#" class="btn btn-sm btn-dark btn-observaciones view" data-toggle="modal" data-target="#detallesModal" data-id="{{ $item->id }}"> <i class="voyager-list"></i> <span>Observaciones</span></a>
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

    {{-- Modal de fases --}}
    <form id="form-fases" action="{{ route('store_detalle') }}" method="post" enctype="multipart/form-data">
        <div class="modal modal-success fade" id="fasesModal" tabindex="-1" role="dialog" aria-labelledby="fasesModalTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title"><i class="voyager-move"></i> Cambiar fase del proyecto</h4>
                </div>
                <div class="modal-body">
                    @csrf
                    <input type="hidden" name="id">
                    <div class="form-group">
                        <label>Fase</label>
                        <select name="proyectos_estado_id" class="form-control" required>
                            <option value="">Selecciona un fase del proyecto</option>
                            @foreach ($estados_proyectos as $item)
                            <option value="{{ $item->id }}">{{ $item->nombre }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Monto ejecutado</label>
                            <div class="input-group">
                                <input type="number" min="1" step="1" name="monto_ejecutado" class="form-control" required>
                                <span class="input-group-addon" id="basic-addon1">Bs.</span>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Porcentaje de avance</label>
                            <div class="input-group">
                                <input type="number" min="1" step="1" name="avance" class="form-control" required>
                                <span class="input-group-addon" id="basic-addon1">%</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Observaciones</label>
                        <textarea name="observaciones" class="form-control" rows="10" placeholder="Describe las observaciones del cambio de fase del proyecto..."></textarea>
                    </div>
                    <div class="form-group">
                        <label>Archivo</label>
                        <input type="file" name="archivo" accept="application/pdf">
                    </div>
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="submit" class="btn btn-success">Aceptar</button>
                </div>
            </div>
            </div>
        </div>
    </form>

    {{-- Modal de observaciones --}}
    <form id="form-observaciones" action="{{ route('store_observaciones') }}" method="post">
        <div class="modal modal-primary fade" id="detallesModal" tabindex="-1" role="dialog" aria-labelledby="detallesModal" aria-hidden="true">
            <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title"><i class="voyager-list"></i> Agregar observacion</h4>
                </div>
                <div class="modal-body">
                    @csrf
                    <input type="hidden" name="id">
                    <div class="form-group">
                        <label>Título</label>
                        <input type="text" name="titulo" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Detalle</label>
                        <textarea name="detalle" class="form-control" rows="10" placeholder="Describe los detalles de la observación..."></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-dark">Aceptar</button>
                </div>
            </div>
            </div>
        </div>
    </form>

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

            $('.btn-fase').click(function(){
                $('#form-fases input[name="id"]').val($(this).data('id'));
            });

            $('.btn-observaciones').click(function(){
                $('#form-observaciones input[name="id"]').val($(this).data('id'));
            });

            $('.delete').click(function(){
                let action = $('#delete_form').attr('action');
                $('#delete_form').attr('action',  action.replace('__id', $(this).data('id')));
            });
        });
    </script>
@stop
