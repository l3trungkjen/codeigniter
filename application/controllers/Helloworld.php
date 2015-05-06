<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Helloworld extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    public function index()
    {
        $data = [
            "title" => "Testing Smarty",
            "body" => "This is the testing page for integrating Smarty and CodeIgniter."
        ];
        $this->parser->parse("smartytest.tpl", $data);
    }

}
