package entity;

import java.sql.Date;

public class MstCif {
    private String cifid;
    private String aoid;
    private String dtjoin;
    private String fullnm;
    private String npwp;
    private String countryid;
    private Integer flgrelated;
    private Integer sex;

    public String getCifid() {
        return cifid;
    }

    public void setCifid(String cifid) {
        this.cifid = cifid;
    }

    public String getAoid() {
        return aoid;
    }

    public void setAoid(String aoid) {
        this.aoid = aoid;
    }

    public String getDtjoin() {
        return dtjoin;
    }

    public void setDtjoin(String dtjoin) {
        this.dtjoin = dtjoin;
    }

    public String getFullnm() {
        return fullnm;
    }

    public void setFullnm(String fullnm) {
        this.fullnm = fullnm;
    }

    public String getNpwp() {
        return npwp;
    }

    public void setNpwp(String npwp) {
        this.npwp = npwp;
    }

    public String getCountryid() {
        return countryid;
    }

    public void setCountryid(String countryid) {
        this.countryid = countryid;
    }

    public Integer getFlgrelated() {
        return flgrelated;
    }

    public void setFlgrelated(Integer flgrelated) {
        this.flgrelated = flgrelated;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }
}
