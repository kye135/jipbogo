package com.jipbogo.dto;

public class NoticeDTO {
  private int notice_no, notice_cnt, totalCount;

  public int getTotalCount() {
    return totalCount;
  }

  public void setTotalCount(int totalCount) {
    this.totalCount = totalCount;
  }

  private String notice_date, notice_title, notice_content, notice_id, notice_pw;

  public String getNotice_id() {
    return notice_id;
  }

  public void setNotice_id(String notice_id) {
    this.notice_id = notice_id;
  }

  public String getNotice_pw() {
    return notice_pw;
  }

  public void setNotice_pw(String notice_pw) {
    this.notice_pw = notice_pw;
  }

  public int getNotice_no() {
    return notice_no;
  }

  public void setNotice_no(int notice_no) {
    this.notice_no = notice_no;
  }

  public int getNotice_cnt() {
    return notice_cnt;
  }

  public void setNotice_cnt(int notice_cnt) {
    this.notice_cnt = notice_cnt;
  }

  public String getNotice_date() {
    return notice_date;
  }

  public void setNotice_date(String notice_date) {
    this.notice_date = notice_date;
  }

  public String getNotice_title() {
    return notice_title;
  }

  public void setNotice_title(String notice_title) {
    this.notice_title = notice_title;
  }

  public String getNotice_content() {
    return notice_content;
  }

  public void setNotice_content(String notice_content) {
    this.notice_content = notice_content;
  }

}
