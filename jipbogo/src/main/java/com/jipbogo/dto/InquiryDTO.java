package com.jipbogo.dto;

public class InquiryDTO {
  private String inquiry_no, inquiry_title, inquiry_content, inquiry_email, inquiry_name,
      inquiry_phone, inquiry_file, inquiry_date;

  public String getInquiry_date() {
    return inquiry_date;
  }

  public void setInquiry_date(String inquiry_date) {
    this.inquiry_date = inquiry_date;
  }

  private int totalCount;

  public int getTotalCount() {
    return totalCount;
  }

  public void setTotalCount(int totalCount) {
    this.totalCount = totalCount;
  }

  public String getInquiry_file() {
    return inquiry_file;
  }

  public void setInquiry_file(String inquiry_file) {
    this.inquiry_file = inquiry_file;
  }

  public String getInquiry_no() {
    return inquiry_no;
  }

  public void setInquiry_no(String inquiry_no) {
    this.inquiry_no = inquiry_no;
  }

  public String getInquiry_title() {
    return inquiry_title;
  }

  public void setInquiry_title(String inquiry_title) {
    this.inquiry_title = inquiry_title;
  }

  public String getInquiry_content() {
    return inquiry_content;
  }

  public void setInquiry_content(String inquiry_content) {
    this.inquiry_content = inquiry_content;
  }

  public String getInquiry_email() {
    return inquiry_email;
  }

  public void setInquiry_email(String inquiry_email) {
    this.inquiry_email = inquiry_email;
  }

  public String getInquiry_name() {
    return inquiry_name;
  }

  public void setInquiry_name(String inquiry_name) {
    this.inquiry_name = inquiry_name;
  }

  public String getInquiry_phone() {
    return inquiry_phone;
  }

  public void setInquiry_phone(String inquiry_phone) {
    this.inquiry_phone = inquiry_phone;
  }

}
