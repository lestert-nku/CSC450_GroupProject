package edu.nku.csc450;

import edu.nku.csc450.views.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class PanelController extends JFrame{
    private static JPanel cardPanel;
    private static CardLayout cards;

    PanelController(String title){
        super(title);
        this.setSize(1200,800);
        this.setControls();
        this.setListeners();
    }

    private void setControls(){
        // Create JPanel to hold all cards
        PanelController.cardPanel = new JPanel();
        PanelController.cardPanel.setLayout(new CardLayout());
        // Add all cards (JPanel views) that will be used to the layout
        PanelController.cardPanel.add(new MainPanelView().getPanel(), "MAIN");
        PanelController.cardPanel.add(new AgentPanelView().getPanel(), "AGENT");
        PanelController.cardPanel.add(new BuyerPanelView().getPanel(), "BUYER");
        this.add(PanelController.cardPanel);

        // Get the layout and show the default JPanel
        PanelController.cards = (CardLayout) this.cardPanel.getLayout();
        PanelController.cards.show(PanelController.cardPanel, "MAIN");
    }

    private void setListeners(){
        addWindowListener(new WindowAdapter(){
            public void windowClosing(WindowEvent windowEvent){
                System.exit(0);
            }
        });
    }

    public static void showCard(String cardName){
        try{
            PanelController.cards.show(PanelController.cardPanel, cardName);
        } catch (Exception ex) {
            throw ex;
        }
    }
}
