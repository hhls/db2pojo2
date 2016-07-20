package ${package_path};

import java.util.List;
import com.yuxin.wx.model.${class_name};
/**
 * Service Interface:${class_name}
 * @author ${author}
 * @date ${sysDate?date}
 */
public interface I${class_name}Service  {
	/**
	 * 
	* @Title: save${class_name}
	* @Description: 新增${class_name}
	* @return void    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by wangzx
	 */
	void insert(${class_name} entity);
	
	/**
	 * 
	* @Title: batchSave${class_name} 
	* @Description: 批量新增${class_name}
	* @return void    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by wangzx
	 */
	void batchInsert(List<${class_name}> list);
	
	/**
	 * 
	* @Title: update${class_name} 
	* @Description: 编辑${class_name}
	* @return void    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by wangzx
	 */
	void update(${class_name} entity);
	
	/**
	 * 
	* @Title: delete${class_name}ById 
	* @Description: 根据id删除${class_name}
	* @param id
	* @return void    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by wangzx
	 */
	void delete${class_name}ById(Integer id);
	
	/**
	 * 
	* @Title: delete${class_name}ByIds 
	* @Description: 根据id批量删除${class_name}
	* @param ids
	* @return void    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by wangzx
	 */
	void delete${class_name}ByIds(Integer[] ids);
	
	/**
	 * 
	* @Title: find${class_name}ById 
	* @Description: 根据id查询
	* @param id
	* @return void    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by wangzx
	 */
	${class_name} find${class_name}ById(Integer id);
	
	/**
	 * 
	* @Title: find${class_name}ByPage 
	* @Description: 分页查询
	* @return
	* @return List<${class_name}>    返回类型 
	* @throws 
	* @exception 
	* @date ${sysDate?date}
	* @user by wangzx
	 */
	List<${class_name}> find${class_name}ByPage(${class_name} search);
}