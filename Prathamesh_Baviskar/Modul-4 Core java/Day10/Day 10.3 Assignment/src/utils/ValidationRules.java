package utils;

import static com.app.vehicles.Vehicle.sdf;

import java.text.ParseException;
import java.util.Date;
import com.app.vehicles.*;
import custom_exceptions.VehicleHandlingException;


public class ValidationRules {
	private static Date strtDate, endDate;
	static {
		try {
			strtDate = sdf.parse("2021-4-1");
			endDate = sdf.parse("2022-3-31");
		} catch (ParseException e) {
			System.out.println("Err in static init block " + e);
		}
	}

	//add a static method to parse n validate manufacturing date
	public static Date parseAndValidateManufactureDate(String manuDate)
			throws ParseException, VehicleHandlingException {
		// parse
		Date d1 = sdf.parse(manuDate);
		// =>parsing successful --- validation

		if (d1.before(strtDate) || d1.after(endDate))
			throw new VehicleHandlingException("Invalid Manufacture Date!!!!!");
		// => parsing n validation : success
		return d1;// ret parsed n validated date cls instance to the caller (Tester)

	}

	// add a static method to check for dup chasis no : based upon Vehicle's equals
	// method
	public static String checkForDuplicate(String chasisNo, Colors color, Vehicle[] showroom) throws VehicleHandlingException {
		// iterate over the Vehicle[] --equals -- true =>dup is found -->throw exc
		// equals : false for all existing vehicles in the showroom => no dup --->
		// chasisNo
		// Encapsulate chasis no details in the Vehicle class instance : call overloaded
		// ctor
		
		Vehicle newVehicle = new Vehicle(chasisNo,color);
		//{v1,v2,null.....null}
		for (Vehicle v : showroom)
			if (v != null)
				if (v.equals(newVehicle))
					throw new VehicleHandlingException("Dup Chasis found!!!!");
		return chasisNo;//rets validated non dup chasis no to the caller.
	}
	
	//add static method for : parsing (string ---> Category:Enum) + validation
	public static Category parseAndValidateCategory(String categoryName) throws VehicleHandlingException
	{
		try {
		return Category.valueOf(categoryName.toUpperCase());
		} catch (IllegalArgumentException e)
		{
			//=> invalid category
			StringBuilder sb = new StringBuilder("Invalid Catagory!!!!\n");
			sb.append("Supported Categories : \n");
			for(Category c : Category.values())
				sb.append(c+" ");//c.toString() 
			
			throw new  VehicleHandlingException(sb.toString());
		}
	}
	
	//add static method for : parsing (string ---> colors:Enum) + validation
	public static Colors parseAndValidateColors(String colorName) throws VehicleHandlingException
	{
		try {
			return Colors.valueOf(colorName.toUpperCase());
		}
		catch (IllegalArgumentException e)
		{
			StringBuilder sb = new StringBuilder("Invalid Color!!!!\n");
			sb.append("Supported Colors : \n");
			for(Colors co : Colors.values())
				sb.append(co+" ");
			
			throw new VehicleHandlingException(sb.toString());
		}
		
	}
}

            