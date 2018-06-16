<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tiposdocumento_model extends CI_Model {
    
    /* este getCategoria es para el listado */
	public function getTiposdocumentos(){
		$resultados = $this->db->get("tiposdocumentos");
		return $resultados->result();
	}


}