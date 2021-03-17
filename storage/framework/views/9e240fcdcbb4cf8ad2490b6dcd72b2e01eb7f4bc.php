<?php $__env->startSection('page_title', $titulo.' Investigación'); ?>

<?php $__env->startSection('page_header'); ?>
    <h1 class="page-title">
        <i class="voyager-browser"></i> <?php echo e($titulo); ?> Investigación
    </h1>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">
                <form role="form" action="<?php if($action=='store'): ?><?php echo e(route('proyectos.'.$action)); ?> <?php else: ?> <?php echo e(route('proyectos.'.$action, ['id' => $proyecto->id])); ?> <?php endif; ?>" method="POST" enctype="multipart/form-data">
                    <div class="panel panel-bordered">
                        <div class="panel-body">
                            <?php echo csrf_field(); ?>
                            <?php if($action=='update'): ?>
                            <?php echo e(method_field('PUT')); ?>

                            <?php endif; ?>
                            <div class="row">
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>Tipo de investigación</label>
                                        <select name="proyecto_tipo_id" class="form-control select2" id="select-proyecto_tipo_id" required="">
                                            <option disabled selected value="">Seleccione una opción</option>
                                            <?php $__currentLoopData = $tipos; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($item->id); ?>"><?php echo e($item->nombre); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                   </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                         <label>Instituto</label>
                                         <select name="entidad_id[]" class="form-control select2" id="select-entidad_id" multiple="" required="">
                                            <option disabled value="">Seleccione una opción</option>
                                            <?php $__currentLoopData = $entidades; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($item->id); ?>"><?php echo e($item->nombre); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                 </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                   <div class="form-group">
                                        <label>Titulo de la investigación</label>
                                        <textarea name="nombre" class="form-control" required="" rows="3"><?php echo e($proyecto->nombre ?? ''); ?></textarea>
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
                                                <?php $__currentLoopData = $personas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($item->id); ?>"><?php echo e($item->nombre); ?> <?php echo e($item->apellidos); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
                                         <label>Participantes</label>
                                         <div class="input-group">
                                             <select name="personas[]" class="form-control select2" id="select-personas" multiple="" required="">
                                                 <?php $__currentLoopData = $personas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                 <option value="<?php echo e($item->id); ?>"><?php echo e($item->nombre); ?> <?php echo e($item->apellidos); ?></option>
                                                 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                             </select>
                                             <span class="input-group-btn">
                                                 <button class="btn btn-primary" data-toggle="modal" data-target="#modal_persona" type="button" style="margin-top:0px">
                                                 <span class="voyager-plus" aria-hidden="true"></span> Nuevo</button>
                                             </span>
                                         </div>
                                    </div>
                                 </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>Área de investigación</label>
                                        <select name="area_id[]" class="form-control select2" id="select-area_id" multiple required="">
                                            <option disabled value="">Seleccione una opción</option>
                                            <?php $__currentLoopData = $areas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($item->id); ?>"><?php echo e($item->nombre); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                   </div>
                                </div>
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>Porcentaje de avance</label>
                                        <input type="number" min="0" step="1" class="form-control" name="avance" value="<?php echo e($proyecto->avance ?? ''); ?>" required="">
                                   </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Inversión Bs.</label>
                                        <input type="number" name="monto" step="0.1" min="0" value="<?php echo e($proyecto->monto ?? ''); ?>" class="form-control" required="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Productos esperados</label>
                                        <input type="text" name="productos" value="<?php echo e($proyecto->productos ?? ''); ?>" class="form-control" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Inicio</label>
                                        <input type="date" name="inicio" value="<?php echo e($proyecto->inicio ?? ''); ?>" class="form-control" required="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Fin</label>
                                        <input type="date" name="fin" value="<?php echo e($proyecto->fin ?? ''); ?>" class="form-control" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>Archivo</label>
                                        <input type="file" name="archivo" accept="application/pdf">
                                   </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                         <label>Estado</label>
                                         <select name="estado_id" class="form-control select2" id="select-estado_id" required="">
                                             <option disabled selected value="">Seleccione una opción</option>
                                             <?php $__currentLoopData = $estados; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                             <option value="<?php echo e($item->id); ?>"><?php echo e($item->nombre); ?></option>
                                             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                         </select>
                                    </div>
                                 </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                   <div class="form-group">
                                        <label>Observaciones</label>
                                        <textarea name="observaciones" class="form-control richTextBox"><?php echo e($proyecto->observaciones ?? ''); ?></textarea>
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
        <?php echo csrf_field(); ?>
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
                                <?php $__currentLoopData = $cargos; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($item->id); ?>"><?php echo e($item->nombre); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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

<?php $__env->stopSection(); ?>

<?php $__env->startSection('css'); ?>
    <style>
        .select2{
            border: solid 1px #cecece
        }
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('javascript'); ?>
    <script>
        $(document).ready(function(){
            <?php if(isset($proyecto->id)): ?>
                $('#select-responsable').val(<?php echo e($proyecto->responsable); ?>).trigger('change.select2');
                $('#select-estado_id').val(<?php echo e($proyecto->estado_actual); ?>).trigger('change.select2');
                $('#select-area_id').val([<?php echo e($proyecto->area_id); ?>]).trigger('change.select2');
                $('#select-entidad_id').val([<?php echo e($proyecto->entidad_id); ?>]).trigger('change.select2');
                $('#select-proyecto_tipo_id').val([<?php echo e($proyecto->proyecto_tipo_id); ?>]).trigger('change.select2');
                $('#select-personas').val([<?php echo e($proyecto->participantes); ?>]).trigger('change.select2');
            <?php endif; ?>

            $('#form-submit').on('submit', function(e){
                e.preventDefault();
                $.post("<?php echo e(route('agregar_persona')); ?>", $(this).serialize(), function(data){

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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('voyager::master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\proyectos\resources\views/proyectos/proyectos_edit-add.blade.php ENDPATH**/ ?>