package edu.nku.csc450.views;

import edu.nku.csc450.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import java.util.ArrayList;

public class BuyerPanelView extends BasePanelView{
    private JPanel searchParamPanel;
    private JPanel searchResultPanel;
    private JScrollPane searchResultScrollPane;
    private JButton searchButton;
    private JButton backButton;
    private JTextField paramMinPrice;
    private JTextField paramMaxPrice;
    private JTextField paramCityText;
    private JComboBox paramStateCombo;
    private JTextField paramZipText;
    private JTextField paramBedroomText;
    private JTextField paramBathroomText;
    private JTextField paramAcresText;
    private JCheckBox paramBasementCheck;
    private JCheckBox paramPoolCheck;
    private JCheckBox paramCentralAir;
    private JCheckBox paramGasHeat;

    public BuyerPanelView() {}

    @Override
    protected void configureUI(){
        this.searchParamPanel = new JPanel();
        this.searchResultPanel = new JPanel();

        // Create and set parameter layout
        this.searchParamPanel.setLayout(new GridBagLayout());
        this.searchResultPanel.setLayout(new BorderLayout());

        this.searchResultScrollPane = new JScrollPane();
        this.searchResultScrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
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

        this.paramMinPrice = new JTextField(10);
        this.paramMaxPrice = new JTextField(10);
        this.paramCityText = new JTextField(10);
        this.paramStateCombo = new JComboBox(this.getStates());
        this.paramZipText = new JTextField(10);
        this.paramBedroomText = new JTextField(10);
        this.paramBathroomText = new JTextField(10);
        this.paramAcresText = new JTextField(10);
        this.paramBasementCheck = new JCheckBox();
        this.paramPoolCheck = new JCheckBox();
        this.paramCentralAir = new JCheckBox();
        this.paramGasHeat = new JCheckBox();

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
        this.searchParamPanel.add(this.paramBasementCheck, this.makeGbc(1,9));
        this.searchParamPanel.add(new JLabel("Pool"), this.makeGbc(0,10));
        this.searchParamPanel.add(this.paramPoolCheck, this.makeGbc(1,10));
        this.searchParamPanel.add(new JLabel("Central Air"), this.makeGbc(0,11));
        this.searchParamPanel.add(this.paramCentralAir, this.makeGbc(1,11));
        this.searchParamPanel.add(new JLabel("Gas Heat"), this.makeGbc(0,12));
        this.searchParamPanel.add(this.paramGasHeat, this.makeGbc(1,12));
        this.searchParamPanel.add(this.backButton, this.makeGbc(0,20));
        this.searchParamPanel.add(this.searchButton, this.makeGbc(1,20));

        JPanel innerParamPanel = new JPanel(new FlowLayout());
        innerParamPanel.add(this.searchParamPanel);

        JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, innerParamPanel, this.searchResultPanel);
        splitPane.setDividerLocation(250);

        // Setup base JPanel
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
        String[] states = {"IN", "KY", "OH"};
        return states;
    }

    private void performSearch(){
        try(SqlConnection sql = new SqlConnection()){
            ResultSet result = sql.ExecuteQuery("SELECT LICENSE FROM CAR");
            JPanel resultPanel = new JPanel(new GridLayout(0,1));
            resultPanel.setSize(300,300);
            resultPanel.setBackground(new Color(255,255,255));

            while (result.next()){
                JPanel rowPanel = new JPanel(new BorderLayout());
                rowPanel.setBackground(new Color(0,0,255));
                rowPanel.add(new JLabel(result.getString("LICENSE")));
                resultPanel.add(rowPanel);
            }

            this.searchResultScrollPane.getViewport().add(resultPanel);
            this.panel.revalidate();
        } catch (Exception ex) {
            System.out.println("Execption: " + ex);
        }
    }
}
