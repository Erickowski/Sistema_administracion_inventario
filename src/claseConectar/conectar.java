/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package claseConectar;

import java.sql.*;
import javax.swing.*;

/**
 *
 * @author Danie
 */
public class conectar {
    Connection conect = null;
    public Connection conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            //conect =DriverManager.getConnection("jdbc:mysql://localhost:3306/sai","root","");
            conect =DriverManager.getConnection("jdbc:mysql://sql3.freesqldatabase.com:3306/sql3239344","sql3239344","e45CwWCvIT");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, "Error " +e);
        }
        return conect;
    }
}
