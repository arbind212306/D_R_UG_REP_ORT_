<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

Class Admin_model extends CI_Model {

	public function getUser($arrdata) {
		return $this->db->select('*')
		            ->from('tbl_admin')
		            ->where('username', $arrdata['username'])
		            ->where('password', $arrdata['password'])
		            ->get()->row();
	}

	public function getUserDetail($id) {
		return $this->db->select('*')
		            ->from('tbl_admin')
		            ->where('id', $id)
		            ->get()->row();
	}

	public function insert($data = array()) {
		if (!array_key_exists("created", $data)) {
			$data['created'] = date("Y-m-d H:i:s");
		}
		if (!array_key_exists("modified", $data)) {
			$data['modified'] = date("Y-m-d H:i:s");
		}
		$insert = $this->db->insert($this->tableName, $data);
		if ($insert) {
			return $this->db->insert_id();
		} else {
			return false;
		}
	}
}
