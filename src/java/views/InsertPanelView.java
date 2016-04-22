package edu.nku.csc450.views;

import edu.nku.csc450.*;
import edu.nku.csc450.CustomControls.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import java.text.*;
import java.util.ArrayList;
import java.util.Date;
import javax.swing.*;

public class InsertPanelView extends JPanel{
    private JPanel innerPanel;

    // Controls for displaying search result information
    private JTextField priceText;
    private JTextField addressText;
    private JTextField cityText;
    private JComboBox stateCombo;
    private JTextField zipText;
    private JTextField bedroomText;
    private JTextField bathroomText;
    private JTextField acresText;
    private JComboBox basementCombo;
    private JComboBox poolCombo;
    private JComboBox centralAirCombo;
    private JComboBox gasHeatCombo;
    private JButton createButton;
    private JLabel infoLabel;
    private JComboBox agentCombo;
    private JComboBox sellerCombo;

    public InsertPanelView(){
        this.configureUI();
    }

    public void configureUI(){
        this.setBackground(Color.white);

        this.innerPanel = new JPanel(new GridBagLayout());
        this.innerPanel.setSize(this.getWidth(), this.getHeight());
        this.innerPanel.setBackground(Color.white);

        int textFieldLength = 15;
        int numFieldLength = 5;

        this.priceText = new JTextField(textFieldLength);
        this.addressText = new JTextField(textFieldLength);
        this.cityText = new JTextField(textFieldLength);
        this.stateCombo = new JComboBox(this.getStates());
        this.zipText = new JTextField(textFieldLength);
        this.agentCombo = new JComboBox(this.getListingAgents());
        this.sellerCombo = new JComboBox(this.getPersons());

        this.bedroomText = new JTextField(numFieldLength);
        this.bathroomText = new JTextField(numFieldLength);
        this.acresText = new JTextField(numFieldLength);
        this.basementCombo = new JComboBox(this.getStandardComboOptions());
        this.poolCombo = new JComboBox(this.getStandardComboOptions());
        this.centralAirCombo = new JComboBox(this.getStandardComboOptions());
        this.gasHeatCombo = new JComboBox(this.getStandardComboOptions());

        // Column 1
        this.innerPanel.add(new JLabel("Price"), this.makeGbc(0,0));
        this.innerPanel.add(this.priceText, this.makeGbc(1,0));
        this.innerPanel.add(new JLabel("Address"), this.makeGbc(0,1));
        this.innerPanel.add(this.addressText, this.makeGbc(1,1));
        this.innerPanel.add(new JLabel("City"), this.makeGbc(0,2));
        this.innerPanel.add(this.cityText, this.makeGbc(1,2));
        this.innerPanel.add(new JLabel("State"), this.makeGbc(0,3));
        this.innerPanel.add(this.stateCombo, this.makeGbc(1,3));
        this.innerPanel.add(new JLabel("Zip"), this.makeGbc(0,4));
        this.innerPanel.add(this.zipText, this.makeGbc(1,4));
        this.innerPanel.add(new JLabel("Agent"), this.makeGbc(0,5));
        this.innerPanel.add(this.agentCombo, this.makeGbc(1,5));
        this.innerPanel.add(new JLabel("Seller"), this.makeGbc(0,6));
        this.innerPanel.add(this.sellerCombo, this.makeGbc(1,6));

        // Column 2
        this.innerPanel.add(new JLabel("Bedrooms"), this.makeGbc(2,0));
        this.innerPanel.add(this.bedroomText, this.makeGbc(3,0));
        this.innerPanel.add(new JLabel("Bathrooms"), this.makeGbc(2,1));
        this.innerPanel.add(this.bathroomText, this.makeGbc(3,1));
        this.innerPanel.add(new JLabel("Acres"), this.makeGbc(2,2));
        this.innerPanel.add(this.acresText, this.makeGbc(3,2));
        this.innerPanel.add(new JLabel("Basement"), this.makeGbc(2,3));
        this.innerPanel.add(this.basementCombo, this.makeGbc(3,3));
        this.innerPanel.add(new JLabel("Pool"), this.makeGbc(2,4));
        this.innerPanel.add(this.poolCombo, this.makeGbc(3,4));
        this.innerPanel.add(new JLabel("Central Air"), this.makeGbc(2,5));
        this.innerPanel.add(this.centralAirCombo, this.makeGbc(3,5));
        this.innerPanel.add(new JLabel("Gas Heat"), this.makeGbc(2,6));
        this.innerPanel.add(this.gasHeatCombo, this.makeGbc(3,6));

        this.infoLabel = new JLabel();
        this.infoLabel.setVisible(false);
        this.innerPanel.add(this.infoLabel, this.makeGbc(0, 7, 2));

        this.createButton = new JButton("Create");
        this.createButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                performInsert();
            }
        });
        this.innerPanel.add(this.createButton, this.makeGbc(2, 7, 2));

        this.add(this.innerPanel);
    }

    private String[] getStates(){
        return new String[] {"", "IN", "KY", "OH"};
    }

    private String[] getStandardComboOptions(){
        return new String[] {"", "Yes", "No"};
    }

    private String[] getListingAgents(){
        ArrayList<String> listingAgents = new ArrayList<String>();
        listingAgents.add("");

        try(SqlConnection sql = new SqlConnection()){
            String query = "SELECT (AG.LastName || ', ' || AG.FirstName) AS NAME "
                         + "FROM Agents AG ORDER BY AG.LastName ASC";

            ResultSet result = sql.ExecuteQuery(query);
            while (result.next()) {
                listingAgents.add(result.getString("NAME"));
            }

        } catch (Exception ex) {
            System.out.println(ex);
        }

        return listingAgents.toArray(new String[0]);
    }

    private String[] getPersons(){
        ArrayList<String> persons = new ArrayList<String>();
        persons.add("");

        try(SqlConnection sql = new SqlConnection()){
            String query = "SELECT (P.LastName || ', ' || P.FirstName) AS NAME "
                         + "FROM Person P ORDER BY P.LastName ASC";

            ResultSet result = sql.ExecuteQuery(query);
            while (result.next()) {
                persons.add(result.getString("NAME"));
            }

        } catch (Exception ex) {
            System.out.println(ex);
        }

        return persons.toArray(new String[0]);
    }

    private GridBagConstraints makeGbc(int x, int y, int z){
        GridBagConstraints gbc = this.makeGbc(x, y);
        gbc.gridwidth = z;
        return gbc;
    }

    private GridBagConstraints makeGbc(int x, int y){
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.gridwidth = (x == -1) ? 2 : 1;
        gbc.gridheight = 1;
        gbc.gridx = x;
        gbc.gridy = y;
        gbc.weightx = x;
        gbc.weighty = 1.0;
        gbc.insets = new Insets(5, 5, 0, 5);
        gbc.anchor = (x % 2 == 0) ? GridBagConstraints.LINE_START : GridBagConstraints.LINE_END;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        return gbc;
    }

    private void performInsert(){
        this.infoLabel.setVisible(true);
        this.infoLabel.setText("");

        boolean propertiesFieldsSet = true;
        boolean addressFieldsSet = true;
        boolean salesFieldsSet = true;

        String insertPropertyParams = "";
        String insertAddressParams = "";
        String insertSalesParams = "";

        // Check property values for values
        if (this.priceText.getText().trim().equals("")){
            propertiesFieldsSet = false;
        } else {
            insertPropertyParams += String.format("%s,", this.priceText.getText().trim());
        }
        if (this.bedroomText.getText().trim().equals("")){
            propertiesFieldsSet = false;
        } else {
            insertPropertyParams += String.format("%s,", this.bedroomText.getText().trim());
        }
        if (this.bathroomText.getText().trim().equals("")){
            propertiesFieldsSet = false;
        } else {
            insertPropertyParams += String.format("%s,", this.bathroomText.getText().trim());
        }
        if (this.acresText.getText().trim().equals("")){
            propertiesFieldsSet = false;
        } else {
            insertPropertyParams += String.format("%s,", this.acresText.getText().trim());
        }
        if (this.basementCombo.getSelectedItem().toString().equals("")){
            propertiesFieldsSet = false;
        } else {
            String yesNo = this.basementCombo.getSelectedItem().toString().equals("Yes") ? "1" : "0";
            insertPropertyParams += String.format("%s,", yesNo);
        }
        if (this.centralAirCombo.getSelectedItem().toString().equals("")){
            propertiesFieldsSet = false;
        } else {
            String yesNo = this.centralAirCombo.getSelectedItem().toString().equals("Yes") ? "1" : "0";
            insertPropertyParams += String.format("%s,", yesNo);
        }
        if (this.gasHeatCombo.getSelectedItem().toString().equals("")){
            propertiesFieldsSet = false;
        } else {
            String yesNo = this.gasHeatCombo.getSelectedItem().toString().equals("Yes") ? "1" : "0";
            insertPropertyParams += String.format("%s,", yesNo);
        }
        if (this.poolCombo.getSelectedItem().toString().equals("")){
            propertiesFieldsSet = false;
        } else {
            String yesNo = this.poolCombo.getSelectedItem().toString().equals("Yes") ? "1" : "0";
            insertPropertyParams += String.format("%s", yesNo);
        }

        // Check address values for values
        if (this.addressText.getText().trim().equals("")){
            addressFieldsSet = false;
        } else {
            insertAddressParams += String.format("\'%s\',", this.addressText.getText().trim());
        }
        if (this.cityText.getText().trim().equals("")){
            addressFieldsSet = false;
        } else {
            insertAddressParams += String.format("\'%s\',", this.cityText.getText().trim());
        }
        if (this.stateCombo.getSelectedItem().toString().equals("")){
            addressFieldsSet = false;
        } else {
            insertAddressParams += String.format("\'%s\',", this.stateCombo.getSelectedItem().toString());
        }
        if (this.zipText.getText().trim().equals("")){
            addressFieldsSet = false;
        } else {
            insertAddressParams += String.format("%s", this.zipText.getText().trim());
        }

        // Check sales related values for values
        if (this.agentCombo.getSelectedItem().toString().equals("")){
            salesFieldsSet = false;
        } else {
            String[] name = this.agentCombo.getSelectedItem().toString().split(",");

            try(SqlConnection sql = new SqlConnection()){
                String query = String.format("SELECT AgentID "
                                           + "FROM Agents "
                                           + "WHERE FirstName = \'%s\' "
                                           + "AND LastName = \'%s\' ", name[1].trim(), name[0].trim());

                ResultSet result = sql.ExecuteQuery(query);
                if (result.next()) {
                    insertSalesParams += String.format("%s,", result.getInt("AgentID"));
                }

            } catch (Exception ex) {
                System.out.println(ex);
            }
        }
        if (this.sellerCombo.getSelectedItem().toString().equals("")){
            salesFieldsSet = false;
        } else {
            String[] name = this.sellerCombo.getSelectedItem().toString().split(",");

            try(SqlConnection sql = new SqlConnection()){
                String query = String.format("SELECT PersonID "
                                           + "FROM Person "
                                           + "WHERE FirstName = \'%s\' "
                                           + "AND LastName = \'%s\' ", name[1].trim(), name[0].trim());

                ResultSet result = sql.ExecuteQuery(query);
                if (result.next()) {
                    insertSalesParams += String.format("%s", result.getInt("PersonID"));
                }

            } catch (Exception ex) {
                System.out.println(ex);
            }
        }

        if (propertiesFieldsSet || addressFieldsSet || salesFieldsSet){
            this.infoLabel.setText("Inserting...");
        }

        // Extra paramaters
        int pStatus = 0;
        DateFormat df = new SimpleDateFormat("dd-MMM-yyyy");
        Date date = new Date();
        String pListingDate = df.format(date);
        int pNewId = 1;
        int aNewId = 1;
        int sNewId = 1;

        // Get the highest PropertyID and increment
        try(SqlConnection sql = new SqlConnection()){
            String query = "SELECT (PropertyID + 1) AS ID "
                         + "FROM (SELECT PropertyID FROM Properties ORDER BY PropertyID DESC) "
                         + "WHERE ROWNUM = 1";

            ResultSet result = sql.ExecuteQuery(query);
            if (result.next()) {
                pNewId = result.getInt("ID");
            }

        } catch (Exception ex) {
            System.out.println(ex);
        }

        // Get the highest AddressID and increment
        try(SqlConnection sql = new SqlConnection()){
            String query = "SELECT (AddressID + 1) AS ID "
                         + "FROM (SELECT AddressID FROM Address ORDER BY AddressID DESC) "
                         + "WHERE ROWNUM = 1";

            ResultSet result = sql.ExecuteQuery(query);
            if (result.next()) {
                aNewId = result.getInt("ID");
            }

        } catch (Exception ex) {
            System.out.println(ex);
        }

        // Get the highest SalesID and increment
        try(SqlConnection sql = new SqlConnection()){
            String query = "SELECT (SaleID + 1) AS ID "
                         + "FROM (SELECT SaleID FROM Sale ORDER BY SaleID DESC) "
                         + "WHERE ROWNUM = 1";

            ResultSet result = sql.ExecuteQuery(query);
            if (result.next()) {
                sNewId = result.getInt("ID");
            }

        } catch (Exception ex) {
            System.out.println(ex);
        }

        // Insert properties values
        if (propertiesFieldsSet){
            String query = String.format("INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Basement,Central_Air,Gas_Heat,Swimming_Pool,Listing_Date,Status) VALUES (%s,%s,'%s',%s)", pNewId, insertPropertyParams, pListingDate, pStatus);

            System.out.println(query);
            try(SqlConnection sql = new SqlConnection()){
                sql.ExecuteUpdate(query);
            } catch (Exception ex) {
                System.out.println(ex);
            }
        }

        // Insert address values
        if (addressFieldsSet){
            String query = String.format("INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip) VALUES (%s,%s,%s)", aNewId, pNewId, insertAddressParams);

            System.out.println(query);
            try(SqlConnection sql = new SqlConnection()){
                sql.ExecuteUpdate(query);
            } catch (Exception ex) {
                System.out.println(ex);
            }
        }

        // Insert sale values
        if (addressFieldsSet){
            String query = String.format("INSERT INTO SALE (SALEID,PROPERTY,AGENT,SELLER) VALUES (%s,%s,%s)", sNewId, pNewId, insertSalesParams);

            System.out.println(query);
            try(SqlConnection sql = new SqlConnection()){
                sql.ExecuteUpdate(query);
            } catch (Exception ex) {
                System.out.println(ex);
            }
        }

        if (propertiesFieldsSet && addressFieldsSet && salesFieldsSet){
            this.infoLabel.setText("New listing created!");
        }
        else{
            this.infoLabel.setText("All fields required to create new listing.");
        }
    }
}
