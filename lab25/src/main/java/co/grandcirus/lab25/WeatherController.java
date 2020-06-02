package co.grandcirus.lab25;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WeatherController {

	@Autowired
	private WeatherApiService service;
	
	@RequestMapping("/")
	public String home( Model model){
		
		List<DailyWeather> dailyWeather = service.dailyWeather();
		
		model.addAttribute("dailyWeather" , dailyWeather);
		return "index";
	}
}
