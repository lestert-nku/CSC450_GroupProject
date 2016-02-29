package edu.nku.csc450;

import java.awt.*;
import javax.swing.*;

public class BuyerPanelView implements IPanelView{
  private static JPanel panel;

  BuyerPanelView() {}

  public JPanel getPanel(){
    if (panel == null)
    {
      panel = new JPanel();
      configureDefaults();
    }

    return panel;
  }

  private void configureDefaults(){
    panel.setBackground(new Color(0,200,0));
    panel.setLayout(new FlowLayout());
    JLabel testLabel = new JLabel("HELLO Buyer Panel!", JLabel.CENTER);
    panel.add(testLabel);
  }
}
