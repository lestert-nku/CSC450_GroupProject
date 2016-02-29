package edu.nku.csc450;

import java.awt.*;
import javax.swing.*;

public class DeveloperPanelView implements IPanelView{
  private static JPanel panel;

  DeveloperPanelView() {}

  public JPanel getPanel(){
    if (panel == null)
    {
      panel = new JPanel();
      configureDefaults();
    }

    return panel;
  }

  private void configureDefaults(){
    panel.setBackground(new Color(150,0,0));
    panel.setLayout(new FlowLayout());
    JLabel testLabel = new JLabel("HELLO Developer Panel!", JLabel.CENTER);
    panel.add(testLabel);
  }
}
