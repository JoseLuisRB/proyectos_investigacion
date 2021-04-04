<?php $__env->startSection('page_title', 'Viendo Investigación'); ?>

<?php $__env->startSection('page_header'); ?>
    <h1 class="page-title">
        <i class="voyager-browser"></i> Viendo Investigación
    </h1>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body">
                        <div class="page-header">
                            <h3><?php echo e($proyecto->nombre); ?></h3>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Instituto(s)</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p>
                                        <?php
                                            $entidad_id = explode(',', $proyecto->entidad_id);
                                        ?>
                                        <?php $__currentLoopData = $entidades; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $entidad): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php $__currentLoopData = $entidad_id; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if($item == $entidad->id): ?>
                                                <b> <?php echo e($entidad->nombre); ?></b><br>
                                                <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
                                    <p><b><?php echo e($proyecto->tipo); ?></b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Responsable</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p>
                                        <?php $__currentLoopData = $personas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $persona): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($persona->id == $proyecto->responsable): ?>
                                            <b><?php echo e($persona->nombre); ?> <?php echo e($persona->apellidos); ?></b>
                                            <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
                                        <?php
                                            $participantes = explode(',', $proyecto->participantes);
                                        ?>
                                        <?php $__currentLoopData = $personas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $persona): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php $__currentLoopData = $participantes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $participante): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if($participante == $persona->id): ?>
                                                <b> <?php echo e($persona->nombre); ?> <?php echo e($persona->apellidos); ?>, </b>
                                                <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
                                        <?php
                                            $area_id = explode(',', $proyecto->area_id);
                                        ?>
                                        <?php $__currentLoopData = $areas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $area): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php $__currentLoopData = $area_id; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if($area->id == $item): ?>
                                                <b> <?php echo e($area->nombre); ?>, </b>
                                                <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
                                    <p><b><?php echo e($proyecto->avance); ?>%</b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Estado actual</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b><?php echo e($proyecto->estado_actual); ?></b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Inversión Bs.</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b><?php echo e(number_format($proyecto->monto, 2, ',', '.')); ?></b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Porductos esperados</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b><?php echo e($proyecto->productos); ?></b></p>
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
                                    <p><b><?php echo e(date('d-m-Y', strtotime($proyecto->inicio))); ?> <br> <small><?php echo e(\Carbon\Carbon::parse($proyecto->inicio)->diffForHumans()); ?></small></b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                            <div class="col-md-6">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Fecha de finalización</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <p><b><?php echo e(date('d-m-Y', strtotime($proyecto->fin))); ?> <br> <small><?php echo e(\Carbon\Carbon::parse($proyecto->fin)->diffForHumans()); ?></small> </b></p>
                                </div>
                                <hr style="margin:0;">
                            </div>
                        </div>
                        <?php if($proyecto->observaciones): ?>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Observaciones</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <?php echo $proyecto->observaciones; ?>

                                </div>
                                <hr style="margin:0;">
                            </div>
                        </div>
                        <?php endif; ?>
                        <?php if($proyecto->archivo): ?>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel-heading" style="border-bottom:0;">
                                    <h3 class="panel-title">Documento</h3>
                                </div>
                                <div class="panel-body" style="padding-top:0;">
                                    <iframe style="width:100%;height:700px" src="<?php echo e(url('storage').'/'.$proyecto->archivo); ?>"></iframe>
                                </div>
                                <hr style="margin:0;">
                            </div>
                        </div>
                        <?php endif; ?>
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
                            <?php
                                $class = '';
                            ?>
                            <?php $__currentLoopData = $proyecto_detalles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li class="<?php echo e($class); ?>">
                                    <div class="timeline-badge <?php echo e($item->estado_etiqueta); ?>"><i class="glyphicon <?php echo e($item->estado_icono); ?>"></i></div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title"><?php echo e($item->estado_nombre); ?> | <b><?php echo e($item->avance); ?>%</b></h4>
                                            <p><small class="text-muted"><i class="glyphicon glyphicon-time"></i> <?php echo e(date('d-m-Y', strtotime($item->created_at))); ?> - <?php echo e(\Carbon\Carbon::parse($item->created_at)->diffForHumans()); ?></small></p>
                                        </div>
                                        <div class="timeline-body">
                                            <p><?php echo e($item->observaciones); ?></p>
                                            <hr>
                                            <b>Archivo</b><br>
                                            <?php $__currentLoopData = $item->archivos; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $archivo): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <a href="<?php echo e(asset('storage/'.$archivo->archivo)); ?>" target="_blank"><?php echo e($archivo->titulo); ?></a>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <hr>
                                            <h4>Monto de ejecución: <?php echo e($item->monto_ejecutado); ?> Bs. <button class="btn btn-success btn-sm pull-right btn-observacion" data-observacion="<?php echo e($item->detalle_observaciones); ?>" data-toggle="modal" data-target="#observacionesModal">Ver Observaciones <i class="voyager-eye"></i> </button></h4>
                                        </div>
                                    </div>
                                </li>
                                <?php
                                    $class = $class == '' ? 'timeline-inverted' : '';
                                ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal modal-success fade" id="observacionesModal" tabindex="-1" role="dialog" aria-labelledby="observacionesModalTitle" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title"><i class="voyager-eye"></i> Observaciones</h4>
            </div>
            <div class="modal-body">
                <ul class="timeline" id="timeline-observacion">
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('css'); ?>
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
<?php $__env->stopSection(); ?>

<?php $__env->startSection('javascript'); ?>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/locale/es-do.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.btn-observacion').click(function(){
                let data = $(this).data('observacion');
                console.log(data)
                $('#timeline-observacion').empty();
                let clase = '';
                data.map(item => {
                    var date = new Date(item.created_at);
                    let fecha = moment(date).format('MMMM, DD [de] YYYY, H:mm');
                    $('#timeline-observacion').append(`
                        <li class="${clase}">
                            <div class="timeline-badge primary"><i class="glyphicon glyphicon-list-alt"></i></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">${item.titulo}</h4>
                                    <p><small class="text-muted"><i class="glyphicon glyphicon-time"></i> ${fecha} </small></p>
                                </div>
                                <div class="timeline-body">
                                    <p style="margin-bottom:10px"> ${item.detalle} </p>
                                    <hr style="margin:0px">
                                    <small>Realizado por: <b>${item.name}</b></small>
                                </div>
                            </div>
                        </li>
                    `);
                    clase = clase == '' ? 'timeline-inverted' : '';
                })
            });
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('voyager::master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\proyectos\resources\views/proyectos/proyectos_view.blade.php ENDPATH**/ ?>