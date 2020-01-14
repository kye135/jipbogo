package com.jipbogo.dto;

public class SellerQnaDTO {
  private int seller_qna_no, seller_qna_cnt, totalCount;

  public int getTotalCount() {
    return totalCount;
  }

  public void setTotalCount(int totalCount) {
    this.totalCount = totalCount;
  }

  private String seller_qna_date, seller_qna_id, seller_qna_pw, seller_qna_title,
      seller_qna_content;

  public int getSeller_qna_no() {
    return seller_qna_no;
  }

  public void setSeller_qna_no(int seller_qna_no) {
    this.seller_qna_no = seller_qna_no;
  }

  public int getSeller_qna_cnt() {
    return seller_qna_cnt;
  }

  public void setSeller_qna_cnt(int seller_qna_cnt) {
    this.seller_qna_cnt = seller_qna_cnt;
  }

  public String getSeller_qna_date() {
    return seller_qna_date;
  }

  public void setSeller_qna_date(String seller_qna_date) {
    this.seller_qna_date = seller_qna_date;
  }

  public String getSeller_qna_id() {
    return seller_qna_id;
  }

  public void setSeller_qna_id(String seller_qna_id) {
    this.seller_qna_id = seller_qna_id;
  }

  public String getSeller_qna_pw() {
    return seller_qna_pw;
  }

  public void setSeller_qna_pw(String seller_qna_pw) {
    this.seller_qna_pw = seller_qna_pw;
  }

  public String getSeller_qna_title() {
    return seller_qna_title;
  }

  public void setSeller_qna_title(String seller_qna_title) {
    this.seller_qna_title = seller_qna_title;
  }

  public String getSeller_qna_content() {
    return seller_qna_content;
  }

  public void setSeller_qna_content(String seller_qna_content) {
    this.seller_qna_content = seller_qna_content;
  }
}
