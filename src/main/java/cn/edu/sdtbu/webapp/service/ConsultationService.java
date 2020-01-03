package cn.edu.sdtbu.webapp.service;

import cn.edu.sdtbu.webapp.entity.Collage;
import cn.edu.sdtbu.webapp.entity.HighSchool;

import java.util.List;

public interface ConsultationService {
    /**
     *用于高中考资讯主界面展示
     * @return 三个high_school表最后三个查询的学校名
     */
    List<HighSchool> queryHighScLastThreeScNames();

    /**
     *用于高中考资讯主界面展示
     * @return 三个collage表最后三个查询的学校名
     */
    List<Collage> queryCollageLastThreeScNames();

    /**
     * 查询高中学校通过id
     * @param highScId
     * @return 高中学校的实例
     */
    HighSchool queryHighScById(int highScId);

    /**
     * 查询大学通过id
     * @param collageId
     * @return 大学的实例
     */
    Collage queryCollageLById(int collageId);

    /**
     * 查询多条数据
     * @return 对象列表
     */
    List<Collage> queryAllCollage(Collage collageList);
}
