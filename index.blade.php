@extends('layouts.admin') 
@section('title','Users')
@section('content')

    <h1 class="site-heading text-center text-white d-none d-lg-block">
      <span class="site-heading-upper text-primary mb-3"></span>
      <span class="site-heading-lower"></span>
    </h1>
   
    <div class="row">
        <div class="col-lg-9">
            <div class="form-group">
            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#addKat">Add User</button>
            <div class="pull-right">
                <h3>Data User<h3>
                </div>
          </div>
        </div>
            <div class="table-responsive table--no-card m-b-40">
                <table class="table table-bordered table-striped table-earning">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Foto</th>
                            <th>Password</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                          @php $no = 1; 
                          @endphp
                          @foreach ($users as $index =>$user)
                				  <tr>
                				  <td>{{ $index+1 }}</td>
                                  <td>{{ $user->nama }}</td>
                                  <td>{{ $user->email }}</td>
                                  <td><img src="public{{  Storage::url($user->image) }}" alt="" srcset="" style="width: 70px; height: 70px;"></td> 
                                  <td>{{ $user->password }}</td>  
                                  <td>{{ $user->role_id }}</td>
                          <td>   
                          <form id="form-delete-" action="{{ url('users/'.$user->id) }}" method="POST">
                            @csrf @method('delete')
                            <a href="#" class="btn btn-warning btn-sm" onClick="edit('{{ $user->id }}')"  data-toggle="modal" data-target="#updateKat">Edit</a>
                            <button class="btn btn-sm btn-danger" type="submit">Delete</button>            
                          </form>                                                               
                            </td>
                          </tr>
                        @endforeach
                      </tbody>
                    </table> 
                  </div>
                </div>
              </div>        

                <div class="modal fade" id="addKat" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <form action="{{ url('users') }}" method="post" enctype="multipart/form-data">
                        @csrf

                        <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Data User</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="form-group row">
                  <label for="role_id" class="col-sm-3 col-form-label">User Role</label>
                      <div class="col-sm-9">
                      <input type="text" class="form-control" id="role_id" name="role_id" aria-describedby="role_id" placeholder="Your ID">
                  </div>
                </div>
              </div>
                <div class="modal-body">
                  <div class="form-group row">
                    <label for="nama" class="col-sm-3 col-form-label">Nama</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="nama" name="nama" aria-describedby="username" placeholder="Your Name">
                      </div>
                    </div>
                  </div>
                  <div class="modal-body">
                        <div class="form-group row">
                          <label for="name" class="col-sm-3 col-form-label">Email</label>
                            <div class="col-sm-9">
                              <input type="email" class="form-control" id="email" name="email" placeholder="Your Email">
                            </div>
                          </div>
                        </div>
                        <div class="modal-body">
                          <div class="form-group row">
                            <label for="name" class="col-sm-3 col-form-label">Foto</label>
                              <div class="col-sm-9">
                                  <input type="file" class="dropify" id="image" name="image" accept="image/*">
                                </div>
                            </div>
                          </div>
                        <div class="modal-body">
                                <div class="form-group row">
                                  <label for="name" class="col-sm-3 col-form-label">Password</label>
                                    <div class="col-sm-9">
                                      <input type="password" class="form-control" id="password" name="password" placeholder="Your Password">
                                    </div>
                                  </div>
                                </div>

                <div class="modal-footer">
                  <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-success">Save</button>
                      </div>
                       </form>
                       </div>
                    </div>
                </div>
                    
                <div class="modal fade" id="viewKat" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                     <form action="{{ url('users') }}" method="post">
                        @csrf

                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">Data Satuan</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                        <div class="modal-body">
                          <div class="form-group row">
                            <label for="role_id" class="col-sm-3 col-form-label">User Role</label>
                                <div class="col-sm-9">
                                <input type="text" class="form-control" id="role_id" name="role_id" aria-describedby="role_id" placeholder="Your ID">
                            </div>
                          </div>
                        </div>
                        <div class="modal-body">
                            <div class="form-group row">
                              <label for="nama" class="col-sm-3 col-form-label">Nama</label>
                                <div class="col-sm-9">
                                  <input type="text" class="form-control" id="nama" name="nama" aria-describedby="username" placeholder="Your Name">
                                </div>
                              </div>
                            </div>
                            <div class="modal-body">
                                  <div class="form-group row">
                                    <label for="name" class="col-sm-3 col-form-label">Email</label>
                                      <div class="col-sm-9">
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Your Email">
                                      </div>
                                    </div>
                                  </div>
                                  <div class="modal-body">
                                    <div class="form-group row">
                                      <label for="name" class="col-sm-3 col-form-label">Foto</label>
                                        <div class="col-sm-9">
                                            <input type="file" class="dropify" id="image" name="image" accept="image/*">
                                          </div>
                                      </div>
                                    </div>
                                  <div class="modal-body">
                                          <div class="form-group row">
                                            <label for="name" class="col-sm-3 col-form-label">Password</label>
                                              <div class="col-sm-9">
                                                <input type="password" class="form-control" id="password" name="password" placeholder="Your Password">
                                              </div>
                                            </div>
                                          </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-success">Save</button>
                        </div>
                       </form>
                    </div>
                    </div>
                </div>

                <div class="modal fade" id="updateKat" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                    <form id="form-update" method="post" enctype="multipart/form-data">
                        @csrf @method('put')
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">Data User</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                        
                <div class="modal-body">
                  <div class="form-group row">
                    <label for="nama" class="col-sm-3 col-form-label">Nama</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="nama" name="nama" aria-describedby="username" placeholder="Your Name" required>
                      </div>
                    </div>
                  </div>
                  <div class="modal-body">
                        <div class="form-group row">
                          <label for="name" class="col-sm-3 col-form-label">Email</label>
                            <div class="col-sm-9">
                              <input type="email" class="form-control" id="email" name="email" placeholder="Your Email" required>
                            </div>
                          </div>
                        </div>
                        <div class="modal-body">
                                <div class="form-group row">
                                  <label for="name" class="col-sm-3 col-form-label">Password</label>
                                    <div class="col-sm-9">
                                      <input type="password" class="form-control" id="password" name="password" placeholder="Your Password" required>
                                    </div>
                                  </div>
                                </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                          <button type="submit" id="submit" class="btn btn-success">Save</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
                @endsection
    @push('js')
    <script>
    function edit(id) {
      $('#form-update').attr('action','{{ url("users") }}'+'/'+id);
    } 
      function confirmDelete(id) {
   swal({
       title: "Are you sure?",
       text: "Once deleted, you will not be able to recover this data!",
       icon: "warning",
       buttons: true,
       dangerMode: true,
   })
   .then((willDelete) => {
       if (willDelete) {
           $('#form-delete-'+id).submit();
           swal("Poof! Your data has been deleted!", {
           icon: "success",
           });
       } else {
           swal("Your data is safe!");
       }
   });
  })
</script>
                
@endpush