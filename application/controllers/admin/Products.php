<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Products extends My_AdminController
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('category_model');
        $this->load->model('list_model');
        $this->load->model('product_model');
    }

    public function index($page = '')
    {
        $products = $this->product_model;
        $total = $products->find_all()->num_rows();
        $per_page = 2;
        $config['total_rows'] = $total;
        $config['per_page'] = $per_page;
        $config['next_link'] = 'Next »';
        $config['prev_link'] = '« Prev';
        $config['num_tag_open'] = '';
        $config['num_tag_close'] = '';
        $config['num_links']   = 2;
        $config['cur_tag_open'] = '<a class="currentpage">';
        $config['cur_tag_close'] = '</a>';
        $config['base_url'] = base_url().'/admin/products/';
        $config['uri_segment'] = 3;
        $this->pagination->initialize($config);
        $pagination = $this->pagination->create_links();
        $offset = ($this->uri->segment($config['uri_segment'])=='') ? 0 : $this->uri->segment($config['uri_segment']);

        $data = [
            'title' => 'Products',
            'pagination' => $pagination,
            'products' => $products->find_all($per_page, $offset)->result_array()
        ];
        $this->parser->parse('admin/products/index.tpl', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Create new Product',
            'listModel' => new List_model(),
            'categories' => $this->category_model->find()->result_array()
        ];
        $this->parser->parse('admin/products/add.tpl', $data);
    }

    public function create()
    {
        $request = $this->input->post();
        if (empty($request)) {
            return redirect('admin', 'refresh');
        }
        if (getimagesize($request['hidden_image'])) {
            $this->product_model->image = $this->resizeimage->url . time() . '.' . $request['type_image'];
            $this->resizeimage->load($request['hidden_image']);
            $this->resizeimage->resizeToWidth(250);
            $this->resizeimage->save($this->product_model->image);
        }
        $request['image'] = $this->product_model->image;
        $this->product_model->create($request)
            ? $this->session->set_flashdata('success', 'Product was created successfully...')
            : $this->session->set_flashdata('error', 'Product was created failer...');
        return redirect('admin/products/add', 'refresh');
    }

    public function edit($id)
    {
        if (empty($id)) {
            return redirect('admin', 'refresh');
        }
        set_title('Edit Product');
        $product = $this->db->get_where('products', ['id' => $id])->row();
        $data = [
            'product' => $product,
            'categories' => $this->category_model->find()->result_array(),
            'listModel' => new List_model()
        ];
        $this->parser->parse('admin/products/edit.tpl', $data);
    }

    public function update()
    {

    }

    public function destroy()
    {

    }

}
