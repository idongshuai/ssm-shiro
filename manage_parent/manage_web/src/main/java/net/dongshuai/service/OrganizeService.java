package net.dongshuai.service;

import net.dongshuai.entity.Organize;

import java.util.List;
import java.util.Map;

/**
 * 记录组织机构管理信息
 * 
 * @author
 * @email qq
 * @date 2018-6-06 17:39:31
 */
public interface OrganizeService {
	
	Organize queryObject(String orgId);
	
	List<Organize> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(Organize organize);
	
	void update(Organize organize);
	
	void delete(String orgId);
	
	void deleteBatch(String[] orgIds);

    void updateState(String[] ids, String stateValue);

	List<Organize> getList();

	Organize queryByOrgCode(String orgCode);
}
