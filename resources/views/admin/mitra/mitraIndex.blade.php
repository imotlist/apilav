@extends('layouts.adminLayout.mainContent')
@section('content')
	<link rel="stylesheet" href="{{ asset('vendor/pnotify/pnotify.custom.css') }}" />
	<section role="main" class="content-body">
		<header class="page-header">
			<h2>Master Mitra</h2>
		
			<div class="right-wrapper pull-right">
				<ol class="breadcrumbs">
					<li>
						<a href="{{ URL::route('dashboard') }}">
							<i class="fa fa-home"></i>
						</a>
					</li>
					<li><span>Mitra</span></li>
				</ol>
		
				<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
			</div>
		</header>

		<!-- start: page -->
			<section class="panel">
				<header class="panel-heading">
					<div class="panel-actions">
						<a href="{{ route('mitra.create') }}" class="btn btn-xs btn-info"><span class="fa fa-plus"></span></a>
						<a href="#" class="fa fa-caret-down"></a>
						<a href="#" class="fa fa-times"></a>
					</div>
			
					<h2 class="panel-title">Table Data</h2>
				</header>
				<div class="panel-body">
					@if(session()->get('success'))
					    <div class="alert alert-success">
					     	{{ session()->get('success') }}  
					    </div><br />
					 @endif
					<table class="table table-bordered table-striped" id="ex2" >
						<thead>
							<tr>
								<th width="20%">Nama</th>
								<th width="25%">Email</th>
								<th width="25%">Alamat</th>
								<th width="15%">Telp</th>
								<th>Status</th>
								<th width="20%">Action</th>
							</tr>
						</thead>
						<tbody>
							@foreach($mitra as $data)
							<tr>
								<td>{{$data->m_nama}}</td>
								<td>{{$data->m_email}}</td>
								<td>{{$data->m_alamat}}</td>
								<td>{{$data->m_telp}}</td>
								<td>{{$data->m_status}}</td>
								<td align="center">
									<a href="{{ route('mitra.edit',$data->m_id) }}">
										<button class="btn btn-xs btn-success"><span class="fa fa-pencil"></span></button>
									</a>
									<a href="{{ route('mitra.show',$data->m_id) }}">
										<button class="btn btn-xs btn-info"><span class="fa fa-list"></span></button>
									</a>
									
									<form onclick="return confirm('Yakin Hapus Data Ini?')" action="{{ route('mitra.destroy', $data->m_id)}}" method="post" style="position: relative; top: -22px; left: 40px; width: 25px">
										@csrf
										@method('DELETE')
										<button onclick="return confirm('Yakin Hapus Data Ini ?')" type="submit" class="btn btn-xs btn-danger"><span class="fa fa-times"></span></button>
					                </form>
								</td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</section>
		<!-- end: page -->
	</section>

	<!-- Specific Page Vendor -->
	<script src="{{ asset('vendor/jquery-datatables/media/js/jquery.dataTables.js') }}"></script>
	<script src="{{ asset('vendor/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js') }}"></script>
	<script src="{{ asset('vendor/jquery-datatables-bs3/assets/js/datatables.js') }}"></script>	
	<script src="{{ asset('vendor/pnotify/pnotify.custom.js') }}"></script>
	

	<!-- Call id table -->
	<script>
	  $(document).ready(function() {
		    $('#ex2').DataTable();
		} );
	 </script>
@endsection