<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tiposdocumento extends CI_Controller {

public function __construct(){
		parent::__construct();
		$this->load->model("Tiposdocumento_model");
	}


/* Se executa esta primera parte sin la data*/
	public function index()
	{
		$data  = array(
			'tiposdocumentos' => $this->Tiposdocumento_model->getTiposdocumentos(), 
		);
		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/tiposdocumento/list",$data);
		$this->load->view("layouts/footer");

	}

}
