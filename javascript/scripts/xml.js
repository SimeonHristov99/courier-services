function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null, null);


    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creating nodes.
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    let orders = doc.createElement("orders");

    let order = doc.createElement("order");

    let id = doc.createElement("id");
    let idData = doc.createTextNode("data");

    let from = doc.createElement("from");
    let company = doc.createElement("company");
    let companyName = doc.createElement("name");
    let companyNameValue = doc.createTextNode("companyNameValue");

    let companyAddress = doc.createElement("address");
    let companyAddressDistrict = doc.createElement("district");
    let companyAddressDistrictName = doc.createTextNode("companyAddressDistrictName");
    let companyAddressCity = doc.createElement("city");
    let companyAddressCityZip = doc.createElement("zip_code");
    let companyAddressCityZipValue = doc.createTextNode("companyAddressCityZipValue");
    let companyAddressCityName = doc.createElement("name");
    let companyAddressCityNameValue = doc.createTextNode("companyAddressCityNameValue");
    let companyAddressCityNeigh = doc.createElement("neighbourhood");
    let companyAddressCityNeighValue = doc.createTextNode("companyAddressCityNeighValue");
    let companyAddressCityStreet = doc.createElement("street");
    let companyAddressCityStreetName = doc.createElement("name");
    let companyAddressCityStreetNameValue = doc.createTextNode("companyAddressCityStreetNameValue");
    let companyAddressCityStreetNumber = doc.createElement("number");
    let companyAddressCityStreetNumberValue = doc.createTextNode("companyAddressCityStreetNumberValue");
    let companyAddressParking = doc.createElement("parking");

    let companyEmp = doc.createElement("employee");
    let companyEmpName = doc.createElement("emp_name");
    let companyEmpNameFirst = doc.createElement("first");
    let companyEmpNameFirstValue = doc.createTextNode("companyEmpNameFirstValue");
    let companyEmpNameLast = doc.createElement("last");
    let companyEmpNameLastValue = doc.createTextNode("companyEmpNameLastValue");
    let companyEmpPhones = doc.createElement("phones");
    let companyEmpPhone = doc.createElement("phone");
    let companyEmpPhoneCode = doc.createElement("code");
    let companyEmpPhoneCodeValue = doc.createTextNode("companyEmpPhoneCodeValue");
    let companyEmpPhoneNumber = doc.createElement("number");
    let companyEmpPhoneNumberValue = doc.createTextNode("companyEmpPhoneNumberValue");
    let companyEmpEmails = doc.createElement("emails");
    let companyEmpEmail = doc.createElement("email");
    let companyEmpEmailValue = doc.createTextNode("companyEmpEmailValue");

    let to = doc.createElement("to");
    let receiverCompany = doc.createElement("company");
    let receiverCompanyName = doc.createElement("name");
    let receiverCompanyNameValue = doc.createTextNode("companyNameValue");

    let receiverCompanyAddress = doc.createElement("address");
    let receiverCompanyAddressDistrict = doc.createElement("district");
    let receiverCompanyAddressDistrictName = doc.createTextNode("companyAddressDistrictName");
    let receiverCompanyAddressCity = doc.createElement("city");
    let receiverCompanyAddressCityZip = doc.createElement("zip_code");
    let receiverCompanyAddressCityZipValue = doc.createTextNode("companyAddressCityZipValue");
    let receiverCompanyAddressCityName = doc.createElement("name");
    let receiverCompanyAddressCityNameValue = doc.createTextNode("companyAddressCityNameValue");
    let receiverCompanyAddressCityNeigh = doc.createElement("neighbourhood");
    let receiverCompanyAddressCityNeighValue = doc.createTextNode("companyAddressCityNeighValue");
    let receiverCompanyAddressCityStreet = doc.createElement("street");
    let receiverCompanyAddressCityStreetName = doc.createElement("name");
    let receiverCompanyAddressCityStreetNameValue = doc.createTextNode("companyAddressCityStreetNameValue");
    let receiverCompanyAddressCityStreetNumber = doc.createElement("number");
    let receiverCompanyAddressCityStreetNumberValue = doc.createTextNode("companyAddressCityStreetNumberValue");
    let receiverCompanyAddressParking = doc.createElement("parking");

    let receiverCompanyEmp = doc.createElement("employee");
    let receiverCompanyEmpName = doc.createElement("emp_name");
    let receiverCompanyEmpNameFirst = doc.createElement("first");
    let receiverCompanyEmpNameFirstValue = doc.createTextNode("companyEmpNameFirstValue");
    let receiverCompanyEmpNameLast = doc.createElement("last");
    let receiverCompanyEmpNameLastValue = doc.createTextNode("companyEmpNameLastValue");
    let receiverCompanyEmpPhones = doc.createElement("phones");
    let receiverCompanyEmpPhone = doc.createElement("phone");
    let receiverCompanyEmpPhoneCode = doc.createElement("code");
    let receiverCompanyEmpPhoneCodeValue = doc.createTextNode("companyEmpPhoneCodeValue");
    let receiverCompanyEmpPhoneNumber = doc.createElement("number");
    let receiverCompanyEmpPhoneNumberValue = doc.createTextNode("companyEmpPhoneNumberValue");
    let receiverCompanyEmpEmails = doc.createElement("emails");
    let receiverCompanyEmpEmail = doc.createElement("email");
    let receiverCompanyEmpEmailValue = doc.createTextNode("companyEmpEmailValue");

    let details = doc.createElement("details");
    let detailsPick = doc.createElement("pickoff");
    let detailsPickDate = doc.createElement("date");
    let detailsPickTime = doc.createElement("time");
    let detailsDrop = doc.createElement("dropoff");
    let detailsDropDate = doc.createElement("date");
    let detailsDropTime = doc.createElement("time");
    let detailsVerif = doc.createElement("verification");
    let detailsPrice = doc.createElement("price");
    let detailsPriceValue = doc.createElement("value");
    let detailsPriceValueData = doc.createTextNode("detailsPriceValueData");
    let detailsPriceCurrency = doc.createElement("currency");
    let detailsPriceCurrencyValue = doc.createTextNode("detailsPriceCurrencyValue");
    let detailsFreight = doc.createElement("freight");
    let detailsFreightDimen = doc.createElement("dimensions");
    let detailsFreightDimenWidth = doc.createElement("width");
    let detailsFreightDimenWidthValue = doc.createTextNode("detailsFreightDimenWidthValue");
    let detailsFreightDimenHeight = doc.createElement("height");
    let detailsFreightDimenHeightValue = doc.createTextNode("detailsFreightDimenHeightValue");
    let detailsFreightQuant = doc.createElement("quantity");
    let detailsFreightQuantValue = doc.createTextNode("detailsFreightQuantValue");
    let detailsFreightWeight = doc.createElement("weight");
    let detailsFreightWeightValue = doc.createTextNode("detailsFreightWeightValue");
    let detailsFreightReqVan = doc.createElement("requires_van");
    let detailsFreightCallCust = doc.createElement("call_customer");
    let detailsFreightFood = doc.createElement("food");


    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Assigning values.
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    idData.nodeValue = "7";

    company.setAttribute("code", "5555555");
    companyNameValue.nodeValue = "Си 3 ай Европа ЕООД";
    companyAddressDistrictName.nodeValue = "Варна";
    companyAddressCityZipValue.nodeValue = "1766";
    companyAddressCityNameValue.nodeValue = "София";
    companyAddressCityNeighValue.nodeValue = "Младост 4";
    companyAddressCityStreetNameValue.nodeValue = "Бизнес парк София";
    companyAddressCityStreetNumberValue.nodeValue = "1";
    companyAddressParking.setAttribute("available", "Не");
    companyEmpNameFirstValue.nodeValue = "Рахул";
    companyEmpNameLastValue.nodeValue = "Сингх";
    companyEmpPhoneCodeValue.nodeValue = "359";
    companyEmpPhoneNumberValue.nodeValue = "2 815 78 55";
    companyEmpEmail.setAttribute("notification", "Да");
    companyEmpEmailValue.nodeValue = "rsingh@gmail.com";

    receiverCompany.setAttribute("code", "201833876");
    receiverCompanyNameValue.nodeValue = "Инграм Микро ГБС ЕООД";
    receiverCompanyAddressDistrictName.nodeValue = "София";
    receiverCompanyAddressCityZipValue.nodeValue = "1784";
    receiverCompanyAddressCityNameValue.nodeValue = "София";
    receiverCompanyAddressCityNeighValue.nodeValue = "Младост 1";
    receiverCompanyAddressCityStreetNameValue.nodeValue = "Цариградско шосе";
    receiverCompanyAddressCityStreetNumberValue.nodeValue = "115";
    receiverCompanyAddressParking.setAttribute("available", "Да");
    receiverCompanyEmpNameFirstValue.nodeValue = "Яна";
    receiverCompanyEmpNameLastValue.nodeValue = "Фондран";
    receiverCompanyEmpPhoneCodeValue.nodeValue = "359";
    receiverCompanyEmpPhoneNumberValue.nodeValue = "804 9010";
    receiverCompanyEmpEmail.setAttribute("notification", "Да");
    receiverCompanyEmpEmailValue.nodeValue = "yfondran@gmail.com";

    detailsPickDate.setAttribute("year", "2020");
    detailsPickDate.setAttribute("month", "06");
    detailsPickDate.setAttribute("day", "02");
    detailsPickTime.setAttribute("hours", "17");
    detailsPickTime.setAttribute("minutes", "15");
    detailsDropDate.setAttribute("year", "2020");
    detailsDropDate.setAttribute("month", "06");
    detailsDropDate.setAttribute("day", "02");
    detailsDropTime.setAttribute("hours", "19");
    detailsDropTime.setAttribute("minutes", "00");
    detailsPrice.setAttribute("level", "2часа");
    detailsPriceValueData.nodeValue = "6666";
    detailsPriceCurrencyValue.nodeValue = "лева";
    detailsFreightDimenWidthValue.nodeValue = "5";
    detailsFreightDimenHeightValue.nodeValue = "5";
    detailsFreightDimen.setAttribute("units", "м");
    detailsFreightQuantValue.nodeValue = "1";
    detailsFreightWeightValue.nodeValue = "150";
    detailsFreightWeight.setAttribute("units", "кг");
    detailsFreightReqVan.setAttribute("value", "Не");
    detailsFreightCallCust.setAttribute("value", "Не");
    detailsFreightFood.setAttribute("value", "Не");

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Adding nodes to document.
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    doc.appendChild(orders);
    orders.appendChild(order);

    order.appendChild(id);
    order.appendChild(from);
    order.appendChild(to);
    order.appendChild(details);

    id.appendChild(idData);

    from.appendChild(company);
    companyName.appendChild(companyNameValue);
    company.appendChild(companyName);
    company.appendChild(companyAddress);
    companyAddress.appendChild(companyAddressDistrict);
    companyAddressDistrict.appendChild(companyAddressDistrictName);
    companyAddressCityZip.appendChild(companyAddressCityZipValue);
    companyAddressCity.appendChild(companyAddressCityZip);
    companyAddressCityName.appendChild(companyAddressCityNameValue);
    companyAddressCity.appendChild(companyAddressCityName);
    companyAddressCityNeigh.appendChild(companyAddressCityNeighValue);
    companyAddressCity.appendChild(companyAddressCityNeigh);
    companyAddressCityStreetName.appendChild(companyAddressCityStreetNameValue);
    companyAddressCityStreet.appendChild(companyAddressCityStreetName);
    companyAddressCityStreetNumber.appendChild(companyAddressCityStreetNumberValue);
    companyAddressCityStreet.appendChild(companyAddressCityStreetNumber);
    companyAddressCity.appendChild(companyAddressCityStreet);
    companyAddress.appendChild(companyAddressCity);
    companyAddress.appendChild(companyAddressParking);

    companyEmpNameFirst.appendChild(companyEmpNameFirstValue);
    companyEmpName.appendChild(companyEmpNameFirst);
    companyEmpNameLast.appendChild(companyEmpNameLastValue);
    companyEmpName.appendChild(companyEmpNameLast);
    companyEmp.appendChild(companyEmpName);
    companyEmpPhoneCode.appendChild(companyEmpPhoneCodeValue);
    companyEmpPhoneNumber.appendChild(companyEmpPhoneNumberValue);
    companyEmpPhone.appendChild(companyEmpPhoneCode);
    companyEmpPhone.appendChild(companyEmpPhoneNumber);
    companyEmpPhones.appendChild(companyEmpPhone);
    companyEmp.appendChild(companyEmpPhones);
    companyEmpEmail.appendChild(companyEmpEmailValue);
    companyEmpEmails.appendChild(companyEmpEmail);
    companyEmp.appendChild(companyEmpEmails);
    company.appendChild(companyEmp);

    to.appendChild(receiverCompany);
    receiverCompanyName.appendChild(receiverCompanyNameValue);
    receiverCompany.appendChild(receiverCompanyName);
    receiverCompany.appendChild(receiverCompanyAddress);
    receiverCompanyAddress.appendChild(receiverCompanyAddressDistrict);
    receiverCompanyAddressDistrict.appendChild(receiverCompanyAddressDistrictName);
    receiverCompanyAddressCityZip.appendChild(receiverCompanyAddressCityZipValue);
    receiverCompanyAddressCity.appendChild(receiverCompanyAddressCityZip);
    receiverCompanyAddressCityName.appendChild(receiverCompanyAddressCityNameValue);
    receiverCompanyAddressCity.appendChild(receiverCompanyAddressCityName);
    receiverCompanyAddressCityNeigh.appendChild(receiverCompanyAddressCityNeighValue);
    receiverCompanyAddressCity.appendChild(receiverCompanyAddressCityNeigh);
    receiverCompanyAddressCityStreetName.appendChild(receiverCompanyAddressCityStreetNameValue);
    receiverCompanyAddressCityStreet.appendChild(receiverCompanyAddressCityStreetName);
    receiverCompanyAddressCityStreetNumber.appendChild(receiverCompanyAddressCityStreetNumberValue);
    receiverCompanyAddressCityStreet.appendChild(receiverCompanyAddressCityStreetNumber);
    receiverCompanyAddressCity.appendChild(receiverCompanyAddressCityStreet);
    receiverCompanyAddress.appendChild(receiverCompanyAddressCity);
    receiverCompanyAddress.appendChild(receiverCompanyAddressParking);

    receiverCompanyEmpNameFirst.appendChild(receiverCompanyEmpNameFirstValue);
    receiverCompanyEmpName.appendChild(receiverCompanyEmpNameFirst);
    receiverCompanyEmpNameLast.appendChild(receiverCompanyEmpNameLastValue);
    receiverCompanyEmpName.appendChild(receiverCompanyEmpNameLast);
    receiverCompanyEmp.appendChild(receiverCompanyEmpName);
    receiverCompanyEmpPhoneCode.appendChild(receiverCompanyEmpPhoneCodeValue);
    receiverCompanyEmpPhoneNumber.appendChild(receiverCompanyEmpPhoneNumberValue);
    receiverCompanyEmpPhone.appendChild(receiverCompanyEmpPhoneCode);
    receiverCompanyEmpPhone.appendChild(receiverCompanyEmpPhoneNumber);
    receiverCompanyEmpPhones.appendChild(receiverCompanyEmpPhone);
    receiverCompanyEmp.appendChild(receiverCompanyEmpPhones);
    receiverCompanyEmpEmail.appendChild(receiverCompanyEmpEmailValue);
    receiverCompanyEmpEmails.appendChild(receiverCompanyEmpEmail);
    receiverCompanyEmp.appendChild(receiverCompanyEmpEmails);
    receiverCompany.appendChild(receiverCompanyEmp);

    detailsPick.appendChild(detailsPickDate);
    detailsPick.appendChild(detailsPickTime);
    details.appendChild(detailsPick);
    detailsDrop.appendChild(detailsDropDate);
    detailsDrop.appendChild(detailsDropTime);
    details.appendChild(detailsDrop);
    detailsPriceValue.appendChild(detailsPriceValueData);
    detailsPrice.appendChild(detailsPriceValue);
    detailsPriceCurrency.appendChild(detailsPriceCurrencyValue);
    detailsPrice.appendChild(detailsPriceCurrency);
    details.appendChild(detailsPrice);
    details.appendChild(detailsVerif);
    detailsFreightDimenWidth.appendChild(detailsFreightDimenWidthValue);
    detailsFreightDimen.appendChild(detailsFreightDimenWidth)
    detailsFreight.appendChild(detailsFreightDimen);
    detailsFreightQuant.appendChild(detailsFreightQuantValue);
    detailsFreight.appendChild(detailsFreightQuant);
    detailsFreightWeight.appendChild(detailsFreightWeightValue);
    detailsFreight.appendChild(detailsFreightWeight);
    detailsFreightDimenHeight.appendChild(detailsFreightDimenHeightValue);
    detailsFreightDimen.appendChild(detailsFreightDimenHeight);
    detailsFreight.appendChild(detailsFreightReqVan);
    detailsFreight.appendChild(detailsFreightCallCust);
    detailsFreight.appendChild(detailsFreightFood);
    details.appendChild(detailsFreight);

    // https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation/createHTMLDocument

    return doc;
}