                          <form id="form-delete-" action="{{ url('types/'.$type->id) }}" method="POST">
                            @csrf @method('delete')
                            <a href="#" class="btn btn-warning btn-sm" onClick="edit('{{ $type->id }}')"  data-toggle="modal" data-target="#updateSat">Edit</a>
                            <button class="btn btn-sm btn-danger" type="submit">Delete</button>            
                          </form>
