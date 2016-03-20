package edu.nku.csc450.views;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public abstract class BasePanelView{
    protected JPanel panel;

    public JPanel getPanel(){
        if (panel == null){
            panel = new JPanel();
            configureUI();
        }

        return panel;
    }

    // When extending BasePanelView, configureDefaults() is required to be overridden.
    protected void configureUI(){

    }
}
