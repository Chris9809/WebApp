package cn.edu.sdtbu.webapp.entity;

import lombok.Data;
import lombok.ToString;

/** editor.md 文本编辑器上传图片返回结果类
 * @author apple
 */
@Data
@ToString
public class EditorResultVO {
    /*0/1 表示成功是否 必须为int*/
    int success;

    /*结果提示消息*/
    String message;

    /*图片回显url*/
    String url;
}
