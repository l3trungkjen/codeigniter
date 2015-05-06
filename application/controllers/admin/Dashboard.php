<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends My_AdminController {

    public function __construct()
    {
        parent::__construct();
    }

    public function index() {
        $data['title'] = 'Dashboard';
        $this->parser->parse('dashboard/index.tpl', $data);
    }

}
