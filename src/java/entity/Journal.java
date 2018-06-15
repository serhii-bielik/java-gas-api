/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author WD
 */
@Entity
@Table(name = "journal")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Journal.findAll", query = "SELECT j FROM Journal j")
    , @NamedQuery(name = "Journal.findById", query = "SELECT j FROM Journal j WHERE j.id = :id")
    , @NamedQuery(name = "Journal.findByStartTime", query = "SELECT j FROM Journal j WHERE j.startTime = :startTime")
    , @NamedQuery(name = "Journal.findByEndTime", query = "SELECT j FROM Journal j WHERE j.endTime = :endTime")
    , @NamedQuery(name = "Journal.findByUnitPrice", query = "SELECT j FROM Journal j WHERE j.unitPrice = :unitPrice")
    , @NamedQuery(name = "Journal.findByUnitPerL", query = "SELECT j FROM Journal j WHERE j.unitPerL = :unitPerL")
    , @NamedQuery(name = "Journal.findByQty", query = "SELECT j FROM Journal j WHERE j.qty = :qty")
    , @NamedQuery(name = "Journal.findByItemType", query = "SELECT j FROM Journal j WHERE j.itemType = :itemType")
    , @NamedQuery(name = "Journal.findByPumNum", query = "SELECT j FROM Journal j WHERE j.pumNum = :pumNum")
    , @NamedQuery(name = "Journal.findByHosNum", query = "SELECT j FROM Journal j WHERE j.hosNum = :hosNum")
    , @NamedQuery(name = "Journal.findByItem", query = "SELECT j FROM Journal j WHERE j.item = :item")
    , @NamedQuery(name = "Journal.findByTaxRate", query = "SELECT j FROM Journal j WHERE j.taxRate = :taxRate")
    , @NamedQuery(name = "Journal.findByTaxAmount", query = "SELECT j FROM Journal j WHERE j.taxAmount = :taxAmount")
    , @NamedQuery(name = "Journal.findByAmount", query = "SELECT j FROM Journal j WHERE j.amount = :amount")})
public class Journal implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "start_time")
    @Temporal(TemporalType.TIME)
    private Date startTime;
    @Basic(optional = false)
    @NotNull
    @Column(name = "end_time")
    @Temporal(TemporalType.TIME)
    private Date endTime;
    @Basic(optional = false)
    @NotNull
    @Column(name = "unit_price")
    private double unitPrice;
    @Basic(optional = false)
    @NotNull
    @Column(name = "unit_per_l")
    private double unitPerL;
    @Basic(optional = false)
    @NotNull
    @Column(name = "qty")
    private double qty;
    @Basic(optional = false)
    @NotNull
    @Column(name = "item_type")
    private int itemType;
    @Basic(optional = false)
    @NotNull
    @Column(name = "pum_num")
    private int pumNum;
    @Basic(optional = false)
    @NotNull
    @Column(name = "hos_num")
    private int hosNum;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 256)
    @Column(name = "item")
    private String item;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tax_rate")
    private double taxRate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tax_amount")
    private double taxAmount;
    @Basic(optional = false)
    @NotNull
    @Column(name = "amount")
    private double amount;

    public Journal() {
    }

    public Journal(Integer id) {
        this.id = id;
    }

    public Journal(Integer id, Date startTime, Date endTime, double unitPrice, double unitPerL, double qty, int itemType, int pumNum, int hosNum, String item, double taxRate, double taxAmount, double amount) {
        this.id = id;
        this.startTime = startTime;
        this.endTime = endTime;
        this.unitPrice = unitPrice;
        this.unitPerL = unitPerL;
        this.qty = qty;
        this.itemType = itemType;
        this.pumNum = pumNum;
        this.hosNum = hosNum;
        this.item = item;
        this.taxRate = taxRate;
        this.taxAmount = taxAmount;
        this.amount = amount;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public double getUnitPerL() {
        return unitPerL;
    }

    public void setUnitPerL(double unitPerL) {
        this.unitPerL = unitPerL;
    }

    public double getQty() {
        return qty;
    }

    public void setQty(double qty) {
        this.qty = qty;
    }

    public int getItemType() {
        return itemType;
    }

    public void setItemType(int itemType) {
        this.itemType = itemType;
    }

    public int getPumNum() {
        return pumNum;
    }

    public void setPumNum(int pumNum) {
        this.pumNum = pumNum;
    }

    public int getHosNum() {
        return hosNum;
    }

    public void setHosNum(int hosNum) {
        this.hosNum = hosNum;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public double getTaxRate() {
        return taxRate;
    }

    public void setTaxRate(double taxRate) {
        this.taxRate = taxRate;
    }

    public double getTaxAmount() {
        return taxAmount;
    }

    public void setTaxAmount(double taxAmount) {
        this.taxAmount = taxAmount;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Journal)) {
            return false;
        }
        Journal other = (Journal) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Journal[ id=" + id + " ]";
    }
    
}
