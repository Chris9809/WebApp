package cn.edu.sdtbu.webapp.util.web;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;

import cn.edu.sdtbu.webapp.util.text.StringUtils;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.google.common.collect.Maps;

/**
 * Entity基类
 *
 * @author yelihu
 */
public class BaseEntity implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 搜索值 */
    private String searchValue;

    /** 创建者 */
    private String createBy;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /** 更新者 */
    private String updateBy;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;

    /** 备注 */
    private String remark;

    /** 请求参数 */
    private Map<String, Object> params;

    public String getSearchValue()
    {
        return searchValue;
    }

    public void setSearchValue(String searchValue)
    {
        this.searchValue = searchValue;
    }

    public String getCreateBy()
    {
        return createBy;
    }

    public void setCreateBy(String createBy)
    {
        this.createBy = createBy;
    }

    public Date getCreateTime()
    {
        return createTime;
    }

    public void setCreateTime(Date createTime)
    {
        this.createTime = createTime;
    }

    public String getUpdateBy()
    {
        return updateBy;
    }

    public void setUpdateBy(String updateBy)
    {
        this.updateBy = updateBy;
    }

    public Date getUpdateTime()
    {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime)
    {
        this.updateTime = updateTime;
    }

    public String getRemark()
    {
        return remark;
    }

    public void setRemark(String remark)
    {
        this.remark = remark;
    }

    public Map<String, Object> getParams()
    {
        if (params == null)
        {
            params = Maps.newHashMap();
        }
        return params;
    }

    public void setParams(Map<String, Object> params)
    {
        this.params = params;
    }

    /**
     * sql操作工具类
     *
     * @author yelihu
     */
    public static class SqlUtil
    {
        /**
         * 仅支持字母、数字、下划线、空格、逗号（支持多个字段排序）
         */
        public static String SQL_PATTERN = "[a-zA-Z0-9_\\ \\,]+";

        /**
         * 检查字符，防止注入绕过
         */
        public static String escapeOrderBySql(String value)
        {
            if (StringUtils.isNotEmpty(value) && !isValidOrderBySql(value))
            {
                return StringUtils.EMPTY;
            }
            return value;
        }

        /**
         * 验证 order by 语法是否符合规范
         */
        public static boolean isValidOrderBySql(String value)
        {
            return value.matches(SQL_PATTERN);
        }
    }
}
