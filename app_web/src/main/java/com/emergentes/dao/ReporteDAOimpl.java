package com.emergentes.dao;

import com.emergentes.modelo.Reporte;
import com.emergentes.utiles.ConexionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ReporteDAOimpl extends ConexionDB implements ReporteDAO{
    @Override
    public List<Reporte> getAll() throws Exception {
        List<Reporte> lista = null;
        try{
        this.conectar();
        PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM reportes");
        
        ResultSet rs = ps.executeQuery();
        lista = new ArrayList<Reporte>();
        while(rs.next()){
            Reporte rep = new Reporte();
            
            rep.setId(rs.getInt("id"));
            rep.setTitulo(rs.getString("titulo"));
            rep.setEstado(rs.getString("estado"));
            rep.setF_lim(rs.getString("f_lim"));
            rep.setNotif(rs.getInt("notif"));
            rep.setRecibido(rs.getInt("recibido"));
            rep.setFuturo(rs.getInt("futuro"));
            
            lista.add(rep);
        }
        rs.close();
        ps.close();
        }catch(Exception e){
            throw e;
        } finally{
            this.desconectar();
        }
        return lista;
    }

    @Override
    public void insert(Reporte arg0) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Reporte arg0) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(int arg0) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Reporte getByid(int arg0) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
