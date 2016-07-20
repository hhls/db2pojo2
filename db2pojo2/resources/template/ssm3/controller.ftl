package ${package_path};

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.${model_package}.${class_name};
import com.yuxin.wx.model.classes.ClassModule;
import com.${model_package}.I${class_name}Service;

/**
 * Controller of ${class_name}
 * @author ${author}
 * @date ${sysDate?date}
 */
@Controller
@RequestMapping("/${class_name?uncap_first}")
public class ${class_name}Controller {
	
	@Autowired
	private I${class_name}Service ${class_name?uncap_first}ServiceImpl;
	
	@RequestMapping(method = RequestMethod.GET)
	public String list(Model model, ${class_name} search){
		if (search == null) {
			search = new ${class_name}();
			// search.setPageSize(20);
		}
		model.addAttribute("list", ${class_name?uncap_first}ServiceImpl.find${class_name}ByPage(search));
		return "${class_name?uncap_first}/list";
	}
	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String add(${class_name} ${class_name}) {
		${class_name?uncap_first}ServiceImpl.insert(${class_name});
		return "redirect:/${class_name?uncap_first}";
	}
	
	@RequestMapping(value="/update", method = RequestMethod.POST)
	public String update(${class_name} ${class_name}) {
		${class_name?uncap_first}ServiceImpl.update(${class_name});
		return "redirect:/${class_name?uncap_first}";
	}
	
	@RequestMapping(value="/del/{id}", method = RequestMethod.GET)
	public String del(Model model, @PathVariable Integer id) {
		${class_name?uncap_first}ServiceImpl.delete${class_name}ById(id);
		return "redirect:/${class_name?uncap_first}";
	}
	
	@ResponseBody
	@RequestMapping(value="/{id}", method = RequestMethod.GET)
	public ${class_name} getJson(Model model, @PathVariable Integer id){
		return ${class_name?uncap_first}ServiceImpl.find${class_name}ById(id);
	}
	
	/**
	 * 后台接收Date转换
	 */
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }
}
