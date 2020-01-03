package cn.edu.sdtbu.webapp.config.exception.file;


import cn.edu.sdtbu.webapp.config.exception.base.BaseException;

/**
 * 文件信息异常类
 *
 * @author yelihu
 */
public class FileException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public FileException(String code, Object[] args)
    {
        super("file", code, args, null);
    }

}
