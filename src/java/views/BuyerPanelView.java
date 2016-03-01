package edu.nku.csc450;

import java.awt.*;
import javax.swing.*;

public class BuyerPanelView extends BasePanelView{

    BuyerPanelView() {}

    @Override
    protected void configureUI(){
        panel.setBackground(new Color(0,200,0));
        panel.setLayout(new FlowLayout());
        JLabel testLabel = new JLabel("HELLO Buyer Panel!", JLabel.CENTER);
        panel.add(testLabel);
    }
}
