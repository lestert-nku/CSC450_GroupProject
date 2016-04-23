package edu.nku.csc450.CustomControls;

import edu.nku.csc450.views.*;
import java.awt.*;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import javax.swing.*;

public class ResultPanel extends JPanel implements MouseListener{
    public boolean isSelected = false;
	public boolean selectable = true;
    private Color colorHighlight = new Color(230, 249, 255);
    private Color colorStandard = new Color(255, 255, 255);
    private ResultPanelBuilder currentBuilder;

	public ResultPanel(boolean canSelect){
        this.setLayout(new GridBagLayout());
        this.addMouseListener(this);
        this.setFocusable(true);
        this.setBackground(this.colorStandard);
		this.selectable = canSelect;
    }

    // Required overrides for implementing MouseListener

    @Override public void mouseClicked(MouseEvent e){
		if(this.selectable){
            if (this.isSelected){
                this.isSelected = false;
                this.setBackground(this.colorStandard);
            } else {
                this.isSelected = true;
                this.setBackground(this.colorHighlight);
            }

            AgentPanelView.selectionChanged(this);
		}
    }

    @Override public void mousePressed(MouseEvent e){}
    @Override public void mouseReleased(MouseEvent e){}

    @Override
    public void mouseEntered(MouseEvent e)
    {
		if(this.selectable){
            this.setBackground(this.colorHighlight);
        }
    }

    @Override
    public void mouseExited(MouseEvent e)
    {
		if(this.selectable){
            if (!this.isSelected){
                this.setBackground(this.colorStandard);
            }
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

        // Column 1
        if (builder.picture != null){
            this.add(new JLabel("", new ImageIcon(builder.picture), JLabel.LEFT), this.makeGbc(0,0));
        }
		else{
			this.add(new squareLabel(),this.makeGbc(0,0));
		}

        // Column 2
        this.add(new JLabel("Price: $ " + builder.price), this.makeGbc(1,0));
        this.add(new JLabel("Address: " + builder.street), this.makeGbc(1,1));
        this.add(new JLabel("City: " + builder.city), this.makeGbc(1,2));
        this.add(new JLabel("State: " + builder.state), this.makeGbc(1,3));
        this.add(new JLabel("Zip: " + builder.zip), this.makeGbc(1,4));

        // Column 3
        this.add(new JLabel("Bedrooms: " + builder.bedroom), this.makeGbc(2,0));
        this.add(new JLabel("Bathrooms: " + builder.bathroom), this.makeGbc(2,1));
        this.add(new JLabel("Acres: " + builder.acres), this.makeGbc(2,2));
        this.add(new JLabel("Basement: " + builder.basement), this.makeGbc(2,3));
        this.add(new JLabel("Pool: " + builder.pool), this.makeGbc(2,4));
        this.add(new JLabel("Central Air: " + builder.centralAir), this.makeGbc(2,5));
        this.add(new JLabel("Gas Heat: " + builder.gasHeat), this.makeGbc(2,6));

        // Column 4
        if (this.selectable){
            this.add(new JLabel("Status: " + builder.status), this.makeGbc(3,0));
            this.add(new JLabel("Seller: " + builder.seller), this.makeGbc(3,1));
            this.add(new JLabel("Listing Agent: " + builder.agent), this.makeGbc(3,2));
        }
        if (builder.status.equals("Sold")){
            this.add(new JLabel("Buyer: " + builder.buyer), this.makeGbc(3,4));
            this.add(new JLabel("Sale Amount: $ " + builder.saleAmount), this.makeGbc(3,5));
            this.add(new JLabel("Closing Date: " + builder.saleDate), this.makeGbc(3,6));
        }
    }

    private GridBagConstraints makeGbc(int x, int y) {
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.gridwidth = (x == -1) ? 2 : 1;
        gbc.gridheight = (x == 0) ? 7 : 1;
        gbc.gridx = x;
        gbc.gridy = y;
        gbc.weightx = x;
        gbc.weighty = 1.0;
        gbc.insets = new Insets(5, 5, 5, 5);
        gbc.anchor = GridBagConstraints.LINE_START;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        return gbc;
    }

    private class squareLabel extends JLabel
    {
        public squareLabel()
        {
            this.setPreferredSize(new Dimension(200, 200));
            this.setBorder(BorderFactory.createLineBorder(Color.black));
        }

        public void paintComponent(Graphics g)
        {
            super.paintComponent(g);
    		g.drawRect (0, 0, 200, 200);
        }

    }
}
