package com.jipbogo.dto;

public class UserQnaCommentDTO {
  private int comment_no, user_qna_no;

  public int getComment_no() {
    return comment_no;
  }

  public void setComment_no(int comment_no) {
    this.comment_no = comment_no;
  }

  public int getUser_qna_no() {
    return user_qna_no;
  }

  public void setUser_qna_no(int user_qna_no) {
    this.user_qna_no = user_qna_no;
  }

  public String getUser_id() {
    return user_id;
  }

  public void setUser_id(String user_id) {
    this.user_id = user_id;
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

  private String user_id, comment_content, comment_date;

}
