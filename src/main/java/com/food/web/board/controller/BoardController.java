package com.food.web.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.food.web.board.dto.BoardInfo;
import com.food.web.board.service.BoardService;
import com.food.web.user.dto.UserInfo;

@Controller
public class BoardController {

   @Autowired
   BoardService bs;
   //게시판 목록//
   @RequestMapping(value = "/notice/board_list", method = RequestMethod.GET)
   public String board_list(Model model) {
      return "notice/board_list";
   }

   @RequestMapping(value = "/notice/board_list", method = RequestMethod.POST)
   public @ResponseBody ModelMap getBoardResult(@RequestBody BoardInfo board) {
      ModelMap model = new ModelMap();
      try {
         model.put("getBoardInfoList", bs.getBoardInfoList(board));
      } catch (Exception e) {
         e.printStackTrace();
      }
      return model;
   }
   ///글쓰기///
   @RequestMapping(value = "/notice/board_insert", method = RequestMethod.GET)
   public String write(Model model) {
      return "notice/board_insert";
   }

   @RequestMapping(value = "/notice/board_insert", method = RequestMethod.POST)
   public @ResponseBody List<BoardInfo> insertBoardInfoList(@RequestBody BoardInfo board) {
      bs.insertBoardInfo(board);
      return bs.getBoardInfoList(board);
   }

   ///게시판 상세보기///
   @RequestMapping(value = "/notice/board_view", method = RequestMethod.GET)
   public String view(@RequestParam(value = "bNum") int bNum, ModelMap model) {
      model.put("bi", bs.getBoardInfo(bNum));
      return "notice/board_view";
   }

//   @RequestMapping(value = "/notice/board_view", method = RequestMethod.POST)
//   public @ResponseBody ModelMap getBoardResult(@RequestBody int bNum, BoardInfo board) {
//      ModelMap model = new ModelMap();
//      try {
//         model.put("bi", bs.getBoardInfo(bNum));
//
//      } catch (Exception e) {
//         e.printStackTrace();
//      }
//      return model;
//   }

   ///글 수정하기///
   @RequestMapping(value = "/notice/board_update", method = RequestMethod.GET)
   public String update(@RequestParam(value = "bNum") int bNum, ModelMap model) {
      model.put("bi", bs.getBoardInfo(bNum));
      return "notice/board_update";
   }

   @RequestMapping(value="/notice/board_update", method=RequestMethod.POST)
   public @ResponseBody ModelMap update(HttpSession hs, @RequestBody BoardInfo board, ModelMap hm){
      int uBoard = bs.updateBoardInfo(board);
      if(uBoard==1){
         hm.put("msg", "등록되었습니다.");
         hm.put("url", "notice/board_list");
      }else{
         hm.put("msg", "안됨");
         hm.put("url", "notice/board_list?bNum={bNum}");
      }
      return hm;
   }

//   @RequestMapping(value = "/notice/board_delete", method = RequestMethod.POST)
//   public @ResponseBody BoardInfo delete(@RequestBody int bNum, BoardInfo board) {
//      bs.deleteBoardInfo(board);
//      return bs.getBoardInfo(bNum);
//   }
   ///글 삭제하기////
   @RequestMapping(value="/notice/board_delete", method=RequestMethod.POST)
   public @ResponseBody ModelMap delete(HttpSession hs, @RequestBody BoardInfo board, ModelMap hm){
      int dBoard = bs.deleteBoardInfo(board);
      if(dBoard==1){
         hm.put("msg", "삭제되었습니다.");
         hm.put("url", "notice/board_list");
      }else{
         hm.put("msg", "안됨");
         hm.put("url", "test/test2");
      }   
      return hm;
   }

}