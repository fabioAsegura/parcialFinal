/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author User
 */
public class Colmena {

    public Colmena(String ubicacion, String ProcedenciaCajon, int materialBiologico) {
        this.ubicacion = ubicacion;
        this.ProcedenciaCajon = ProcedenciaCajon;
        this.materialBiologico = materialBiologico;
    }

   public String ubicacion;
   public String ProcedenciaCajon;
   public int materialBiologico;

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getProcedenciaCajon() {
        return ProcedenciaCajon;
    }

    public void setProcedenciaCajon(String ProcedenciaCajon) {
        this.ProcedenciaCajon = ProcedenciaCajon;
    }

    public int getMaterialBiologico() {
        return materialBiologico;
    }

    public void setMaterialBiologico(int materialBiologico) {
        this.materialBiologico = materialBiologico;
    }

    
}
