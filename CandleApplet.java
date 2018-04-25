// Applet with check boxes and math

import java.awt.*;
import java.applet.*;
import java.awt.event.*;

public class CandleApplet extends Applet implements ItemListener
{

     // create components forapplet
	Label companyNameLabel = new Label ("CandleLine--candles on Line");


	Label priceLabel = new Label ("please enter the total dollar amount of your order:");
	   TextField priceField = new TextField(35);


	Label shippingLabel = new Label ("please choose our mtehod of shipping:");

	CheckboxGroup shippingGroup = new CheckboxGroup();
		Checkbox oneDayBox = new Checkbox ("Priority (Overnight)", false, shippingGroup);
		Checkbox twoDayBox = new Checkbox ("Express (2 business days)", false, shippingGroup);
		Checkbox moreDaysBox = new Checkbox ("Standard (3 t0 7 business days)",false , shippingGroup);
		Checkbox hiddenBox = new Checkbox ("",true,shippingGroup);


	Label outputLabel = new Label ("We Guarantee on time delivery, or your money back.");

        public void init()
        {
		//add components to window and set colors
		setBackground(Color.cyan);
		add(companyNameLabel);
		add(priceLabel);
		add(priceField);
			priceField.requestFocus();
		add(shippingLabel);
		add(oneDayBox);
			oneDayBox.addItemListener(this);
		add(twoDayBox);
			twoDayBox.addItemListener(this);
		add(moreDaysBox);
			moreDaysBox.addItemListener(this);
		add(outputLabel);
}

public void itemStateChanged (ItemEvent choice)
{
	try
	{
		double shipping;
		double price = Double.parseDouble(priceField.getText( ));

		// check to see if price is greater than zero
		if (price <= 0 ) throw new NumberFormatException();

		// check to see which option button is seleted
		if (oneDayBox.getState())
			shipping = 14.95;
                else
	 	 if (twoDayBox.getState())
			shipping = 11.95;
                      else
	                if (price >  75)
				shipping = 0;
			else
				shipping = 5.95;

		//Display output
		outputLabel.setForeground(Color.black);
		outputLabel.setText (" Your total cost is $" + (price+ shipping));
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
