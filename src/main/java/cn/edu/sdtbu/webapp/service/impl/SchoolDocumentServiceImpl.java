package cn.edu.sdtbu.webapp.service.impl;

import cn.edu.sdtbu.webapp.entity.SchoolDocument;
import cn.edu.sdtbu.webapp.mapper.SchoolDocumentMapper;
import cn.edu.sdtbu.webapp.service.SchoolDocumentService;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

/**
 * 高中-上级文件/政策表(SchoolDocument)表服务实现类
 *
 * @author yelihu
 * @since 2019-12-31 16:09:13
 */
@Service("schoolDocumentService")
public class SchoolDocumentServiceImpl implements SchoolDocumentService {
    @Autowired
    SchoolDocumentMapper schoolDocumentMapper;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public SchoolDocument querySchoolDocumentById(Integer id) {
        return this.schoolDocumentMapper.selectSchoolDocumentById(id);
    }
    /**
     * 查询多条数据
     * @return 对象列表
     */
    @Override
    public List<SchoolDocument> queryAllSchoolDocument(){
        return this.schoolDocumentMapper.selectAllSchoolDocument();
    }

    /**
     * 根据SchoolDocument内包含的属性查询
     * @return 对象列表
     */
    @Override
    public List<SchoolDocument> querySchoolDocumentByCondition(SchoolDocument schoolDocument){
        return this.schoolDocumentMapper.selectSchoolDocumentByCondition(schoolDocument);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<SchoolDocument> queryAllSchoolDocumentByLimit(int offset, int limit) {
        return this.schoolDocumentMapper.selectAllSchoolDocumentByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param schoolDocument 实例对象
     * @return 实例对象
     */
    @Override
    public SchoolDocument add(SchoolDocument schoolDocument) {
        this.schoolDocumentMapper.insert(schoolDocument);
        return schoolDocument;
    }

    @Override
    public int addList(List<SchoolDocument> schoolDocumentList) {
        return schoolDocumentMapper.insertList(schoolDocumentList);
    }

    /**
     * 修改数据
     *
     * @param schoolDocument 实例对象
     * @return 实例对象
     */
    @Override
    public SchoolDocument edit(SchoolDocument schoolDocument) {
        this.schoolDocumentMapper.update(schoolDocument);
        return this.querySchoolDocumentById(schoolDocument.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean removeSchoolDocumentById(Integer id) {
        return this.schoolDocumentMapper.deleteSchoolDocumentById(id) > 0;
    }
}