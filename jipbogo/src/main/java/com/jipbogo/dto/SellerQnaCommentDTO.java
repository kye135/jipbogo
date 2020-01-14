package com.jipbogo.dto;

public class SellerQnaCommentDTO {
  private int comment_no, seller_qna_no;

  public int getComment_no() {
    return comment_no;
  }

  public void setComment_no(int comment_no) {
    this.comment_no = comment_no;
  }

  public int getSeller_qna_no() {
    return seller_qna_no;
  }

  public void setSeller_qna_no(int seller_qna_no) {
    this.seller_qna_no = seller_qna_no;
  }

  public String getSeller_id() {
    return seller_id;
  }

  public void setSeller_id(String seller_id) {
    this.seller_id = seller_id;
  }

  public String getComment_content() {
    return comment_content;
  }

  public void setComment_content(String comment_content) {
    this.comment_content = comment_content;
  }

  public String getComment_date() {
    return comment_date;
  }

  public void setComment_date(String comment_date) {
    this.comment_date = comment_date;
  }

  private String seller_id, comment_content, comment_date;

}
