package modele;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.hssf.*;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;  
import org.apache.poi.ss.usermodel.Cell;  
import org.apache.poi.ss.usermodel.Row;  
import org.apache.poi.ss.usermodel.Sheet;   
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;  

import Entity.ConnectionManager;

import com.mysql.jdbc.Statement;

public class ReadAlbumRecord  
{	
	public void readExcelFile() throws Exception
	{
		String fileName = "cdinfo.xlsx";
		Workbook wb = WorkbookFactory.create(new FileInputStream(fileName));
		int sheetNum = wb.getNumberOfSheets();
		Connection currentCon = ConnectionManager.getConnection();
	    Statement statement= (Statement) currentCon.createStatement();
	    String sql1 ="INSERT INTO author(name) value(?)";
	    String sql2 = "SELECT id FROM ";
	    String sql = "INSERT INTO album (name, issuing_date, price,type,author_id) VALUES() ";
		for(int i =0;i< sheetNum; i++)
		{
			Sheet childSheet = wb.getSheetAt(i);
			int rowNum = childSheet.getLastRowNum();
			
			for(int j = 0; j< rowNum; j++)
			{
				Row row = childSheet.getRow(j);
				int cellNum = row.getLastCellNum();
				
				for(int k=0; k< rowNum; k++)
				{
					
				}
			}
			
		}
	}
}
