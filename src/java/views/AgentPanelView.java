package edu.nku.csc450;

import java.awt.*;
import javax.swing.*;

public class AgentPanelView implements IPanelView{
  private static JPanel panel;

  AgentPanelView() {}

  public JPanel getPanel(){
    if (panel == null)
    {
      panel = new JPanel();
      configureDefaults();
    }

    return panel;
  }

  private void configureDefaults(){
    panel.setBackground(new Color(0,0,120));
    panel.setLayout(new FlowLayout());
    JLabel testLabel = new JLabel("HELLO Agent Panel!", JLabel.CENTER);
    panel.add(testLabel);
  }
}
