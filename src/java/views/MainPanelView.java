package edu.nku.csc450;

import java.awt.*;
import javax.swing.*;

public class MainPanelView implements IPanelView{
  private static JPanel mainPanelView;

  MainPanelView() {}

  public JPanel getPanel(){
    if (mainPanelView == null)
    {
      mainPanelView = new JPanel();
      configureDefaults();
    }

    return mainPanelView;
  }

  private void configureDefaults(){
    mainPanelView.setLayout(new FlowLayout());
    JLabel testLabel = new JLabel("HELLO Main Panel!", JLabel.CENTER);
    mainPanelView.add(testLabel);
  }
}
