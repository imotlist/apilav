@extends('layouts.adminLayout.mainContent')
@section('content')

	<link rel="stylesheet" href="{{ asset('vendor/dropzone/css/basic.css') }}" />
	<link rel="stylesheet" href="{{ asset('vendor/dropzone/css/dropzone.css') }}" />

	<section role="main" class="content-body">
		<header class="page-header">
			<h2><a href="{{route('mitra.index')}}">Master Mitra</a> | Edit</h2> 
		
			<div class="right-wrapper pull-right">
				<ol class="breadcrumbs">
					<li>
						<a href="{{ URL::route('dashboard') }}">
							<i class="fa fa-home"></i>
						</a>
					</li>
					<li><span>Modification Old Data</span></li>
				</ol>
		
				<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
			</div>
		</header>

		<!-- start: page -->
			<section class="panel">
				<header class="panel-heading">
					<div class="panel-actions">
						<a href="#" class="fa fa-caret-down"></a>
						<a href="#" class="fa fa-times"></a>
					</div>
			
					<h2 class="panel-title">Form Data</h2>
				</header>
				<div class="panel-body">
					<div class="col-md-12">
						<div class="tabs">
							<ul class="nav nav-tabs nav-justified">
								<li class="active">
									<a href="#Basicdata" data-toggle="tab" class="text-center" aria-expanded="false"><i class="fa fa-star"></i> Basic Data</a>
								</li>
								<li class="">
									<a href="#Imagesdata" data-toggle="tab" class="text-center" aria-expanded="true"><i class="fa fa-file-image-o"></i> Images</a>
								</li>
							</ul>
							<div class="tab-content">
								@if ($errors->any())
							      <div class="alert alert-danger">
							        <ul>
							            @foreach ($errors->all() as $error)
							              <li>{{ $error }}</li>
							            @endforeach
							        </ul>
							      </div><br />
							    @endif
								<div id="Basicdata" class="tab-pane active">
									<form method="POST" enctype="multipart/form-data" action="{{ route('mitra.update', $data->m_id) }}">
										@method('PATCH')
										@csrf
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<label class="control-label">Nama Mitra *</label>
													<input type="text" name="nama" class="form-control" required="" value="{{$data->m_nama}}">
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="control-label">No Telp *</label>
													<input type="text" name="telp" class="form-control" required="" value="{{$data->m_telp}}">
												</div>
											</div>
											<div class="col-sm-2">
												<div class="col-sm-6">
													<div class="form-group">
														<label class="control-label">Status</label>
														<div class="switch switch-sm switch-success">
															<input type="checkbox" name="status" data-plugin-ios-switch="" checked="checked" style="display: none;">
														</div>
													</div>
												</div>
												
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<label class="control-label">Email *</label>
													<input type="email" name="email" class="form-control" required="" value="{{$data->m_email}}">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label class="control-label">Pemilik *</label>
													<input type="text" name="pemilik" class="form-control" required="" value="{{$data->m_pemilik}}">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<label class="control-label">Alamat *</label>
													<textarea name="alamat" class="form-control" rows="7">{{$data->mitra_alamat}}</textarea>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label class="control-label">Password *</label>
													<input type="password" name="pass1" class="form-control">
												</div>
												<div class="form-group">
													<label class="control-label">Re-Type Password *</label>
													<input type="password" name="pass2" class="form-control">
												</div>
											</div>												
										</div>
										<hr>
										<div class="row">
											<div class="col-sm-12">
												<div class="pull-right alert alert-danger">
														* Data Harus Diisi
													</div>
												<div class="form-group">													
													<button type="reset" class="btn btn-flat btn-danger"><span class="fa fa-refresh"></span> Reset</button>												
													<button type="submit" class="btn btn-flat btn-info"><span class="fa fa-save"></span> Update</button>	
												</div>				
											</div>								
										</div>
									</form>

								</div>
								<div id="Imagesdata" class="tab-pane">
									<div class="row">
										<div class="col-xs-12">
											<h3>Mitra Images</h3>
												<div class="panel-body">
												<form action="#" class="dropzone dz-square dz-clickable" id="dropzone-example"><div class="dz-default dz-message"><span>Drop files here to upload</span></div></form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		<!-- end: page -->
	</section>

	<!-- Specific Page Vendor -->
	<script src="{{ asset('vendor/ios7-switch/ios7-switch.js') }}"></script>
	<script src="{{ asset('vendor/dropzone/dropzone.js') }}"></script>
@endsection