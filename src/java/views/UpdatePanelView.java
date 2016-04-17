package edu.nku.csc450.views;

import edu.nku.csc450.CustomControls.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;

public class UpdatePanelView extends JPanel{
    private ResultPanel panelToUpdate;

    // Controls for displaying search result information
    private JTextField priceText;
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

    public UpdatePanelView(ResultPanel rp){
        this.panelToUpdate = rp;
        this.configureUI();
    }

    public void configureUI(){
        this.setBackground(Color.white);
        this.setLayout(new GridLayout(0,1));

        ResultPanelBuilder builder = this.panelToUpdate.getCurrentBuilder();
        this.add(new JLabel("Price: $" + builder.price));
        this.add(new JLabel("Address: " + builder.street));
        this.add(new JLabel("City: " + builder.city));
        this.add(new JLabel("State: " + builder.state));
        this.add(new JLabel("Zip: " + builder.zip));
    }
}
