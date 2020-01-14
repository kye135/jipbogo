package com.jipbogo.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.jipbogo.dto.SellerQnaDTO;
import com.jipbogo.dto.SellerQnaCommentDTO;

@Repository("sellerQnaDAO")
public class SellerQnaDAO extends AbstractDAO {


  @SuppressWarnings("unchecked")
  public List<SellerQnaDTO> sellerQna(int page) {
    return selectList("sellerQna.sellerQna", page);
  }

  public void sellerQnaWriteAction(SellerQnaDTO dto) {
    insert("sellerQna.sellerQnaWriteAction", dto);
  }


  public SellerQnaDTO sellerQnaDetail(int reBno) {
    return (SellerQnaDTO) selectOne("sellerQna.sellerQnaDetail", reBno);
  }

  public void sellerQnaDetailCountUp(int reBno) {
    update("sellerQna.sellerQnaDetailCountUp", reBno);
  }

  public void sellerQnaDetailDelete(SellerQnaDTO dto) {
    delete("sellerQna.sellerQnaDetailDelete", dto);
  }

  public void sellerQnaDetailModifyAction(SellerQnaDTO dto) {
    update("sellerQna.sellerQnaDetailModifyAction", dto);
    
  }
  

@SuppressWarnings("unchecked")
public List<SellerQnaCommentDTO> sellerQnaComment(int reBno) {
    return selectList("sellerQna.sellerQnaComment", reBno);
}

public void sellerQnaCommentAction(SellerQnaCommentDTO dto) {
    insert("sellerQna.sellerQnaCommentAction", dto);
    
}

public void sellerQnaCommentDelete(int reBno) {
    delete("sellerQna.sellerQnaCommentDelete", reBno);
    
}
}
