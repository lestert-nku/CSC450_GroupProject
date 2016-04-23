package edu.nku.csc450.views;

import edu.nku.csc450.*;
import edu.nku.csc450.CustomControls.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.sql.*;
import java.text.*;
import java.util.ArrayList;
import javax.imageio.ImageIO;
import javax.swing.*;

public class AgentPanelView extends BasePanelView{
    private static ArrayList<ResultPanel> resultList;
    private static ResultPanel selectedPanel;

    private JPanel searchParamPanel;
    private JPanel searchResultPanel;
    private JScrollPane searchResultScrollPane;
    private JButton searchButton;
    private JButton backButton;
    private static JButton updateButton;
    private static JButton createButton;
    private JTextField paramMinPrice;
    private JTextField paramMaxPrice;
    private JTextField paramCityText;
    private JComboBox paramStateCombo;
    private JTextField paramZipText;
    private JTextField paramBedroomText;
    private JTextField paramBathroomText;
    private JTextField paramAcresText;
    private JComboBox paramBasementCombo;
    private JComboBox paramPoolCombo;
    private JComboBox paramCentralAirCombo;
    private JComboBox paramGasHeatCombo;
    private JComboBox paramStatusCombo;

    public AgentPanelView() {}

    @Override
    protected void configureUI(){
        this.searchParamPanel = new JPanel();
        this.searchResultPanel = new JPanel();

        // Create and set parameter layout
        this.searchParamPanel.setLayout(new GridBagLayout());
        this.searchResultPanel.setLayout(new BorderLayout());

        this.searchResultScrollPane = new JScrollPane();
        this.searchResultScrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
        this.searchResultScrollPane.getVerticalScrollBar().setUnitIncrement(16);
        this.searchResultPanel.add(this.searchResultScrollPane);

        // Initialize parameter search controls and add to searchParamPanel
        this.searchButton = new JButton("Search");
        this.searchButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                performSearch();
            }
        });

        this.backButton = new JButton("Back");
        this.backButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                PanelController.showCard("MAIN");
            }
        });

        updateButton = new JButton("Update");
        updateButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                JFrame updateFrame = new JFrame();
                updateFrame.setLayout(new BorderLayout());
                updateFrame.setSize(475, 330);
                updateFrame.setTitle("Update Listing");
                updateFrame.add(new UpdatePanelView(selectedPanel), BorderLayout.CENTER);
                updateFrame.setVisible(true);
                updateFrame.setResizable(false);
            }
        });
        updateButton.setEnabled(false);

        createButton = new JButton("Create New Listing");
        createButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                JFrame insertFrame = new JFrame();
                insertFrame.setLayout(new BorderLayout());
                insertFrame.setSize(450, 300);
                insertFrame.setTitle("Create Listing");
                insertFrame.add(new InsertPanelView(), BorderLayout.CENTER);
                insertFrame.setVisible(true);
                insertFrame.setResizable(false);
            }
        });
        createButton.setEnabled(true);

        this.paramMinPrice = new JTextField(10);
        this.paramMaxPrice = new JTextField(10);
        this.paramCityText = new JTextField(10);
        this.paramStateCombo = new JComboBox(this.getStates());
        this.paramZipText = new JTextField(10);
        this.paramBedroomText = new JTextField(10);
        this.paramBathroomText = new JTextField(10);
        this.paramAcresText = new JTextField(10);
        this.paramBasementCombo = new JComboBox(this.getStandardComboOptions());
        this.paramPoolCombo = new JComboBox(this.getStandardComboOptions());
        this.paramCentralAirCombo = new JComboBox(this.getStandardComboOptions());
        this.paramGasHeatCombo = new JComboBox(this.getStandardComboOptions());
        this.paramStatusCombo = new JComboBox(this.getStatusOptions());

        // Add the search paramters to the layout
        this.searchParamPanel.add(new JLabel("Min Price"), this.makeGbc(0,0));
        this.searchParamPanel.add(this.paramMinPrice, this.makeGbc(1,0));
        this.searchParamPanel.add(new JLabel("Max Price"), this.makeGbc(0,1));
        this.searchParamPanel.add(this.paramMaxPrice, this.makeGbc(1,1));
        this.searchParamPanel.add(new JLabel("City"), this.makeGbc(0,2));
        this.searchParamPanel.add(this.paramCityText, this.makeGbc(1,2));
        this.searchParamPanel.add(new JLabel("State"), this.makeGbc(0,3));
        this.searchParamPanel.add(this.paramStateCombo, this.makeGbc(1,3));
        this.searchParamPanel.add(new JLabel("Zip"), this.makeGbc(0,4));
        this.searchParamPanel.add(this.paramZipText, this.makeGbc(1,4));
        this.searchParamPanel.add(new JLabel("Extra Options", SwingConstants.CENTER), this.makeGbc(-1,5));
        this.searchParamPanel.add(new JLabel("Bedrooms"), this.makeGbc(0,6));
        this.searchParamPanel.add(this.paramBedroomText, this.makeGbc(1,6));
        this.searchParamPanel.add(new JLabel("Baths"), this.makeGbc(0,7));
        this.searchParamPanel.add(this.paramBathroomText, this.makeGbc(1,7));
        this.searchParamPanel.add(new JLabel("Acres"), this.makeGbc(0,8));
        this.searchParamPanel.add(this.paramAcresText, this.makeGbc(1,8));
        this.searchParamPanel.add(new JLabel("Basement"), this.makeGbc(0,9));
        this.searchParamPanel.add(this.paramBasementCombo, this.makeGbc(1,9));
        this.searchParamPanel.add(new JLabel("Pool"), this.makeGbc(0,10));
        this.searchParamPanel.add(this.paramPoolCombo, this.makeGbc(1,10));
        this.searchParamPanel.add(new JLabel("Central Air"), this.makeGbc(0,11));
        this.searchParamPanel.add(this.paramCentralAirCombo, this.makeGbc(1,11));
        this.searchParamPanel.add(new JLabel("Gas Heat"), this.makeGbc(0,12));
        this.searchParamPanel.add(this.paramGasHeatCombo, this.makeGbc(1,12));
        this.searchParamPanel.add(new JLabel("Status"), this.makeGbc(0,13));
        this.searchParamPanel.add(this.paramStatusCombo, this.makeGbc(1,13));
        this.searchParamPanel.add(this.backButton, this.makeGbc(0,20));
        this.searchParamPanel.add(this.searchButton, this.makeGbc(1,20));
        this.searchParamPanel.add(updateButton, this.makeGbc(-1,21));
        this.searchParamPanel.add(createButton, this.makeGbc(-1,22));

        JPanel innerParamPanel = new JPanel(new FlowLayout());
        innerParamPanel.add(this.searchParamPanel);

        JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, innerParamPanel, this.searchResultPanel);
        splitPane.setDividerLocation(250);

        // Setup the browsing tab JPanel
        this.panel.setLayout(new BorderLayout());
        this.panel.add(splitPane);
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
	String[] states = {"","AK","AL","AR","AZ","CA","CO","CT","DC","DE","FL","GA","GU","HI","IA","ID", "IL","IN","KS","KY","LA","MA","MD","ME","MH","MI","MN","MO","MS","MT","NC","ND","NE","NH","NJ","NM","NV","NY", "OH","OK","OR","PA","PR","PW","RI","SC","SD","TN","TX","UT","VA","VI","VT","WA","WI","WV","WY"};
        return states;
    }

    private String[] getStandardComboOptions(){
        return new String[] {"Doesn't Matter", "Yes", "No"};
    }

    private String[] getStatusOptions(){
        return new String[] {"Doesn't Matter", "Listed", "Sold"};
    }

    private void performSearch(){
        try(SqlConnection sql = new SqlConnection()){
            String query = "SELECT P.Price, AD.Street, AD.City, AD.State, AD.Zip, P.Picture, "
                         + "P.Bedrooms, P.Bathrooms, P.Acres, P.Basement, P.Swimming_Pool, P.Status, "
                         + "P.Central_Air, P.Gas_Heat, P.PropertyID, PB.FirstName AS BuyerFN, "
                         + "PB.LastName AS BuyerLN, PS.FirstName AS SellerFN, PS.LastName AS SellerLN, "
                         + "AG.FirstName AS AgentFN, AG.LastName AS AgentLN, S.Sale_Amount, S.Sale_Date "
                         + "FROM Properties P "
                         + "LEFT JOIN Address AD ON AD.PropertyID = P.PropertyID "
                         + "LEFT JOIN Sale S ON S.Property = P.PropertyID "
                         + "LEFT JOIN Agents AG ON AG.AgentId = S.Agent "
                         + "LEFT JOIN Person PB ON PB.PersonId = S.Buyer "
                         + "LEFT JOIN Person PS ON PS.PersonId = S.Seller ";

            ArrayList<String> params = new ArrayList<String>();

            if (!this.paramMinPrice.getText().trim().equals("")){
                params.add(String.format("P.Price > %s", this.paramMinPrice.getText().trim()));
            }
            if (!this.paramMaxPrice.getText().trim().equals("")){
                params.add(String.format("P.Price < %s", this.paramMaxPrice.getText().trim()));
            }
            if (!this.paramCityText.getText().trim().equals("")){
                params.add(String.format("AD.City = \'%s\'", this.paramCityText.getText().trim()));
            }
            if (!this.paramStateCombo.getSelectedItem().toString().equals("")){
                params.add(String.format("AD.State = \'%s\'", this.paramStateCombo.getSelectedItem().toString()));
            }
            if (!this.paramZipText.getText().trim().equals("")){
                params.add(String.format("AD.Zip = %s", this.paramZipText.getText().trim()));
            }
            if (!this.paramBedroomText.getText().trim().equals("")){
                params.add(String.format("P.Bedrooms >= %s", this.paramBedroomText.getText().trim()));
            }
            if (!this.paramBathroomText.getText().trim().equals("")){
                params.add(String.format("P.Bathrooms >= %s", this.paramBedroomText.getText().trim()));
            }
            if (!this.paramAcresText.getText().trim().equals("")){
                params.add(String.format("P.Acres >= %s", this.paramAcresText.getText().trim()));
            }
            if (this.paramBasementCombo.getSelectedItem().toString().equals("Yes")){
                params.add(String.format("P.Basement = 1"));
            } else if (this.paramBasementCombo.getSelectedItem().toString().equals("No")){
                params.add(String.format("P.Basement = 0"));
            }
            if (this.paramPoolCombo.getSelectedItem().toString().equals("Yes")){
                params.add(String.format("P.Swimming_Pool = 1"));
            } else if (this.paramPoolCombo.getSelectedItem().toString().equals("No")){
                params.add(String.format("P.Swimming_Pool = 0"));
            }
            if (this.paramCentralAirCombo.getSelectedItem().toString().equals("Yes")){
                params.add(String.format("P.Central_Air = 1"));
            } else if (this.paramCentralAirCombo.getSelectedItem().toString().equals("No")){
                params.add(String.format("P.Central_Air = 0"));
            }
            if (this.paramGasHeatCombo.getSelectedItem().toString().equals("Yes")){
                params.add(String.format("P.Gas_Heat = 1"));
            } else if (this.paramGasHeatCombo.getSelectedItem().toString().equals("No")){
                params.add(String.format("P.Gas_Heat = 0"));
            }
            if (this.paramStatusCombo.getSelectedItem().toString().equals("Listed")){
                params.add(String.format("P.Status = 0"));
            } else if (this.paramStatusCombo.getSelectedItem().toString().equals("Sold")){
                params.add(String.format("P.Status = 1"));
            }

            if (params.size() > 0){
                query += String.format("WHERE %s ", params.get(0));

                if (params.size() > 1){
                    for (int i = 1; i < params.size(); i++){
                        query += String.format("AND %s ", params.get(i));
                    }
                }
            }

            ResultSet result = sql.ExecuteQuery(query);
            JPanel resultPanel = new JPanel(new GridLayout(0,1));
            resultPanel.setSize(300,300);
            resultPanel.setBackground(Color.white);

            resultList = new ArrayList<ResultPanel>();

            while (result.next()){
                ResultPanel rowPanel = new ResultPanel(true);
                rowPanel.setBorder(BorderFactory.createLineBorder(Color.black));

                ResultPanelBuilder builder = new ResultPanelBuilder();
                builder.id = result.getInt("PropertyID");
                builder.price = String.format("%,d", result.getInt("Price"));
                builder.street = result.getString("Street");
                builder.city = result.getString("City");
                builder.state = result.getString("State");
                builder.zip = Integer.toString(result.getInt("Zip"));
                builder.bedroom = Integer.toString(result.getInt("Bedrooms"));
                builder.bathroom = Integer.toString(result.getInt("Bathrooms"));
                builder.acres = Integer.toString(result.getInt("Acres"));
                builder.basement = result.getInt("Basement") == 1 ? "Yes" : "No";
                builder.pool = result.getInt("Swimming_Pool") == 1 ? "Yes" : "No";
                builder.centralAir = result.getInt("Central_Air") == 1 ? "Yes" : "No";
                builder.gasHeat = result.getInt("Gas_Heat") == 1 ? "Yes" : "No";
                builder.status = result.getInt("Status") == 1 ? "Sold" : "Listed";
                builder.seller = String.format("%s %s", result.getString("SellerFN"), result.getString("SellerLN"));
                builder.agent = String.format("%s %s", result.getString("AgentFN"), result.getString("AgentLN"));
                builder.buyer = String.format("%s %s", result.getString("BuyerFN"), result.getString("BuyerLN"));
                builder.saleAmount = String.format("%,d", result.getInt("Sale_Amount"));

                DateFormat df = new SimpleDateFormat("MMMM dd, yyyy");
                Date tempSaleDate = result.getDate("Sale_Date");
                if (tempSaleDate != null){
                    builder.saleDate = df.format(tempSaleDate);
                }

                Blob blob = result.getBlob("Picture");
                if (blob != null){
                    InputStream in = blob.getBinaryStream();
                    builder.picture = ImageIO.read(in);
                }

                rowPanel.configureUI(builder);
                resultPanel.add(rowPanel);
                resultList.add(rowPanel);
            }

            this.searchResultScrollPane.getViewport().add(resultPanel);
            this.panel.revalidate();
        } catch (Exception ex) {
            System.out.println("Exception: " + ex);
        }
    }

    public static void selectionChanged(ResultPanel selected){
        boolean selectionActive = false;

        for (ResultPanel cp : resultList){
            if (cp != selected){
                cp.deselect();
            }

            if (cp.isSelected){
                selectionActive = true;
                selectedPanel = cp;
            }
        }

        if (selectionActive){
            updateButton.setEnabled(true);
        } else {
            updateButton.setEnabled(false);
        }
    }
}
