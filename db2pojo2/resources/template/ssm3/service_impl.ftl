package ${package_path};

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.${model_package}.I${class_name}Service;

/**
 * Service Implementation:${class_name}
 * @author ${author}
 * @date ${sysDate?date}
 */
@Service
@Transactional
public class ${class_name}ServiceImpl implements I${class_name}Service {

	@Autowired
	private ${class_name}Mapper ${class_name?substring(0,1)?lower_case}${class_name?substring(1)}Mapper;
	
	/**
	 * 
	* @Title: save${class_name}
	* @Description: 新增${class_name}
	* @return void    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by chopin
	 */
	@Override
	public void insert(${class_name} entity){
		${class_name?substring(0,1)?lower_case}${class_name?substring(1)}Mapper.insert(entity);
	};
	
	/**
	 * 
	* @Title: batchSave${class_name} 
	* @Description: 批量新增${class_name}
	* @return void    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by chopin
	 */
	@Override
	public void batchInsert(List<${class_name}> entity){
		${class_name?substring(0,1)?lower_case}${class_name?substring(1)}Mapper.batchInsert(entity);
	};
	
	/**
	 * 
	* @Title: update${class_name} 
	* @Description: 编辑${class_name}
	* @return void    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by chopin
	 */
	@Override
	public void update(${class_name} entity){
		${class_name?substring(0,1)?lower_case}${class_name?substring(1)}Mapper.update(entity);
	};
	
	/**
	 * 
	* @Title: delete${class_name}ById 
	* @Description: 根据id删除${class_name}
	* @param id
	* @return void    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by chopin
	 */
	 @Override
	public void delete${class_name}ById(Integer id){
		${class_name?substring(0,1)?lower_case}${class_name?substring(1)}Mapper.deleteById(id);
	};
	
	/**
	 * 
	* @Title: delete${class_name}ByIds 
	* @Description: 根据id批量删除${class_name}
	* @param ids
	* @return void    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by chopin
	 */
	@Override
	public void delete${class_name}ByIds(Integer[] ids){
		${class_name?substring(0,1)?lower_case}${class_name?substring(1)}Mapper.deleteByIds(ids);
	};
	
	/**
	 * 
	* @Title: find${class_name}ById 
	* @Description: 根据id查询
	* @param id
	* @return void    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by chopin
	 */
	@Override
	public ${class_name} find${class_name}ById(Integer id){
		return ${class_name?substring(0,1)?lower_case}${class_name?substring(1)}Mapper.findById(id);
	};
	
	/**
	 * 
	* @Title: find${class_name}ByPage 
	* @Description: 分页查询
	* @return
	* @return List<${class_name}>    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by chopin
	 */
	@Override
	public List<${class_name}> find${class_name}ByPage(${class_name} search){
		return ${class_name?substring(0,1)?lower_case}${class_name?substring(1)}Mapper.page(search);
	};
}
