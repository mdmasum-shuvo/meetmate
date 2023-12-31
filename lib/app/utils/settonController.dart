import 'package:contactbook/app/model/CompanyResponse.dart';
import 'package:contactbook/app/model/CountryResponse.dart';
import 'package:contactbook/app/utils/setting_provider.dart';
import 'package:contactbook/app/utils/snackbar.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../theme/Colors.dart';
import '../model/CompanyTypeResponse.dart';

class SettingController extends GetxController {
  final SettingProvider _settingProvider = SettingProvider();
  RxList<String> listCompanyName = <String>[].obs;
  RxList<String> listCompanyId = <String>[].obs;
  Rx<CompanyResponse> companyList = CompanyResponse(data: List.empty()).obs;
  RxList<String> listCompanyTypeName = <String>[].obs;
  RxList<String> listCompanyTypeId = <String>[].obs;
  Rx<CompanyTypeResponse> companyTypeList =
      CompanyTypeResponse(data: List.empty()).obs;

  RxList<String> listCountryName = <String>[].obs;
  RxList<String> listCountryId = <String>[].obs;
  Rx<CountryResponse> countryList = CountryResponse(data: List.empty()).obs;
  RxString selectedCompanyId = "".obs;
  RxString selectedCompanyTypeId = "".obs;
  RxString selectedCountryId = "".obs;
  RxString selectedPriorityId = "".obs;
  RxString selectedLocationId = "".obs;
  RxString selectedStatusId = "".obs;
  RxString selectedGenderId = "".obs;
  RxString selectedNatureId = "".obs;

  void getCompanyList() async {
    // EasyLoading.show();
    _settingProvider.getCompany().then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        companyList.value = response;
        //department.value = departmentList.value!.data![0].departmentName!;
        setCompanyData();
        //getDesignation();
        EasyLoading.dismiss();
      } else {
        //getDesignation();

        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void getCountryList() async {
    // EasyLoading.show();
    _settingProvider.getCountry().then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        countryList.value = response;
        //department.value = departmentList.value!.data![0].departmentName!;
        setCountryData();
        //getDesignation();
        EasyLoading.dismiss();
      } else {
        //getDesignation();

        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void setCompanyData() async {
    List<String> listStr = [];
    List<String> listIds = [];

    //listStr.add("Select Company Type");

    for (int i = 0; i < companyList.value.data!.length; i++) {
      listStr.add(companyList.value.data![i].companyName!);
      listIds.add(companyList.value.data![i].id.toString());
    }

    listCompanyName.value = listStr;
    listCompanyId.value = listIds;
  }

  void setCountryData() async {
    List<String> listStr = [];
    List<String> listIds = [];

    for (int i = 0; i < countryList.value.data!.length; i++) {
      listStr.add(countryList.value.data![i].name ?? "");
      listIds.add(countryList.value.data![i].id.toString());
    }

    listCountryName.value = listStr;
    listCountryId.value = listIds;
  }

  void getCompanyType() async {
    // EasyLoading.show();
    _settingProvider.getCompanyType().then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        companyTypeList.value = response;
        //department.value = departmentList.value!.data![0].departmentName!;
        setCompanyTypeData();
        //getDesignation();
        EasyLoading.dismiss();
      } else {
        //getDesignation();

        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void setCompanyTypeData() async {
    List<String> listStr = [];
    List<String> listIds = [];

    //listStr.add("Select Company Type");

    for (int i = 0; i < companyTypeList.value.data!.length; i++) {
      listStr.add(companyTypeList.value.data![i].companyType!);
      listIds.add(companyTypeList.value.data![i].id.toString());
    }

    listCompanyTypeName.value = listStr;
    listCompanyTypeId.value = listIds;
  }

  void getSelectedIdFromCompany(String companyName) {
    for (int i = 0; i < listCompanyName.length; i++) {
      if (companyName == listCompanyName[i]) {
        selectedCompanyId.value = listCompanyId[i];
        print(selectedCompanyId.value);
        break;
      }
    }
  }

  void getSelectedIdFromCompanyType(String companyType) {
    for (int i = 0; i < listCompanyTypeName.length; i++) {
      if (companyType == listCompanyTypeName[i]) {
        selectedCompanyTypeId.value = listCompanyTypeId[i];
        break;
      }
    }
  }

  void getSelectedIdFromCountry(String countryName) {
    for (int i = 0; i < listCountryName.length; i++) {
      if (countryName == listCountryName[i]) {
        selectedCountryId.value = listCountryId[i];
        break;
      }
    }
  }

  void getPriorityId(String name) {
    if (name == "High") {
      selectedPriorityId.value = "3";
    } else if (name == "Medium") {
      selectedPriorityId.value = "2";
    } else if (name == "Low") {
      selectedPriorityId.value = "1";
    }
  }

  void getLocationId(String name) {
    if (name == "online") {
      selectedLocationId.value = "1";
    } else if (name == "offLine") {
      selectedLocationId.value = "2";
    } else if (name == "others") {
      selectedLocationId.value = "3";
    }
  }

  void getStatusId(String name) {
    if (name == "Active") {
      selectedStatusId.value = "1";
    } else if (name == "Inactive") {
      selectedStatusId.value = "2";
    }
  }

  void getGenderId(String name) {
    if (name == "Male") {
      selectedGenderId.value = "1";
    } else if (name == "Female") {
      selectedGenderId.value = "2";
    }
  }

  void getNatureId(String name) {
    if (name == "Good") {
      selectedNatureId.value = "1";
    } else if (name == "Bad") {
      selectedNatureId.value = "2";
    }
  }
}
