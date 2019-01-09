@extends('layouts.adminLayout.mainContent')
@section('content')
	<section role="main" class="content-body">
		<header class="page-header">
			<h2>Master User</h2>
		
			<div class="right-wrapper pull-right">
				<ol class="breadcrumbs">
					<li>
						<a href="{{ URL::route('dashboard') }}">
							<i class="fa fa-home"></i>
						</a>
					</li>
					<li><span>User</span></li>
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
			
					<h2 class="panel-title">Table Data</h2>
				</header>
				<div class="panel-body">
					@if(session()->get('success'))
					    <div class="alert alert-success">
					     	{{ session()->get('success') }}  
					    </div><br />
					 @endif
					<table class="table table-bordered table-striped" id="exx">
						<thead>
							<tr>
								<th width="20%">Username</th>
								<th width="25%">Email</th>
								<th width="25%">Create</th>
								<th width="15%">Update</th>
								<th width="15%">Action</th>
							</tr>
						</thead>
						<tbody>
							@foreach($user as $data)
							<tr>
								<td>{{$data->name}}</td>
								<td>{{$data->email}}</td>
								<td>{{$data->created_at}}</td>
								<td>{{$data->updated_at}}</td>
								<td align="center">
									<div class="row">
										<a href="{{ route('user.edit',$data->id) }}">
											<button class="btn btn-xs btn-success"><span class="fa fa-pencil"></span></button>
										</a>
										<form action="{{ route('user.destroy', $data->id)}}" method="post">
											@csrf
											@method('DELETE')
											<button onclick="return confirm('Yakin Hapus Data Ini ?')" type="submit" class="btn btn-xs btn-danger"><span class="fa fa-times"></span></button>
						                </form>
						            </div>
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
	<script src="{{ asset('vendor/jquery-datatables-bs3/assets/js/datatables.js') }}"></script>
	<!-- Examples -->
		<script src="{{ asset('js/backend_js/javascripts/tables/examples.datatables.ajax.js') }}"></script>
	<!-- Call id table -->
	<script>
	  $(document).ready(function() {
		    $('#exx').DataTable();
		} );
	 </script>
@endsection