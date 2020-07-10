           $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Gambar baru berhasil ditambahkan :)
          </div>');
            redirect('admin/gallery');
            
            
            
            view :
            
            <?= $this->session->flashdata('message') ?>
