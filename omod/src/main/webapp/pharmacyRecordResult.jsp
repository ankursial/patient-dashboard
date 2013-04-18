
<%--
 *  Copyright 2013 Society for Health Information Systems Programmes, India (HISP India)
 *
 *  This file is part of Patient-dashboard module.
 *
 *  Patient-dashboard module is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.

 *  Patient-dashboard module is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Patient-dashboard module.  If not, see <http://www.gnu.org/licenses/>.
 *
 * author: ghanshyam
 * date: 11-01-2013
 * issue: #556 Bangladesh
--%>
<%@ include file="/WEB-INF/template/include.jsp"%>
<style>
.rsTable{ margin:5px 5px;text-align:center; border-style:1px  solid black; border-collapse: collapse;}
.rsCell { padding:3px 3px;}
</style>
<span class="boxHeader">Issue drugs detail</span>
<div class="box">
<table width="100%" class="rsTable" cellspacing="3" border="1"  cellpadding="3">
	<tr align="center">
	<th>#</th>
	<th>Category</th>
	<th>Drug</th>
	<th>Formulation</th>
	<th >Issue date</th>
	<th>Quantity</th>
	</tr>
<c:forEach items="${drugDetails}" var="detail" varStatus="varStatus">
	<tr  align="center" class='${varStatus.index % 2 == 0 ? "oddRow" : "evenRow" } '>
		<td><c:out value="${varStatus.count }"/></td>
		<td>${detail.transactionDetail.drug.category.name} </td>	
		<td>${detail.transactionDetail.drug.name} </td>	
		<td>${detail.transactionDetail.formulation.name}-${detail.transactionDetail.formulation.dozage}</td>
		<td><openmrs:formatDate date="${detail.transactionDetail.createdOn}" type="textbox"/></td>
		<td>${detail.quantity }</td>
		</tr>
</c:forEach>
</table>
</div>