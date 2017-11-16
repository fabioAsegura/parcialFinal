/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Supervisor;
import Model.mantenimientos;
import Util.DbUtil;
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
public class mantenimientoDAO {

    private Connection connection;

    public mantenimientoDAO() throws SQLException {
        connection = DbUtil.getConnection();
    }

    public boolean addmantenimiento(mantenimientos mantenimiento) throws SQLException {
        boolean result = false;
        Connection connection = DbUtil.getConnection();
        String query = "insert into supervisor (mantenimiento.ID,mantenimiento.IDACTIVO,mantenimiento.DESCRIPCION,mantenimiento.PIEZASCAMBIADAS) values (?, ?, ?, ? );";
        PreparedStatement preparedStmt = null;
        try {
            preparedStmt = connection.prepareStatement(query);
            preparedStmt.setInt(1, mantenimiento.getId());
            preparedStmt.setInt(2, mantenimiento.getIdAcivo());
            preparedStmt.setString(3, mantenimiento.getDescripcion());
            preparedStmt.setString(4, mantenimiento.getPiezasCambiadas());
            result = preparedStmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean deletemantenimiento(int a) throws SQLException {
        boolean result = false;
        Connection connection = DbUtil.getConnection();
        String query = "delete from mantenimiento where ID = ?";
        PreparedStatement preparedStmt = null;
        try {
            preparedStmt = connection.prepareStatement(query);
            preparedStmt.setInt(1, a);
            result = preparedStmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }
}