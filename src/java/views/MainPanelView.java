package edu.nku.csc450.views;

import edu.nku.csc450.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class MainPanelView extends BasePanelView{

    MainPanelView() {}

    @Override
    protected void configureUI(){
        panel.setLayout(new GridBagLayout());

        // Create JPanel to hold all controls / labels
        JPanel controlPanel = new JPanel();
        GridLayout controlLayout = new GridLayout(2, 1);
        controlLayout.setVgap(75);
        controlPanel.setLayout(controlLayout);

        // Create header JLabel
        JLabel headerLabel = new JLabel("Real Estate Project App", JLabel.CENTER);
        headerLabel.setFont(new Font("Sans-Serif", Font.PLAIN, 48));

        // Create button JPanel
        JPanel buttonPanel = new JPanel();
        buttonPanel.setSize(300, 300);
        GridLayout buttonLayout = new GridLayout(0, 3);
        buttonLayout.setHgap(10);
        buttonLayout.setVgap(10);
        buttonPanel.setLayout(buttonLayout);

        // Create developer button to navigate to the developer view
        JButton devNavButton = new JButton("Developer View");
        devNavButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                PanelController.showCard("DEV");
            }
        });
        devNavButton.setPreferredSize(new Dimension(200,100));
        devNavButton.setFont(new Font("Sans-Serif", Font.PLAIN, 24));
        buttonPanel.add(devNavButton);

        // Create agent button to navigate to the agent view
        JButton agentNavButton = new JButton("Agent View");
        agentNavButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                PanelController.showCard("AGENT");
            }
        });
        agentNavButton.setPreferredSize(new Dimension(200,100));
        agentNavButton.setFont(new Font("Sans-Serif", Font.PLAIN, 24));
        buttonPanel.add(agentNavButton);

        // Create buyer button to navigate to the buyer view
        JButton buyerNavButton = new JButton("Buyer View");
        buyerNavButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                PanelController.showCard("BUYER");
            }
        });
        buyerNavButton.setPreferredSize(new Dimension(200,100));
        buyerNavButton.setFont(new Font("Sans-Serif", Font.PLAIN, 24));
        buttonPanel.add(buyerNavButton);

        // Add sub-panels to the main JPanel
        controlPanel.add(headerLabel);
        controlPanel.add(buttonPanel);
        panel.add(controlPanel);
    }
}
