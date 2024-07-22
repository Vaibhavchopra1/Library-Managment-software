/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package My_Forms;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.swing.JFrame;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;
/**
 *
 * @author VAIBHAV
 */
public class Chart extends JFrame{
  private static final long serialVersionUID = 1L;  
  
  public Chart(Map<Integer, String> graph) {  
  
    CategoryDataset dataset = createDataset(graph);  
      
    JFreeChart chart=ChartFactory.createBarChart(  
        "Books read Chart",   
        "Month",   
        "Total Books read",   
        dataset,  
        PlotOrientation.VERTICAL,  
        true,true,false  
       );  
  
    ChartPanel panel=new ChartPanel(chart);
    setContentPane(panel);  
   
    
  }  
  private CategoryDataset createDataset(Map<Integer, String> graph) {
		Set set = graph.entrySet();
		Iterator i = set.iterator();
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();

		while (i.hasNext()) {
			Map.Entry<Integer,String> me = (Map.Entry) i.next();
			dataset.addValue(me.getKey(), "Total books read", me.getValue());
		}
		return dataset;

	} 
  
  public static void main(String[] args) throws Exception {
  }  
    
}
