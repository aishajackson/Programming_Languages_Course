// Applet with check boxes and math

import java.awt.*;
import java.applet.*;
import java.awt.event.*;

public class ComputersCorporationApplet extends Applet implements ItemListener
{

     // create components forapplet
  Label companyNameLabel = new Label ("Reasonable Computers Corporation");


  Label priceLabel = new Label ("Please enter 500 for the basic computer price: ");
     TextField priceField = new TextField(35);


  Label devicesLabel = new Label ("Please choose the extra peripheral devices you need:");

  CheckboxGroup devicesGroup = new CheckboxGroup();
    Checkbox printerBox = new Checkbox ("Printer", false, devicesGroup);
    Checkbox monitorsBox = new Checkbox ("Monitor", false, devicesGroup);
    Checkbox modemBox = new Checkbox ("Modems",false , devicesGroup);
    Checkbox ehdBox = new Checkbox ("External Hard Drive",false , devicesGroup);
    Checkbox scannerBox = new Checkbox ("Scanner",false , devicesGroup);
    Checkbox mouseBox = new Checkbox ("Mouse",false , devicesGroup);
    Checkbox hiddenBox = new Checkbox ("",true,devicesGroup);


  Label outputLabel = new Label ("We Guarantee great products, or your money back.");

        public void init()
        {
    //add components to window and set colors
    setBackground(Color.cyan);
    add(companyNameLabel);
    add(priceLabel);
    add(priceField);
    priceField.requestFocus();
    add(devicesLabel);
    add(printerBox);
    printerBox.addItemListener(this);
    add(monitorsBox);
    monitorsBox.addItemListener(this);
    add(modemBox);
    modemBox.addItemListener(this);
    add(ehdBox);
    ehdBox.addItemListener(this);
    add(scannerBox);
    scannerBox.addItemListener(this);
    add(mouseBox);
    mouseBox.addItemListener(this);
    add(outputLabel);
}

public void itemStateChanged (ItemEvent choice)
{
  try
  {
    double Cost = 0;
    double price = Double.parseDouble(priceField.getText( ));

    // check to see if price is greater than zero
    if (price <= 0 ) throw new NumberFormatException();

    // check to see which option button is seleted
    if (printerBox.getState())
      Cost = 30.00;
    else
      if (monitorsBox.getState())
          Cost = 170.00;
    else
      if (modemBox.getState())
          Cost = 88.24;
    else
      if (ehdBox.getState())
          Cost = 51.79;
    else
      if (scannerBox.getState())
          Cost = 249.99;
    else
      if (mouseBox.getState())
          Cost = 9.14;
      else
          if (price == 500)
              Cost = 0;

    //Display output
    outputLabel.setForeground(Color.black);
    outputLabel.setText (" Your total cost is $" + (price+ Cost));
    }
    catch (NumberFormatException e)
      {
        outputLabel.setText (" you must enter a dollar amount greater than zero");
        outputLabel.setForeground(Color.red);
        hiddenBox.setState(true);
        priceField.setText("");
        priceField.requestFocus();
    }
}
}
