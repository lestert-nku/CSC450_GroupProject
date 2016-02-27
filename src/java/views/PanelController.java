import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class PanelController extends JFrame{
  PanelController(String title){
    super(title);
    this.setSize(800,600);
    this.setControls();
    this.setListeners();
  }

  private void setControls(){
    CardLayout layout = new CardLayout();
    this.setLayout(layout);
    this.add(new MainPanelView().getPanel());
  }

  private void setListeners(){
    addWindowListener(new WindowAdapter(){
      public void windowClosing(WindowEvent windowEvent){
        System.exit(0);
      }
    });
  }
}
