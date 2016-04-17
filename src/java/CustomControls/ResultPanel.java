package edu.nku.csc450.CustomControls;

import edu.nku.csc450.views.*;
import java.awt.*;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import javax.swing.*;

public class ResultPanel extends JPanel implements MouseListener{
    public boolean isSelected = false;
    private Color colorHighlight = new Color(230, 249, 255); // Light blue
    private Color colorStandard = new Color(255, 255, 255);
    private ResultPanelBuilder currentBuilder;

    public ResultPanel(LayoutManager lm){
        this.setLayout(lm);
        this.addMouseListener(this);
        this.setFocusable(true);
        this.setBackground(this.colorStandard);
    }

    // Required overrides for implementing MouseListener

    @Override public void mouseClicked(MouseEvent e){
        if (this.isSelected){
            this.isSelected = false;
            this.setBackground(this.colorStandard);
        } else {
            this.isSelected = true;
            this.setBackground(this.colorHighlight);
        }

        AgentPanelView.selectionChanged(this);
    }

    @Override public void mousePressed(MouseEvent e){}
    @Override public void mouseReleased(MouseEvent e){}

    @Override
    public void mouseEntered(MouseEvent e)
    {
        this.setBackground(this.colorHighlight);
    }

    @Override
    public void mouseExited(MouseEvent e)
    {
        if (!this.isSelected){
            this.setBackground(this.colorStandard);
        }
    }

    // Public methods

    public void deselect(){
        if (this.isSelected){
            this.isSelected = false;
            this.setBackground(this.colorStandard);
        }
    }

    public ResultPanelBuilder getCurrentBuilder(){
        return this.currentBuilder;
    }

    public void configureUI(ResultPanelBuilder builder){
        this.currentBuilder = builder;

        this.add(new JLabel("Price: $" + builder.price));
        this.add(new JLabel("Address: " + builder.street));
        this.add(new JLabel("City: " + builder.city));
        this.add(new JLabel("State: " + builder.state));
        this.add(new JLabel("Zip: " + builder.zip));
    }
}
