package edu.nku.csc450;

public class Main{
    public static void main(String[] args){
        SqlConnection.GetConnectionCredentials();
        PanelController pController = new PanelController("CSC 450 Group Project");
        pController.setVisible(true);
    }
}
