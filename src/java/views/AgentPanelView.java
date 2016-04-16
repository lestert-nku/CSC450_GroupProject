package edu.nku.csc450.views;

import edu.nku.csc450.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import java.util.ArrayList;

public class AgentPanelView extends BasePanelView{
    private JTabbedPane tabbedPane;

    // Controls for modifyPanel
    private JPanel modifyPanel;
    private JButton mp_BackButton;

    // Controls for browsePanel
    private JPanel browsePanel;
    private JPanel bp_SearchParamPanel;
    private JPanel bp_SearchResultPanel;
    private JScrollPane bp_SearchResultScrollPane;
    private JButton bp_SearchButton;
    private JButton bp_BackButton;
    private JTextField bp_ParamMinPrice;
    private JTextField bp_ParamMaxPrice;
    private JTextField bp_ParamCityText;
    private JComboBox bp_ParamStateCombo;
    private JTextField bp_ParamZipText;
    private JTextField bp_ParamBedroomText;
    private JTextField bp_ParamBathroomText;
    private JTextField bp_ParamAcresText;
    private JComboBox bp_ParamBasementCombo;
    private JComboBox bp_ParamPoolCombo;
    private JComboBox bp_ParamCentralAirCombo;
    private JComboBox bp_ParamGasHeatCombo;

    public AgentPanelView() {}

    @Override
    protected void configureUI(){
        this.configureSearchUI();
        this.configureUpdateUI();
        this.tabbedPane = new JTabbedPane();
        this.tabbedPane.addTab("Browse Listings", this.browsePanel);
        this.tabbedPane.addTab("Modify Listings", this.modifyPanel);
        this.panel.setLayout(new BorderLayout());
        this.panel.add(this.tabbedPane);
    }

    private void configureUpdateUI(){
        this.modifyPanel = new JPanel();
        this.modifyPanel.setLayout(new FlowLayout());

        this.mp_BackButton = new JButton("Back");
        this.mp_BackButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                PanelController.showCard("MAIN");
            }
        });
        this.modifyPanel.add(this.mp_BackButton);
    }

    private void configureSearchUI(){
        this.browsePanel = new JPanel();
        this.bp_SearchParamPanel = new JPanel();
        this.bp_SearchResultPanel = new JPanel();

        // Create and set parameter layout
        this.bp_SearchParamPanel.setLayout(new GridBagLayout());
        this.bp_SearchResultPanel.setLayout(new BorderLayout());

        this.bp_SearchResultScrollPane = new JScrollPane();
        this.bp_SearchResultScrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
        this.bp_SearchResultPanel.add(this.bp_SearchResultScrollPane);

        // Initialize parameter search controls and add to bp_SearchParamPanel
        this.bp_SearchButton = new JButton("Search");
        this.bp_SearchButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                performSearch();
            }
        });

        this.bp_BackButton = new JButton("Back");
        this.bp_BackButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                PanelController.showCard("MAIN");
            }
        });

        this.bp_ParamMinPrice = new JTextField(10);
        this.bp_ParamMaxPrice = new JTextField(10);
        this.bp_ParamCityText = new JTextField(10);
        this.bp_ParamStateCombo = new JComboBox(this.getStates());
        this.bp_ParamZipText = new JTextField(10);
        this.bp_ParamBedroomText = new JTextField(10);
        this.bp_ParamBathroomText = new JTextField(10);
        this.bp_ParamAcresText = new JTextField(10);
        this.bp_ParamBasementCombo = new JComboBox(this.getStandardComboOptions());
        this.bp_ParamPoolCombo = new JComboBox(this.getStandardComboOptions());
        this.bp_ParamCentralAirCombo = new JComboBox(this.getStandardComboOptions());
        this.bp_ParamGasHeatCombo = new JComboBox(this.getStandardComboOptions());

        // Add the search paramters to the layout
        this.bp_SearchParamPanel.add(new JLabel("Min Price"), this.makeGbc(0,0));
        this.bp_SearchParamPanel.add(this.bp_ParamMinPrice, this.makeGbc(1,0));
        this.bp_SearchParamPanel.add(new JLabel("Max Price"), this.makeGbc(0,1));
        this.bp_SearchParamPanel.add(this.bp_ParamMaxPrice, this.makeGbc(1,1));
        this.bp_SearchParamPanel.add(new JLabel("City"), this.makeGbc(0,2));
        this.bp_SearchParamPanel.add(this.bp_ParamCityText, this.makeGbc(1,2));
        this.bp_SearchParamPanel.add(new JLabel("State"), this.makeGbc(0,3));
        this.bp_SearchParamPanel.add(this.bp_ParamStateCombo, this.makeGbc(1,3));
        this.bp_SearchParamPanel.add(new JLabel("Zip"), this.makeGbc(0,4));
        this.bp_SearchParamPanel.add(this.bp_ParamZipText, this.makeGbc(1,4));
        this.bp_SearchParamPanel.add(new JLabel("Extra Options", SwingConstants.CENTER), this.makeGbc(-1,5));
        this.bp_SearchParamPanel.add(new JLabel("Bedrooms"), this.makeGbc(0,6));
        this.bp_SearchParamPanel.add(this.bp_ParamBedroomText, this.makeGbc(1,6));
        this.bp_SearchParamPanel.add(new JLabel("Baths"), this.makeGbc(0,7));
        this.bp_SearchParamPanel.add(this.bp_ParamBathroomText, this.makeGbc(1,7));
        this.bp_SearchParamPanel.add(new JLabel("Acres"), this.makeGbc(0,8));
        this.bp_SearchParamPanel.add(this.bp_ParamAcresText, this.makeGbc(1,8));
        this.bp_SearchParamPanel.add(new JLabel("Basement"), this.makeGbc(0,9));
        this.bp_SearchParamPanel.add(this.bp_ParamBasementCombo, this.makeGbc(1,9));
        this.bp_SearchParamPanel.add(new JLabel("Pool"), this.makeGbc(0,10));
        this.bp_SearchParamPanel.add(this.bp_ParamPoolCombo, this.makeGbc(1,10));
        this.bp_SearchParamPanel.add(new JLabel("Central Air"), this.makeGbc(0,11));
        this.bp_SearchParamPanel.add(this.bp_ParamCentralAirCombo, this.makeGbc(1,11));
        this.bp_SearchParamPanel.add(new JLabel("Gas Heat"), this.makeGbc(0,12));
        this.bp_SearchParamPanel.add(this.bp_ParamGasHeatCombo, this.makeGbc(1,12));
        this.bp_SearchParamPanel.add(this.bp_BackButton, this.makeGbc(0,20));
        this.bp_SearchParamPanel.add(this.bp_SearchButton, this.makeGbc(1,20));

        JPanel innerParamPanel = new JPanel(new FlowLayout());
        innerParamPanel.add(this.bp_SearchParamPanel);

        JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, innerParamPanel, this.bp_SearchResultPanel);
        splitPane.setDividerLocation(250);

        // Setup the browsing tab JPanel
        this.browsePanel.setLayout(new BorderLayout());
        this.browsePanel.add(splitPane);
    }

    private GridBagConstraints makeGbc(int x, int y) {
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.gridwidth = (x == -1) ? 2 : 1;
        gbc.gridheight = 1;
        gbc.gridx = x;
        gbc.gridy = y;
        gbc.weightx = x;
        gbc.weighty = 1.0;
        gbc.insets = new Insets(5, 5, 0, 5);
        gbc.anchor = (x == 0) ? GridBagConstraints.LINE_START : GridBagConstraints.LINE_END;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        return gbc;
    }

    private String[] getStates(){
        String[] states = {"", "IN", "KY", "OH"};
        return states;
    }

    private String[] getStandardComboOptions(){
        String[] options = {"Doesn't Matter", "Yes", "No"};
        return options;
    }

    private void performSearch(){
        try(SqlConnection sql = new SqlConnection()){
            String query = "SELECT P.PropertyID, AD.Street, AD.City, AD.State, AD.Zip "
                         + "FROM Properties P "
                         + "LEFT JOIN Address AD ON AD.PropertyID = P.PropertyID "
                         + "LEFT JOIN Sale S ON S.Property = P.PropertyID "
                         + "LEFT JOIN Agents AG ON AG.AgentId = S.Agent ";

            ArrayList<String> params = new ArrayList<String>();

            if (!this.bp_ParamCityText.getText().trim().equals("")){
                params.add(String.format("AD.City = \'%s\'", this.bp_ParamCityText.getText().trim()));
            }
            if (!this.bp_ParamStateCombo.getSelectedItem().toString().equals("")){
                params.add(String.format("AD.State = \'%s\'", this.bp_ParamStateCombo.getSelectedItem().toString()));
            }
            if (!this.bp_ParamZipText.getText().trim().equals("")){
                params.add(String.format("AD.Zip = %s", this.bp_ParamZipText.getText().trim()));
            }
            if (!this.bp_ParamBedroomText.getText().trim().equals("")){
                params.add(String.format("P.Bedrooms >= %s", this.bp_ParamBedroomText.getText().trim()));
            }
            if (!this.bp_ParamBathroomText.getText().trim().equals("")){
                params.add(String.format("P.Bathrooms >= %s", this.bp_ParamBedroomText.getText().trim()));
            }
            if (!this.bp_ParamAcresText.getText().trim().equals("")){
                params.add(String.format("P.Acres >= %s", this.bp_ParamAcresText.getText().trim()));
            }
            if (this.bp_ParamBasementCombo.getSelectedItem().toString().equals("Yes")){
                params.add(String.format("P.Basement = 1"));
            } else if (this.bp_ParamBasementCombo.getSelectedItem().toString().equals("No")){
                params.add(String.format("P.Basement = 0"));
            }
            if (this.bp_ParamPoolCombo.getSelectedItem().toString().equals("Yes")){
                params.add(String.format("P.Swimming_Pool = 1"));
            } else if (this.bp_ParamPoolCombo.getSelectedItem().toString().equals("No")){
                params.add(String.format("P.Swimming_Pool = 0"));
            }
            if (this.bp_ParamCentralAirCombo.getSelectedItem().toString().equals("Yes")){
                params.add(String.format("P.Central_Air = 1"));
            } else if (this.bp_ParamCentralAirCombo.getSelectedItem().toString().equals("No")){
                params.add(String.format("P.Central_Air = 0"));
            }
            if (this.bp_ParamGasHeatCombo.getSelectedItem().toString().equals("Yes")){
                params.add(String.format("P.Gas_Heat = 1"));
            } else if (this.bp_ParamGasHeatCombo.getSelectedItem().toString().equals("No")){
                params.add(String.format("P.Gas_Heat = 0"));
            }

            if (params.size() > 0){
                query += String.format("WHERE %s ", params.get(0));

                if (params.size() > 1){
                    for (int i = 1; i < params.size(); i++){
                        query += String.format("AND %s ", params.get(i));
                    }
                }
            }

            query += "ORDER BY P.PropertyID ASC";

            ResultSet result = sql.ExecuteQuery(query);
            JPanel resultPanel = new JPanel(new GridLayout(0,1));
            resultPanel.setSize(300,300);
            resultPanel.setBackground(Color.white);

            while (result.next()){
                JPanel rowPanel = new JPanel(new GridLayout(5,0));
                rowPanel.setBorder(BorderFactory.createLineBorder(Color.black));
                rowPanel.setBackground(Color.white);
                rowPanel.add(new JLabel("Property ID: " + Integer.toString(result.getInt("PropertyID"))));
                rowPanel.add(new JLabel("Address: " + result.getString("Street")));
                rowPanel.add(new JLabel("City: " + result.getString("City")));
                rowPanel.add(new JLabel("State: " + result.getString("State")));
                rowPanel.add(new JLabel("Zip: " + Integer.toString(result.getInt("Zip"))));
                resultPanel.add(rowPanel);
            }

            this.bp_SearchResultScrollPane.getViewport().add(resultPanel);
            this.panel.revalidate();
        } catch (Exception ex) {
            System.out.println("Execption: " + ex);
        }
    }


}
