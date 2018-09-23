<?php

/*
 * Custom Session Library
 * description : set and get all data from session
 * Authour : Maneesh Tiwari || Shiv Tiwari
 *
 */
if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}

class Custom_Session {

	private $CI;

	function __construct() {
		$this->CI = &get_instance();
		$this->CI->load->library('session');
		$this->CI->load->model('Admin_model');
	}

	function custom_userdata() {
		// var_dump($this->CI->session->userdata(SITE_SESSION_NAME));
		// exit;

		$site_session = $this->CI->session->userdata('user');
		return (!empty($site_session))?$site_session:array();
	}

	function custom_set_flashdata($data, $name) {
		if (!empty($data) && !empty($name)) {
			$this->CI->session->set_flashdata($name, $data);
		}
	}

	function custom_flashdata($name) {
		if (!empty($name)) {
			return $this->CI->session->flashdata($name);
		}
	}

	public function getUserFormatedData($user_id = '') {
		$user_id    = $this->custom_userdata();
		$userDetail = $this->CI->Admin_model->getUserDetail($user_id->id);
		return (!empty($userDetail))?$userDetail:'';
	}

	function loadMsg($name, $type) {
		$msg = '';
		if (!empty($name) && !empty($type)) {
			$data = $this->custom_flashdata($name);
			if (!empty($data)) {
				if ($type == "error") {
					$msg = "<p class='bg-danger'>{$data}.</p>";
				} else if ($type == "success") {
					$msg = "<p class='bg-success'>{$data}.</p>";
				}
			}
		}
		return $msg;
	}

	public function checkLogin() {
		$user = $this->CI->session->userdata('user');
		if (!empty($user)) {
			redirect(base_url('/'));
		}
	}
	public function checkLogedIn() {
		$user = $this->CI->session->userdata('user');
		if (empty($user)) {
			redirect(base_url('/auth'));
		}
	}

}

?>