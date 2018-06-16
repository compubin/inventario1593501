<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Productos_model extends CI_Model {

	public function getProductos(){
		$this->db->select("p.id,p.codigo,p.nombreProducto,p.descripcion,p.valorUnitario,p.stock,p.iva,c.nombreCategoria as categoria");
		$this->db->from("producto as p");
		$this->db->join("categorias c","p.idCategoria = c.id");
		$this->db->where("p.estado","Activo");
		$resultados = $this->db->get();
		return $resultados->result();
	}

	public function getProducto($id){
		$this->db->where("id",$id);
		$resultado = $this->db->get("producto");
		return $resultado->row();
	}
	public function save($data){
		return $this->db->insert("producto",$data);
	}

	public function update($id,$data){
		$this->db->where("id",$id);
		return $this->db->update("producto",$data);
	}

}