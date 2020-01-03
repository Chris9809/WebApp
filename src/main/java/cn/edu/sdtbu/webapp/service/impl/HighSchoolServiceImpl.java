package cn.edu.sdtbu.webapp.service.impl;

import cn.edu.sdtbu.webapp.entity.HighSchool;
import cn.edu.sdtbu.webapp.entity.SchoolDocument;
import cn.edu.sdtbu.webapp.entity.SchoolScore;
import cn.edu.sdtbu.webapp.mapper.HighSchoolMapper;
import cn.edu.sdtbu.webapp.service.HighSchoolService;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

/**
 * 高中信息表(HighSchool)表服务实现类
 *
 * @author yelihu
 * @since 2019-12-31 15:45:37
 */
@Service("highSchoolService")
public class HighSchoolServiceImpl implements HighSchoolService {
    @Autowired
    HighSchoolMapper highSchoolMapper;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public HighSchool queryHighSchoolById(Integer id) {
        return this.highSchoolMapper.selectHighSchoolById(id);
    }
    /**
     * 查询多条数据
     * @return 对象列表
     */
    @Override
    public List<HighSchool> queryAllHighSchool(){
        return this.highSchoolMapper.selectAllHighSchool();
    }

    /**
     * 根据HighSchool内包含的属性查询
     * @return 对象列表
     */
    @Override
    public List<HighSchool> queryHighSchoolByCondition(HighSchool highSchool){
        return this.highSchoolMapper.selectHighSchoolByCondition(highSchool);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<HighSchool> queryAllHighSchoolByLimit(int offset, int limit) {
        return this.highSchoolMapper.selectAllHighSchoolByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param highSchool 实例对象
     * @return 实例对象
     */
    @Override
    public HighSchool add(HighSchool highSchool) {
        this.highSchoolMapper.insert(highSchool);
        return highSchool;
    }

    /**
     * 修改数据
     *
     * @param highSchool 实例对象
     * @return 实例对象
     */
    @Override
    public HighSchool edit(HighSchool highSchool) {
        this.highSchoolMapper.update(highSchool);
        return this.queryHighSchoolById(highSchool.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean removeHighSchoolById(Integer id) {
        return this.highSchoolMapper.deleteHighSchoolById(id) > 0;
    }


    @Override
    public List<HighSchool> queryAllCollage(HighSchool highShcoolList) {
        return highSchoolMapper.selectAllCollage(highShcoolList);
    }

    @Override
    public HighSchool queryHighSchoolById(int highScId) {
        return highSchoolMapper.selectHighSchoolById(highScId);
    }

    @Override
    public List<SchoolScore> querySchoolScoresById(int highScId) {
        return highSchoolMapper.selectSchoolScoresById(highScId);
    }

    @Override
    public List<SchoolDocument> querySchoolDocumentById(int highScId) {
        return highSchoolMapper.selectSchoolDocumentById(highScId);
    }
}