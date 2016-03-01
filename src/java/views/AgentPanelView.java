package edu.nku.csc450;

import java.awt.*;
import javax.swing.*;

public class AgentPanelView extends BasePanelView{

    AgentPanelView() {}

    @Override
    protected void configureUI(){
        panel.setBackground(new Color(0,0,120));
        panel.setLayout(new FlowLayout());
        JLabel testLabel = new JLabel("HELLO Agent Panel!", JLabel.CENTER);
        panel.add(testLabel);
    }
}
