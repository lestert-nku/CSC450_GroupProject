package edu.nku.csc450.views;

import java.awt.*;
import javax.swing.*;

public class DeveloperPanelView extends BasePanelView{

    public DeveloperPanelView() {}

    @Override
    protected void configureUI(){
        panel.setBackground(new Color(150,0,0));
        panel.setLayout(new FlowLayout());
        JLabel testLabel = new JLabel("HELLO Developer Panel!", JLabel.CENTER);
        panel.add(testLabel);
    }
}
