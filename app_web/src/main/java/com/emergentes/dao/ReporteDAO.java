package com.emergentes.dao;

import com.emergentes.modelo.Reporte;
import java.util.List;

public interface ReporteDAO {
    public void insert(Reporte reporte) throws Exception;
    public void update(Reporte reporte) throws Exception;
    public void delete(int id) throws Exception;
    public Reporte getByid(int id) throws Exception;
    public List<Reporte> getAll()throws Exception;
}
