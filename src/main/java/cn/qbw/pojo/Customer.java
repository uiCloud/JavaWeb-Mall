package cn.qbw.pojo;

import java.io.Serializable;

/**
 * 客户信息的JavaBean
 *
 * @author qbw
 * @date 18-4-7下午7:27
 */
public class Customer implements Serializable {

    // 客户id
    private Long id;
    // 客户姓名
    private String name;
    // 客户电话
    private String telephone;
    // 客户收货住址
    private String address;
    // 客户备注
    private String remark;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
