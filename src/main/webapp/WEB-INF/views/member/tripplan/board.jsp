<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/bnna/resources/css/tripplan/tpboard.css">

        <section class="mainsection">
            
            <div id="tpboard">
                <div class="title">다른 여행자들의 일정보기</div>
                <div class="intro">다른 여행자들과 여행 일정을 공유해보세요.</div>

                <table class="table tbl-filter">
                    <tr class="filter">
                        <th>필터</th>
                        <td id="selectedTag">
                        </td>
                    </tr>
                    <tr class="city">
                        <th>여행지</th>
                        <td class="citytd">
                            <span class="tag citytag">서울</span>
                            <span class="tag citytag">인천</span>
                            <span class="tag citytag">대전</span>
                            <span class="tag citytag">대구</span>
                            <span class="tag citytag">광주</span>
                            <span class="tag citytag">부산</span>
                            <span class="tag citytag">울산</span>
                            <span class="tag citytag">경기</span>
                            <span class="tag citytag">강원</span>
                            <span class="tag citytag">충청</span>
                            <span class="tag citytag">전라</span>
                            <span class="tag citytag">경상</span>
                            <span class="tag citytag">제주</span>
                        </td>
                    </tr>
                    <tr class="season">
                        <th>여행시기</th>
                        <td >
                            <span class="tag seasontag">봄</span>
                            <span class="tag seasontag">여름</span>
                            <span class="tag seasontag">가을</span>
                            <span class="tag seasontag">겨울</span>
                        </td>
                    </tr>
                    <tr class="period">
                        <th>여행기간</th>
                        <td>
                            <span class="tag periodtag">당일치기</span>
                            <span class="tag periodtag">2-4일</span>
                            <span class="tag periodtag">5-7일</span>
                            <span class="tag periodtag">8일 이상</span>
                        </td>
                    </tr>
                    <tr style="height: 0px;"><td colspan="2"></td></tr>
                </table>

                <hr>

                <div class="btns">
                    <button class="btn-general popular menu-active">인기</button>
                    <button class="btn-general new">신규</button>
                </div>

                <div class="searcharea">
                    <input type="text" id="search" name="search" class="form-control">
                    <button class="btn btn-default" type="submit"><span>검색</span></button>
                </div>

				

                <div id="articles">

                    <div class="article">
                        <div class="crop">
                            <img src="/bnna/resources/image/tripplan/board/1.jpg" alt="">
                        </div>
                        <div class="onimg">
                            <span class="startdate">2021-03-18</span>
                            <span class="days">3DAYS</span>
                        </div>
                        <div class="txtbox">
                            <div class="title">나 홀로 떠나는 여행</div>
                            <div class="city">제주</div>
                            <div class="id">test123</div>
                            <div class="cnts">
                                <span class="readcnt">👀 39</span>
                                <span class="likecnt">💗 5</span>
                            </div>
                        </div>
                    </div>

                    <div class="article">
                        <div class="crop">
                            <img src="/bnna/resources/image/tripplan/board/2.jpg" alt="">
                        </div>
                        <div class="onimg">
                            <span class="startdate">2021-03-18</span>
                            <span class="days">3DAYS</span>
                        </div>
                        <div class="txtbox">
                            <div class="title">나 홀로 떠나는 여행</div>
                            <div class="city">제주</div>
                            <div class="id">test123</div>
                            <div class="cnts">
                                <span class="readcnt">👀 39</span>
                                <span class="likecnt">💗 5</span>
                            </div>
                        </div>
                    </div>

                    <div class="article">
                        <div class="crop">
                            <img src="/bnna/resources/image/tripplan/board/3.jpg" alt="">
                        </div>
                        <div class="onimg">
                            <span class="startdate">2021-03-18</span>
                            <span class="days">3DAYS</span>
                        </div>
                        <div class="txtbox">
                            <div class="title">나 홀로 떠나는 여행</div>
                            <div class="city">제주</div>
                            <div class="id">test123</div>
                            <div class="cnts">
                                <span class="readcnt">👀 39</span>
                                <span class="likecnt">💗 5</span>
                            </div>
                        </div>
                    </div>

                    <div class="article">
                        <div class="crop">
                            <img src="/bnna/resources/image/tripplan/board/4.jpg" alt="">
                        </div>
                        <div class="onimg">
                            <span class="startdate">2021-03-18</span>
                            <span class="days">3DAYS</span>
                        </div>
                        <div class="txtbox">
                            <div class="title">나 홀로 떠나는 여행</div>
                            <div class="city">제주</div>
                            <div class="id">test123</div>
                            <div class="cnts">
                                <span class="readcnt">👀 39</span>
                                <span class="likecnt">💗 5</span>
                            </div>
                        </div>
                    </div>


                </div>
                



                <div class=pagearea>
                    <div class="pagination">
                        <a href="#">&laquo;</a>
                        <a href="#">1</a>
                        <a href="#" class="active">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#">6</a>
                        <a href="#">&raquo;</a>
                    </div>
                </div>

            </div>

		<script src="/bnna/resources/js/tripplan/tpboard.js"></script>

        </section>
        
		
		