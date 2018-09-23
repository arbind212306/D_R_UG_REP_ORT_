<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 * 	- or -
	 * 		http://example.com/index.php/welcome/index
	 * 	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct() {
		parent::__construct();
		$this->load->model('Admin_model');
	}

	public function index() {

		$this->custom_session->checkLogedIn();
		$this->layout->view('home');
	}

	public function login() {
		$this->custom_session->checkLogin();
		$post = $this->input->post();
		if (!empty($post)) {
			$arrData = array(
				'username' => $post['username'],
				'password' => $post['password'],
			);
			$user = $this->Admin_model->getUser($arrData);
			if (count($user) > 0) {
				$this->session->set_userdata('user', $user);
				redirect(base_url('/'));
			} else {
				$this->session->set_flashdata('error', 'Invalid username or password');
			}
			redirect(base_url('auth'));
		}
		$msg                   = $this->session->flashdata('error');
		$arrDataContent['msg'] = $msg;
		$this->load->view('login', $arrDataContent);
	}
	public function logout() {
		$this->session->sess_destroy();
		redirect(base_url('auth'));
	}

	public function addlink() {
		if (!empty($_POST)) {

			//Check whether user upload picture
			if (!empty($_FILES['picture']['name'])) {
				$config['upload_path']   = 'uploads/images/';
				$config['allowed_types'] = 'jpg|jpeg|png|gif';
				$config['file_name']     = $_FILES['picture']['name'];
				//Load upload library and initialize configuration
				$this->load->library('upload', $config);
				$this->upload->initialize($config);

				if ($this->upload->do_upload('picture')) {
					$uploadData = $this->upload->data();
					var_dump($uploadData);
					exit;
					$picture = $uploadData['file_name'];
					var_dump($picture);
					exit;
				} else {
					$picture = '';
				}
			} else {
				$picture = '';
			}

			$userData = array('name' => $this->input->post('name'),
				'link'                  => $this->input->post('link'),
				'picture'               => $picture);
		}
		var_dump($userData);
		exit;
		$insertUserData = $this->Admin_model->insert($userData);
		// var_dump($userData);
		// exit;
		if ($insertUserData) {
			$this->session->set_flashdata('success_msg', 'User data have been added successfully.');
		} else {
			$this->session->set_flashdata('error_msg', 'Some problems occured, please try again.');
		}

		$this->layout->view('addlink');
		// var_dump($_POST);
		// exit;
	}

	public function viewlink() {
		$this->layout->view('viewlink');
	}

}
