package edu.nku.csc450.views;

import edu.nku.csc450.CustomControls.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
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
        this.priceText.setText(builder.price);
        this.addressText = new JTextField(textFieldLength);
        this.addressText.setText(builder.street);
        this.cityText = new JTextField(textFieldLength);
        this.cityText.setText(builder.city);
        this.stateCombo = new JComboBox(this.getStates());
        this.stateCombo.setSelectedItem(builder.state);
        this.zipText = new JTextField(textFieldLength);
        this.zipText.setText(builder.zip);

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

        this.updateButton = new JButton("Update");
        this.updateButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                performUpdate();
            }
        });
        GridBagConstraints updateBtnGbc = makeGbc(2,7);
        updateBtnGbc.gridwidth = 2;
        this.innerPanel.add(this.updateButton, updateBtnGbc);

        this.add(this.innerPanel);
    }

    private String[] getStates(){
        return new String[] {"", "IN", "KY", "OH"};
    }

    private String[] getStandardComboOptions(){
        return new String[] {"Yes", "No"};
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
        System.out.println("Update pressed!");
    }
}
