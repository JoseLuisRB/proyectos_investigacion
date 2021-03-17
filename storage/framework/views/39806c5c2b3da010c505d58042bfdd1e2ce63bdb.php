<?php $__env->startSection('page_title', 'Gráficos'); ?>

<?php $__env->startSection('page_header'); ?>
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-pie-graph"></i> Gráficos
        </h1>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="page-content browse container-fluid">
		<div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body">
						<div class="row">
							<div class="col-md-5">
								<form id="form" method="post" action="<?php echo e(route('pie_generate')); ?>">
									<?php echo csrf_field(); ?>
									<div class="form-group">
										
										<div class="input-group">
											<select name="tipo" class="form-control select2" required="">
												<option disabled selected value="">Seleccione una opción</option>
												<option value="1">Tipo de investigación</option>
												<option value="2">Área de investigación</option>
												<option value="3">Instituto de investigación</option>
											</select>
											<span class="input-group-btn">
												<button class="btn btn-primary" type="submit" style="margin-top:0px">
												<span class="voyager-settings" aria-hidden="true"></span> Generar</button>
											</span>
										</div>
									</div>
								</form>
							</div>
						</div>
                        <div class="col-md-8 col-md-offset-2" id="canvas-holder">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('css'); ?>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.css" integrity="sha256-aa0xaJgmK/X74WM224KMQeNQC2xYKwlAt08oZqjeF0E=" crossorigin="anonymous" />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('javascript'); ?>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" integrity="sha256-Uv9BNBucvCPipKQ2NS9wYpJmi8DTOEfTA/nH2aoJALw=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
			
			$('#form').on('submit', function(e){
				e.preventDefault();
				$('#canvas-holder').html(`<div><br><h4 class="text-center text-muted">Generando...<br><small>Espere un momento</small></h4><br></div>`);
				$.post($(this).attr('action'), $(this).serialize(), function(data){
					loadPie(data);
				});
			});
        });
    </script>
    <script>
		var randomScalingFactor = function() {
			return Math.round(Math.random() * 100);
        };
        
        var bgColors = [
            'rgb(255, 99, 132)',
            'rgb(255, 159, 64)',
            'rgb(255, 205, 86)',
            'rgb(75, 192, 192)',
            'rgb(54, 162, 235)',
            'rgb(153, 102, 255)',
			'rgb(201, 203, 207)',
			'rgb(212, 59, 27)',
			'rgb(45, 238, 171)',
			'rgb(45, 119, 238)',
			'rgb(238, 45, 133)',
			'rgb(75, 45, 238)',
			'rgb(45, 139, 238)',
			'rgb(238, 45, 45)',
			'rgb(238, 186, 45)',
			'rgb(45, 116, 238)'
        ];

		function loadPie(datos) {
			var data = [];
			var labels = [];
			var colors = [];

			datos.map((reg) => {
				data.push(reg.cantidad);
				labels.push(reg.nombre);
				colors.push(bgColors[Math.floor(Math.random() * 15)]);
			});

			var config = {
				type: 'pie',
				data: {
					datasets: [{
						data: data,
						backgroundColor: colors,
						label: 'Dataset 1'
					}],
					labels: labels
				},
				options: {
					responsive: true
				}
			};

			$('#canvas-holder').html(`<canvas id="chart-area"></canvas>`);
			var ctx = document.getElementById('chart-area').getContext('2d');
			window.myPie = new Chart(ctx, config);
		}
	</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('voyager::master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\proyectos\resources\views/reportes/graficos/pie_index.blade.php ENDPATH**/ ?>