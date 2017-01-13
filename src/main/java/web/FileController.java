package web;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

@WebServlet("/extract")
@MultipartConfig
public class FileController extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        HttpSession session = request.getSession();

        InputStream inputStream = request.getPart("fileContent").getInputStream();

        Workbook workbook = new XSSFWorkbook(inputStream); //.xlsx
        Sheet firstSheet = workbook.getSheetAt(0);
        Iterator<Row> iterator = firstSheet.iterator();

        List<String> values = new ArrayList<>();
        
        while (iterator.hasNext())
        {
            Row nextRow = iterator.next();
            Iterator<Cell> cellIterator = nextRow.cellIterator();

            while (cellIterator.hasNext())
            {
                Cell cell = cellIterator.next();

                switch (cell.getCellType())
                {
                    case Cell.CELL_TYPE_NUMERIC:
                        values.add((int)cell.getNumericCellValue()+"");
                        break;
                }
            }
        }

        workbook.close();
        inputStream.close();

        session.setAttribute("zipCodes", values);
        response.sendRedirect("final-result.jsp");
    }

}
