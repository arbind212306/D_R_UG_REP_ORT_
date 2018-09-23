<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Layout {

    private $data = array();

    public function view($path, $content_data = NULL, $arrJs = array()) {
        $CI = & get_instance();
        if ($content_data == NULL) {
            $this->data["content"] = $CI->load->view($path, "", TRUE);
        } else {
            $this->data["content"] = $CI->load->view($path, $content_data, TRUE);
        }
        $this->data["arrJs"] = $arrJs;

        return $CI->load->view("layout", $this->data);
    }

    public function view_frontend($path, $content_data = NULL, $arrJs = array()) {
        $CI = & get_instance();
        $this->data['userdata'] = $CI->auth->formatted_userdata('users');
        if ($content_data == NULL) {
            $this->data["content"] = $CI->load->view($path, "", TRUE);
        } else {
            $this->data["content"] = $CI->load->view($path, $content_data, TRUE);
        }
        $this->data["arrJs"] = $arrJs;

        return $CI->load->view("_layout/_frontend/_layout", $this->data);
    }
    
    public function view_customer($path, $content_data = NULL, $arrJs = array()) {
        $CI = & get_instance();
        $this->data['userdata'] = $CI->auth->formatted_userdata('users');
        if ($content_data == NULL) {
            $this->data["content"] = $CI->load->view($path, "", TRUE);
        } else {
            $this->data["content"] = $CI->load->view($path, $content_data, TRUE);
        }
        $this->data["arrJs"] = $arrJs;

        return $CI->load->view("_layout/_customer/_layout", $this->data);
    }

}

?>
