
<div class="container">

	<h2>
		<span><spring:message
				code="label.tr.managereservation.manageReservationUpdatedScreenTitleMessage" /></span>
	</h2>

	<!-- end title -->

	<!-- begin main -->
	<div class="success">
		<spring:message
			code="label.tr.managereservation.updatedScreenFlowMessage" />
	</div>
	<!-- begin message -->
	<p>
		<spring:message code="label.tr.managereservation.updatedFinishMessage" />
	</p>
	<p>
		<spring:message
			code="label.tr.managereservation.paymentReminderMessage" />
	</p>
	<p>
		<spring:message code="label.tr.common.pdfdownloadMessage" />
	</p>
	<form:form method="GET"
		action="${f:h(pageContext.request.contextPath)}/managereservation/downloadPDF">
		<input type="hidden" value="${f:h(output.reserve.reserveNo)}"
			name="reserveNo" />
		<spring:message code="label.tr.common.downloadpdfBtnMessage"
			var="downloadPDFButton" />
		<input type="submit" value="${f:h(downloadPDFButton)}" />
	</form:form>

	<!-- end message -->
	<spring:message code="label.tr.common.currencyPattern"
		var="currencyPattern" />
	<spring:message code="label.tr.common.personcountPattern"
		var="personPattern" />
	<spring:message code="label.tr.common.datePattern" var="datePattern" />
	<table>
		<caption>
			<spring:message code="label.tr.common.paymentInfo" />
		</caption>
		<tr>
			<td><spring:message code="label.tr.common.paymentMethod" /></td>
			<td colspan="3"><spring:message
					code="label.tr.common.bankTransfer" /></td>
		</tr>
		<tr>
			<td><spring:message code="label.tr.common.paymentAccount" /></td>
			<td colspan="3"><spring:message
					code="label.tr.common.companyName" /> <br /> <spring:message
					code="label.tr.common.savingsAccount" /></td>
		</tr>
		<tr>
			<td><spring:message code="label.tr.common.paymentTimeLimit" /></td>
			<td colspan="3"><fmt:formatDate
					value="${output.paymentTimeLimit}" pattern="${datePattern}" /></td>
		</tr>
		<tr>
			<td><spring:message code="label.tr.common.paymentInquiry" /></td>
			<td colspan="3"><spring:message
					code="label.tr.common.companyName" /> <spring:message
					code="label.tr.common.companyTel" /> <spring:message
					code="label.tr.common.companyEmail" /></td>
		</tr>
	</table>
	<table>
		<caption>
			<spring:message code="label.tr.searchtour.tourDetailCaptionMessage" />
		</caption>
		<tr>
			<th><spring:message code="label.tr.searchtour.reserveNo" /></th>
			<td>${f:h(output.reserve.reserveNo)}</td>
			<th><spring:message code="label.tr.searchtour.reserveDate" /></th>
			<td><fmt:formatDate value="${output.reserve.reservedDay}" pattern="${datePattern}" /></td>
		</tr>
		<tr>
			<th><spring:message code="label.tr.searchtour.tourname" /></th>
			<td colspan="3">${f:h(output.reserve.tourInfo.tourName)}</td>
		</tr>
		<tr>
			<th><spring:message code="label.tr.searchtour.depDay" /></th>
			<td>${f:h(output.reserve.tourInfo.depDay)}</td>
			<th><spring:message code="label.tr.searchtour.tourDays" /></th>
			<td>${f:h(output.reserve.tourInfo.tourDays)}</td>
		</tr>
		<tr>
			<th><spring:message code="label.tr.searchtour.depName" /></th>
			<td>${f:h(output.reserve.tourInfo.departure.depName)}</td>
			<th><spring:message code="label.tr.searchtour.arrName" /></th>
			<td>${f:h(output.reserve.tourInfo.arrival.arrName)}</td>
		</tr>
	</table>
	<!-- tour-info end -->
	<hr />
	<table>
		<caption>
			<spring:message code="label.tr.searchtour.statementOfCharges"></spring:message>
		</caption>
		<tr>
			<td><spring:message
					code="label.tr.searchtour.classificationOnAge"></spring:message></td>
			<td><spring:message code="label.tr.searchtour.unitPrice"></spring:message></td>
			<td><spring:message code="label.tr.searchtour.noOfPeople"></spring:message></td>
			<td><spring:message code="label.tr.searchtour.charge"></spring:message></td>
		</tr>
		<tr>
			<td><spring:message code="label.tr.searchtour.adult" /></td>
			<td><fmt:formatNumber pattern="${currencyPattern}"
					value="${f:h(output.priceCalculateOutput.adultUnitPrice)}" /></td>
			<td><fmt:formatNumber pattern="${personPattern}"
					value="${f:h(output.priceCalculateOutput.adultCount)}" /></td>
			<td><fmt:formatNumber pattern="${currencyPattern}"
					value="${f:h(output.priceCalculateOutput.adultPrice)}" /></td>
		</tr>
		<tr>
			<td><spring:message code="label.tr.searchtour.child" /></td>
			<td><fmt:formatNumber pattern="${currencyPattern}"
					value="${f:h(output.priceCalculateOutput.childUnitPrice)}" /></td>
			<td><fmt:formatNumber pattern="${personPattern}"
					value="${f:h(output.priceCalculateOutput.childCount)}" /></td>
			<td><fmt:formatNumber pattern="${currencyPattern}"
					value="${f:h(output.priceCalculateOutput.childPrice)}" /></td>
		</tr>
		<tr>
			<td colspan="3"><spring:message
					code="label.tr.searchtour.sumPrice"></spring:message></td>
			<td><fmt:formatNumber pattern="${currencyPattern}"
					value="${f:h(output.priceCalculateOutput.sumPrice)}" /></td>
		</tr>
	</table>
	<hr />
	<!-- note start -->
	<table>
		<caption>
			<spring:message code="label.tr.common.specialNotes" />
		</caption>
		<tr>
			<td><spring:message code="label.tr.common.opinionSuggestion" /></td>
			<td colspan="3">${f:h(output.reserve.remarks)}</td>
		</tr>
	</table>
	<hr />
	<p>
		<spring:message
			code="label.tr.managereservation.updatedCompleteMessage" />
	</p>
	<hr />
	<!-- begin buttons -->
	<div class="span-5 last">
		<table>
			<tr>
				<td><form:form
						action="${pageContext.request.contextPath}/managereservation/list"
						method="GET">
						<spring:message
							code="label.tr.managereservation.returnToListScreenBtnMessage"
							var="returnToListScreenButton" />
						<input type="submit" value="${returnToListScreenButton}">
					</form:form></td>
				<td><form:form action="${pageContext.request.contextPath}/"
						method="GET">
						<spring:message code="label.tr.common.gotoMenuMessage"
							var="gotoMenuButton" />
						<input type="submit" value="${gotoMenuButton}">
					</form:form></td>
			</tr>
		</table>
	</div>
	<!-- end buttons -->
</div>
