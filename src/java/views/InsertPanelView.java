package edu.nku.csc450.views;

import edu.nku.csc450.*;
import edu.nku.csc450.CustomControls.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import java.util.ArrayList;
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

        this.bedroomText = new JTextField(numFieldLength);
        this.bathroomText = new JTextField(numFieldLength);
        this.acresText = new JTextField(numFieldLength);
        this.basementCombo = new JComboBox(this.getStandardComboOptions());
        this.poolCombo = new JComboBox(this.getStandardComboOptions());
        this.centralAirCombo = new JComboBox(this.getStandardComboOptions());
        this.gasHeatCombo = new JComboBox(this.getStandardComboOptions());

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

        boolean propertiesFieldsSet = true;
        boolean addressFieldsSet = true;
        boolean salesFieldsSet = true;

        String insertPropertyParams = "(";
        String insertAddressParams = "(";

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
        if (this.poolCombo.getSelectedItem().toString().equals("")){
            propertiesFieldsSet = false;
        } else {
            String yesNo = this.poolCombo.getSelectedItem().toString().equals("Yes") ? "1" : "0";
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
            insertPropertyParams += String.format("%s)", yesNo);
        }

        /*// Check address values for values
        if (!this.addressText.getText().trim().equals(builder.street)){
            updateAddressParams.add(String.format("AD.Street = \'%s\' ", this.addressText.getText().trim()));
            addressFieldsSet = true;
        }
        if (!this.cityText.getText().trim().equals(builder.city)){
            updateAddressParams.add(String.format("AD.City = \'%s\' ", this.cityText.getText().trim()));
            addressFieldsSet = true;
        }
        if (!this.stateCombo.getSelectedItem().toString().equals(builder.state)){
            updateAddressParams.add(String.format("AD.State = \'%s\' ", this.stateCombo.getSelectedItem().toString()));
            addressFieldsSet = true;
        }
        if (!this.zipText.getText().trim().equals(builder.zip)){
            updateAddressParams.add(String.format("AD.Zip = %s ", this.zipText.getText().trim()));
            addressFieldsSet = true;
        }*/

        if (propertiesFieldsSet || addressFieldsSet || salesFieldsSet){
            this.infoLabel.setText("Inserting...");
        }
/*
        // Update properties values if changed
        if (propertiesFieldsSet){
            String query = String.format("UPDATE Properties P SET ");
            query += updatePropertyParams.get(0);

            if (updatePropertyParams.size() > 1){
                for (int i = 1; i < updatePropertyParams.size(); i++){
                    query += String.format(", %s ", updatePropertyParams.get(i));
                }
            }

            System.out.println(query);
            try(SqlConnection sql = new SqlConnection()){
                sql.ExecuteUpdate(query);
            } catch (Exception ex) {
                System.out.println(ex);
            }
        }

        // Update address values if changed
        if (addressFieldsSet){
            String query = String.format("UPDATE Address AD SET ");
            query += updateAddressParams.get(0);

            if (updateAddressParams.size() > 1){
                for (int i = 1; i < updateAddressParams.size(); i++){
                    query += String.format(", %s ", updateAddressParams.get(i));
                }
            }

            System.out.println(query);
            try(SqlConnection sql = new SqlConnection()){
                sql.ExecuteUpdate(query);
            } catch (Exception ex) {
                System.out.println(ex);
            }
        }
*/
        if (propertiesFieldsSet || addressFieldsSet || salesFieldsSet){
            this.infoLabel.setText("New listing created!");
        }
        else{
            this.infoLabel.setText("No updates to be performed.");
        }
    }
}
