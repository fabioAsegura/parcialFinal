/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Colmena;
import Util.DbUtil;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Labin
 */
public class cantidadM {

    private Connection connection;

    public cantidadM() throws SQLException, URISyntaxException {
        connection = DbUtil.getConnection();
    }

    public Colmena Colmena(int a) throws SQLException, URISyntaxException {
        boolean result = false;
        Connection connection = DbUtil.getConnection();
        String query = "SELECT idcajon from colmenas where idcolmena=?";
        PreparedStatement preparedStmt = null;
        String Procedencia=null; 
        String Ubicacion=null;
        try {
            preparedStmt = connection.prepareStatement(query);
            preparedStmt.setInt(1, a);
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);
            int idCajon=rs.getInt("idcajon");
            
            if (preparedStmt.executeUpdate() > 0) {
                query = "SELECT idempresa from cajones where idcajon="+idCajon;
                int idEmp=rs.getInt("idempresa");
                query = "SELECT nomnreempresa from empresa where idempresa="+idEmp;
                Procedencia=rs.getString("nomnreempresa");
                //otra busqueda
               query = "SELECT idcapiario from cajones where idcajon="+idCajon;
               int idApiario=rs.getInt("idcapiario");
               query = "SELECT idcentro from apiarios where idcapiario="+idApiario;
               int idCentro=rs.getInt("idcentro");
               query = "SELECT nombre from centroproduccion where idcentro="+idCentro;
               Ubicacion=rs.getString("nombre");
        
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        Colmena colmena=new Colmena(Ubicacion, Procedencia, a);
return colmena;
       
    }

}
