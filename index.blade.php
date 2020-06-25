@extends('layouts.admin') 
@section('title','Company')
@section('content')

    <div class="form-group">
        <div style="margin:10px;">
              <div class="text-right">
                   <h4>Data Company</h4>
              </div>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addKat">Add Company</button>
        </div>
        @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <p>{{ $message }}</p>
        </div>
        @endif
        <div class="table-responsive table--no-card m-b-40">
                        <table class="table table-bordered table-striped table-earning">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Title</th>
                            <th>Foto</th>
                            <th>Description</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                          @php $no = 1; 
                          @endphp
                          @foreach ($companies as $index =>$companie)
                				  <tr>
                          <td>{{ $index+1 }}</td>
                          <td>{{ $companie->title }}</td> 
                          <td><img src="public{{  Storage::url($companie->image) }}" alt="" srcset="" style="width: 70px; height: 70px;"></td>
                          <td>{!! $companie->isi !!}</td>          
                          <td>              
                          <form id="form-delete-" action="{{ url('companies/'.$companie->id) }}" method="POST">
                            @csrf @method('delete')
                            <a href="#" class="btn btn-warning btn-sm" onClick="edit('{{ $companie->id }}')"  data-toggle="modal" data-target="#updateSat">Edit</a>
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
                      <form action="{{ url('companies') }}" method="post" enctype="multipart/form-data">
                        @csrf

                        <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Data Company</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
  
                <div class="modal-body">
                  <div class="form-group row">
                    <label for="title" class="col-sm-3 col-form-label">Title</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="title" name="title" aria-describedby="username" placeholder="Your Title">
                      </div>
                    </div>
                    <div class="form-group row">
                            <label for="image" class="col-sm-3 col-form-label">Image</label>
                                <div class="col-sm-9">
                                <input type="file" class="dropify" name="image" accept="image/*">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="isi" class="col-sm-3 col-form-label">Description</label>
                                <div class="col-sm-9">
                                <textarea name="isi" class="form-control summernote" id="isi"  aria-describedby="username" placeholder="Masukkan Isi"></textarea>
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
                    
                <div class="modal fade" id="viewKat" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                     <form action="{{ url('companies') }}" method="post">
                        @csrf

                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">Data Company</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                         <div class="modal-body">
                          <div class="form-group row">
                            <label for="title" class="col-sm-3 col-form-label">Title</label>
                                <div class="col-sm-9">
                                  <input type="text" class="form-control" id="title" name="title" aria-describedby="usernama" placeholder="Your Title">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="image" class="col-sm-3 col-form-label">Image</label>
                                <div class="col-sm-9">
                                <input type="file" class="dropify" name="image" accept="image/*">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="isi" class="col-sm-3 col-form-label">Nama</label>
                                <div class="col-sm-9">
                                <textarea name="isi" class="form-control summernote" id="isi"  aria-describedby="username" placeholder="Masukkan Isi"></textarea>
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

                <div class="modal fade" id="updateSat" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                    <form id="form-update" method="post" enctype="multipart/form-data">
                        @csrf @method('put')
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">Data Type</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                        
                        <div class="modal-body">
                          <div class="form-group row">
                            <label for="title" class="col-sm-3 col-form-label">Title</label>
                                <div class="col-sm-9">
                                  <input type="text" class="form-control" id="title" name="title" aria-describedby="usernama" placeholder="Your Title">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="image" class="col-sm-3 col-form-label">Image</label>
                                <div class="col-sm-9">
                                <input type="file" class="dropify" name="image" accept="image/*">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="isi" class="col-sm-3 col-form-label">Description</label>
                                <div class="col-sm-9">
                                <textarea name="isi" class="form-control summernote" id="isi"  aria-describedby="username" placeholder="Masukkan Isi"></textarea>
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
            @endsection
            @push('js')
    <script>
function edit(id) {
    $('#form-update').attr('action','{{ url("companies") }}'+'/'+id);
        }
  
    </script>    
@endpush

