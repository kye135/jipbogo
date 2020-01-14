package com.jipbogo.service;

import java.util.List;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import com.jipbogo.dao.SellerQnaDAO;
import com.jipbogo.dto.SellerQnaCommentDTO;
import com.jipbogo.dto.SellerQnaDTO;

public interface SellerQnaService {

  List<SellerQnaDTO> sellerQna(int page) throws Exception;

  void sellerQnaWriteAction(SellerQnaDTO dto) throws Exception;

  SellerQnaDTO sellerQnaDetail(int reBno) throws Exception;

  void sellerQnaDetailCountUp(int reBno) throws Exception;


  void sellerQnaDetailDelete(SellerQnaDTO dto) throws Exception;

  void sellerQnaDetailModifyAction(SellerQnaDTO dto) throws Exception;

  List<SellerQnaCommentDTO> sellerQnaComment(int reBno) throws Exception;

  void sellerQnaCommentAction(SellerQnaCommentDTO dto) throws Exception;

  void sellerQnaCommentDelete(int reBno) throws Exception;

}


@Service("sellerQnaService")
class SellerQnaServiceImpl implements SellerQnaService {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "sellerQnaDAO")
  private SellerQnaDAO sellerQnaDAO;

  @Override
  public List<SellerQnaDTO> sellerQna(int page) throws Exception {
    return sellerQnaDAO.sellerQna(page);
  }

  @Override
  public void sellerQnaWriteAction(SellerQnaDTO dto) throws Exception {
    sellerQnaDAO.sellerQnaWriteAction(dto);
  }


  @Override
  public SellerQnaDTO sellerQnaDetail(int reBno) throws Exception {
    return sellerQnaDAO.sellerQnaDetail(reBno);
  }

  @Override
  public void sellerQnaDetailCountUp(int reBno) throws Exception {
    sellerQnaDAO.sellerQnaDetailCountUp(reBno);

  }


  @Override
  public void sellerQnaDetailDelete(SellerQnaDTO dto) throws Exception {
    sellerQnaDAO.sellerQnaDetailDelete(dto);

  }

  @Override
  public void sellerQnaDetailModifyAction(SellerQnaDTO dto) throws Exception {
    sellerQnaDAO.sellerQnaDetailModifyAction(dto);

  }
  
  @Override
  public List<SellerQnaCommentDTO> sellerQnaComment(int reBno) throws Exception {
    return sellerQnaDAO.sellerQnaComment(reBno);
  }

  @Override
  public void sellerQnaCommentAction(SellerQnaCommentDTO dto) throws Exception {
    sellerQnaDAO.sellerQnaCommentAction(dto);

  }

  @Override
  public void sellerQnaCommentDelete(int reBno) throws Exception {
    sellerQnaDAO.sellerQnaCommentDelete(reBno);

  }
  
}

