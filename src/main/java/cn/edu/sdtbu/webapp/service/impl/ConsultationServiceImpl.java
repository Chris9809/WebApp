package cn.edu.sdtbu.webapp.service.impl;

import cn.edu.sdtbu.webapp.entity.Collage;
import cn.edu.sdtbu.webapp.entity.HighSchool;
import cn.edu.sdtbu.webapp.mapper.ConsultationMapper;
import cn.edu.sdtbu.webapp.service.ConsultationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("consultationService")
public class ConsultationServiceImpl implements ConsultationService {

    @Autowired
    ConsultationMapper consultationMapper;
    /**
     *用于高中考资讯主界面展示
     * @return 三个high_school表最后三个查询的学校名
     */
    @Override
    public List<HighSchool> queryHighScLastThreeScNames() {
        return consultationMapper.queryHighScLastThreeScNames();
    }

    @Override
    public List<Collage> queryCollageLastThreeScNames() {
        return consultationMapper.queryCollageLastThreeScNames();
    }

    @Override
    public HighSchool queryHighScById(int highScId) {
        return consultationMapper.selectHighScById(highScId);
    }

    @Override
    public Collage queryCollageLById(int collageId) {
        return consultationMapper.queryCollageLById(collageId);
    }

    @Override
    public List<Collage> queryAllCollage(Collage collageList) {
        return consultationMapper.selectAllCollage(collageList);
    }
}
