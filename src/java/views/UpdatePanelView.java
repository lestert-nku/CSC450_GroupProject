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

public class UpdatePanelView extends JPanel{
    private ResultPanel panelToUpdate;
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
    private JButton updateButton;
    private JLabel infoLabel;
    private JComboBox buyerCombo;
    private JComboBox statusCombo;
    private JTextField saleAmountText;

    public UpdatePanelView(ResultPanel rp){
        this.panelToUpdate = rp;
        this.configureUI();
    }

    public void configureUI(){
        this.setBackground(Color.white);

        this.innerPanel = new JPanel(new GridBagLayout());
        this.innerPanel.setSize(this.getWidth(), this.getHeight());
        this.innerPanel.setBackground(Color.white);

        ResultPanelBuilder builder = this.panelToUpdate.getCurrentBuilder();

        int textFieldLength = 15;
        int numFieldLength = 5;

        this.priceText = new JTextField(textFieldLength);
        this.priceText.setText(builder.price.replace(",", ""));
        this.addressText = new JTextField(textFieldLength);
        this.addressText.setText(builder.street);
        this.cityText = new JTextField(textFieldLength);
        this.cityText.setText(builder.city);
        this.stateCombo = new JComboBox(this.getStates());
        this.stateCombo.setSelectedItem(builder.state);
        this.zipText = new JTextField(textFieldLength);
        this.zipText.setText(builder.zip);
        this.statusCombo = new JComboBox(this.getStatusOptions());
        this.statusCombo.setSelectedItem(builder.status);
        this.saleAmountText = new JTextField(textFieldLength);
        this.saleAmountText.setText(builder.saleAmount);
        this.buyerCombo = new JComboBox(this.getPersons());
        this.buyerCombo.setSelectedItem(builder.buyer);

        this.bedroomText = new JTextField(numFieldLength);
        this.bedroomText.setText(builder.bedroom);
        this.bathroomText = new JTextField(numFieldLength);
        this.bathroomText.setText(builder.bathroom);
        this.acresText = new JTextField(numFieldLength);
        this.acresText.setText(builder.acres);
        this.basementCombo = new JComboBox(this.getStandardComboOptions());
        this.basementCombo.setSelectedItem(builder.basement);
        this.poolCombo = new JComboBox(this.getStandardComboOptions());
        this.poolCombo.setSelectedItem(builder.pool);
        this.centralAirCombo = new JComboBox(this.getStandardComboOptions());
        this.centralAirCombo.setSelectedItem(builder.centralAir);
        this.gasHeatCombo = new JComboBox(this.getStandardComboOptions());
        this.gasHeatCombo.setSelectedItem(builder.gasHeat);

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
        this.innerPanel.add(new JLabel("Status"), this.makeGbc(0,5));
        this.innerPanel.add(this.statusCombo, this.makeGbc(1,5));
        this.innerPanel.add(new JLabel("Sale Amount"), this.makeGbc(0,6));
        this.innerPanel.add(this.saleAmountText, this.makeGbc(1,6));
        this.innerPanel.add(new JLabel("Buyer"), this.makeGbc(0,7));
        this.innerPanel.add(this.buyerCombo, this.makeGbc(1,7));

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
        this.innerPanel.add(this.infoLabel, this.makeGbc(0, 8, 2));

        this.updateButton = new JButton("Update");
        this.updateButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                performUpdate();
            }
        });
        this.innerPanel.add(this.updateButton, this.makeGbc(2, 8, 2));

        this.add(this.innerPanel);
    }

    private String[] getStates(){
	String[] states = {"","AK","AL","AR","AZ","CA","CO","CT","DC","DE","FL","GA","GU","HI","IA","ID", "IL","IN","KS","KY","LA","MA","MD","ME","MH","MI","MN","MO","MS","MT","NC","ND","NE","NH","NJ","NM","NV","NY", "OH","OK","OR","PA","PR","PW","RI","SC","SD","TN","TX","UT","VA","VI","VT","WA","WI","WV","WY"};
        return states;
    }

    private String[] getStandardComboOptions(){
        return new String[] {"Yes", "No"};
    }

    private String[] getStatusOptions(){
        return new String[] {"Listed", "Sold"};
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

    private void performUpdate(){
        this.infoLabel.setVisible(true);

        boolean propertiesValueChanged = false;
        boolean addressValueChanged = false;
        boolean salesValueChanged = false;

        ResultPanelBuilder builder = this.panelToUpdate.getCurrentBuilder();
        ArrayList<String> updatePropertyParams = new ArrayList<String>();
        ArrayList<String> updateAddressParams = new ArrayList<String>();
        ArrayList<String> updateSalesParams = new ArrayList<String>();
        String propertyIdParam = String.format("WHERE P.PropertyID = %s", builder.id);

        // Check property values for changes
        if (!this.priceText.getText().trim().equals(builder.price.replace(",", ""))){
            updatePropertyParams.add(String.format("P.Price = %s ", this.priceText.getText().trim()));
            propertiesValueChanged = true;
        }
        if (!this.bedroomText.getText().trim().equals(builder.bedroom)){
            updatePropertyParams.add(String.format("P.Bedrooms = %s ", this.bedroomText.getText().trim()));
            propertiesValueChanged = true;
        }
        if (!this.bathroomText.getText().trim().equals(builder.bathroom)){
            updatePropertyParams.add(String.format("P.Bathrooms = %s ", this.bathroomText.getText().trim()));
            propertiesValueChanged = true;
        }
        if (!this.acresText.getText().trim().equals(builder.acres)){
            updatePropertyParams.add(String.format("P.Acres = %s ", this.acresText.getText().trim()));
            propertiesValueChanged = true;
        }
        if (!this.basementCombo.getSelectedItem().toString().equals(builder.basement)){
            String yesNo = this.basementCombo.getSelectedItem().toString().equals("Yes") ? "1" : "0";
            updatePropertyParams.add(String.format("P.Basement = %s ", yesNo));
            propertiesValueChanged = true;
        }
        if (!this.poolCombo.getSelectedItem().toString().equals(builder.pool)){
            String yesNo = this.poolCombo.getSelectedItem().toString().equals("Yes") ? "1" : "0";
            updatePropertyParams.add(String.format("P.Swimming_Pool = %s ", yesNo));
            propertiesValueChanged = true;
        }
        if (!this.centralAirCombo.getSelectedItem().toString().equals(builder.centralAir)){
            String yesNo = this.centralAirCombo.getSelectedItem().toString().equals("Yes") ? "1" : "0";
            updatePropertyParams.add(String.format("P.Central_Air = %s ", yesNo));
            propertiesValueChanged = true;
        }
        if (!this.gasHeatCombo.getSelectedItem().toString().equals(builder.gasHeat)){
            String yesNo = this.gasHeatCombo.getSelectedItem().toString().equals("Yes") ? "1" : "0";
            updatePropertyParams.add(String.format("P.Gas_Heat = %s ", yesNo));
            propertiesValueChanged = true;
        }
        if (!this.statusCombo.getSelectedItem().toString().equals(builder.status)){
            String yesNo = this.statusCombo.getSelectedItem().toString().equals("Listed") ? "0" : "1";
            updatePropertyParams.add(String.format("P.Status = %s ", yesNo));
            propertiesValueChanged = true;
        }

        // Check address values for changes
        if (!this.addressText.getText().trim().equals(builder.street)){
            updateAddressParams.add(String.format("AD.Street = \'%s\' ", this.addressText.getText().trim()));
            addressValueChanged = true;
        }
        if (!this.cityText.getText().trim().equals(builder.city)){
            updateAddressParams.add(String.format("AD.City = \'%s\' ", this.cityText.getText().trim()));
            addressValueChanged = true;
        }
        if (!this.stateCombo.getSelectedItem().toString().equals(builder.state)){
            updateAddressParams.add(String.format("AD.State = \'%s\' ", this.stateCombo.getSelectedItem().toString()));
            addressValueChanged = true;
        }
        if (!this.zipText.getText().trim().equals(builder.zip)){
            updateAddressParams.add(String.format("AD.Zip = %s ", this.zipText.getText().trim()));
            addressValueChanged = true;
        }

        // Check sales values for changes
        if (!this.saleAmountText.getText().trim().equals(builder.saleAmount)){
            updateSalesParams.add(String.format("S.Sale_Amount = %s ", this.saleAmountText.getText().trim()));
            salesValueChanged = true;
        }
        if (!this.buyerCombo.getSelectedItem().toString().equals(builder.buyer)){
            String[] name = this.buyerCombo.getSelectedItem().toString().split(",");

            try(SqlConnection sql = new SqlConnection()){
                String query = String.format("SELECT PersonID "
                                           + "FROM Person "
                                           + "WHERE FirstName = \'%s\' "
                                           + "AND LastName = \'%s\' ", name[1].trim(), name[0].trim());

                ResultSet result = sql.ExecuteQuery(query);
                if (result.next()) {
                    updateSalesParams.add(String.format("S.Buyer = %s ", result.getInt("PersonID")));
                }

            } catch (Exception ex) {
                System.out.println(ex);
            }
        }

        if (propertiesValueChanged || addressValueChanged || salesValueChanged){
            this.infoLabel.setText("Updating...");
        }

        // Update properties values if changed
        if (propertiesValueChanged){
            String query = String.format("UPDATE Properties P SET ");
            query += updatePropertyParams.get(0);

            if (updatePropertyParams.size() > 1){
                for (int i = 1; i < updatePropertyParams.size(); i++){
                    query += String.format(", %s ", updatePropertyParams.get(i));
                }
            }

            query += String.format("WHERE P.PropertyID = %s", builder.id);

            System.out.println(query);
            try(SqlConnection sql = new SqlConnection()){
                sql.ExecuteUpdate(query);
            } catch (Exception ex) {
                System.out.println(ex);
            }
        }

        // Update address values if changed
        if (addressValueChanged){
            String query = String.format("UPDATE Address AD SET ");
            query += updateAddressParams.get(0);

            if (updateAddressParams.size() > 1){
                for (int i = 1; i < updateAddressParams.size(); i++){
                    query += String.format(", %s ", updateAddressParams.get(i));
                }
            }

            query += String.format("WHERE AD.PropertyID = %s", builder.id);

            System.out.println(query);
            try(SqlConnection sql = new SqlConnection()){
                sql.ExecuteUpdate(query);
            } catch (Exception ex) {
                System.out.println(ex);
            }
        }

        // Update sale values if changed
        if (salesValueChanged){
            String query = String.format("UPDATE Sale S SET ");
            query += updateSalesParams.get(0);

            if (updateSalesParams.size() > 1){
                for (int i = 1; i < updateSalesParams.size(); i++){
                    query += String.format(", %s ", updateSalesParams.get(i));
                }
            }

            DateFormat df = new SimpleDateFormat("dd-MMM-yy");
            Date tempSaleDate = new Date();
            query += String.format(", S.Sale_Date = \'%s\' ", df.format(tempSaleDate));

            query += String.format("WHERE S.Property = %s", builder.id);

            System.out.println(query);
            try(SqlConnection sql = new SqlConnection()){
                sql.ExecuteUpdate(query);
            } catch (Exception ex) {
                System.out.println(ex);
            }
        }

        if (propertiesValueChanged || addressValueChanged || salesValueChanged){
            this.infoLabel.setText("Update complete!");
        }
        else{
            this.infoLabel.setText("No updates to be performed.");
        }
    }
}
