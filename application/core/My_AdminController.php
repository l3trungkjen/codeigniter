<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class My_AdminController extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('title');
        $this->load->library('parser');
        $this->load->library('session');
        $this->load->library('encrypt');
        $this->load->library('resizeimage');
        $this->load->library('pagination');
        $this->load->database();
        $this->load->model('user_model');
        if (empty($this->session->session_id) && $this->router->fetch_class() !== 'sessions') {
            if (!$this->user_model->checkPermission($this->user_model->decrypt())) {
                return redirect('admin/signin', 'refresh');
            }
        }
    }

}

?>