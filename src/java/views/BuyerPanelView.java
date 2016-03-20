package edu.nku.csc450.views;

import java.awt.*;
import javax.swing.*;

public class BuyerPanelView extends BasePanelView{
    private JPanel searchParamPanel;
    private JList searchResultList;
    private JTextField paramMinPrice;
    private JTextField paramMaxPrice;
    private JTextField paramCityText;
    private JComboBox paramStateCombo;
    private JTextField paramZipText;
    private JTextField paramBedroomText;
    private JTextField paramBathroomText;

    public BuyerPanelView() {}

    @Override
    protected void configureUI(){
        this.searchParamPanel = new JPanel();
        this.searchResultList = new JList();

        // Create and set parameter layout
        GridBagLayout paramGridLayout = new GridBagLayout();
        this.searchParamPanel.setLayout(paramGridLayout);

        // Initialize parameter search controls and add to searchParamPanel
        this.paramMinPrice = new JTextField(10);
        this.paramMaxPrice = new JTextField(10);
        this.paramCityText = new JTextField(10);
        this.paramStateCombo = new JComboBox(this.getStates());
        this.paramZipText = new JTextField(10);
        this.paramBedroomText = new JTextField(10);
        this.paramBathroomText = new JTextField(10);

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

        JPanel innerParamPanel = new JPanel(new FlowLayout());
        innerParamPanel.add(this.searchParamPanel);

        JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, innerParamPanel, this.searchResultList);
        splitPane.setDividerLocation(225);

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
}
