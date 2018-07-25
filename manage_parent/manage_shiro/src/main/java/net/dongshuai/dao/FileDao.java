package net.dongshuai.dao;

import net.dongshuai.entity.File;

import java.util.List;

/**
 * 地产附件表
 * 
 * @author
 * @email qq
 * @date 2018-6-17 11:52:01
 */
public interface FileDao extends BaseDao<File> {

    List<File> getByRelationId(String relationId);

    List<File> getFileList(String imgUUID);

    List<File> getFileListByUUID(List<String> list);

    void deleteByRelationId(String relationId);
}
