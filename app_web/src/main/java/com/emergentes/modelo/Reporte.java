package com.emergentes.modelo;

public class Reporte {
    private int id;
    private String titulo;
    private String estado;
    private String f_lim;
    private int notif;
    private int recibido;
    private int futuro;

    public Reporte() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getF_lim() {
        return f_lim;
    }

    public void setF_lim(String f_lim) {
        this.f_lim = f_lim;
    }

    public int getNotif() {
        return notif;
    }

    public void setNotif(int notif) {
        this.notif = notif;
    }

    public int getRecibido() {
        return recibido;
    }

    public void setRecibido(int recibido) {
        this.recibido = recibido;
    }

    public int getFuturo() {
        return futuro;
    }

    public void setFuturo(int futuro) {
        this.futuro = futuro;
    }

    @Override
    public String toString() {
        return "Reporte{" + "id=" + id + ", titulo=" + titulo + ", estado=" + estado + ", f_lim=" + f_lim + ", notif=" + notif + ", recibido=" + recibido + ", futuro=" + futuro + '}';
    }
}
