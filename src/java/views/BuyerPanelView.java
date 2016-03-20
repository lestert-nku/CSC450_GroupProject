package edu.nku.csc450.views;

import java.awt.*;
import javax.swing.*;

public class BuyerPanelView extends BasePanelView{
    private JPanel searchParamPanel;
    private JList searchResultList;
    private JTextField paramCityText;
    private JTextField paramZipText;

    public BuyerPanelView() {}

    @Override
    protected void configureUI(){
        this.searchParamPanel = new JPanel();
        this.searchResultList = new JList();

        // Create and set parameter layout
        GridBagLayout paramGridLayout = new GridBagLayout();
        this.searchParamPanel.setLayout(paramGridLayout);

        // Initialize parameter search controls and add to searchParamPanel
        this.paramCityText = new JTextField(10);
        this.paramZipText = new JTextField(10);

        // Add the search paramters to the layout
        this.searchParamPanel.add(new JLabel("City"), this.makeGbc(0,0));
        this.searchParamPanel.add(this.paramCityText, this.makeGbc(1,0));
        this.searchParamPanel.add(new JLabel("Zip"), this.makeGbc(0,1));
        this.searchParamPanel.add(this.paramZipText, this.makeGbc(1,1));

        JPanel innerParamPanel = new JPanel(new FlowLayout());
        innerParamPanel.add(this.searchParamPanel);

        JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, innerParamPanel, this.searchResultList);
        splitPane.setDividerLocation(200);

        // Setup base JPanel
        this.panel.setLayout(new BorderLayout());
        this.panel.add(splitPane);
    }

    private GridBagConstraints makeGbc(int x, int y) {
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.gridwidth = 1;
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
}
