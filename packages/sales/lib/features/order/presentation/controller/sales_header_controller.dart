import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/address/application/customer_address_service.dart';
import 'package:sales/features/customer/application/sales_customer_service.dart';
import 'package:sales/features/order/application/order_service.dart';
import 'package:sales/features/order/presentation/state/sales_header_state.dart';
import 'package:common/exception/failure.dart';
import 'package:drift/drift.dart';

final salesHeaderControlelrProvider =
    NotifierProvider<SalesHeaderController, SalesHeaderState>(
  SalesHeaderController.new,
);

class SalesHeaderController extends Notifier<SalesHeaderState> {
  @override
  SalesHeaderState build() {
    return SalesHeaderState();
  }

  Future<void> getSettings() async {
    // get the setting from the database
    final settings = await ref.read(orderServiceProvider).getAllSetting();
    // update state
    state = state.copyWith(settings: settings);
  }

  Future<void> createSalesHeader(
    Map<String, dynamic> data,
    String transactionDate,
  ) async {
    
      
  }

  Future<void> updateDeliveryDate(deliveryDate) async {
    try {
      state = state.copyWith(errorMsg: null, isLoading: true);
      final salesId = state.salesHeaderData?.salesId ?? '';
      // sales head data
      final salesHeaderData = SalesHeaderEntityCompanion(
        salesId: Value(salesId),
        deliveryDate: Value(deliveryDate),
      );
      // update the sales header
      final result = await ref
          .read(orderServiceProvider)
          .updateSalesHeader(salesHeaderData);
      // update the state
      result.when((success) {
        state = state.copyWith(salesHeaderData: success, isLoading: false);
      }, (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      });
    } on Failure catch (e) {
      state = state.copyWith(errorMsg: e.message);
    }
  }

  Future<void> updateCustomerRequisition(String value) async {
    try {
      state = state.copyWith(errorMsg: null, isLoading: true);
      final salesId = state.salesHeaderData?.salesId ?? '';
      // sales head data
      final salesHeaderData = SalesHeaderEntityCompanion(
        salesId: Value(salesId),
        customerRequisition: Value(value),
      );
      // update the sales header
      final result = await ref
          .read(orderServiceProvider)
          .updateSalesHeader(salesHeaderData);
      // update the state
      result.when((success) {
        state = state.copyWith(salesHeaderData: success, isLoading: false);
      }, (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      });
    } on Failure catch (e) {
      state = state.copyWith(errorMsg: e.message);
    }
  }

  Future<void> updateNote(String value) async {
    try {
      state = state.copyWith(errorMsg: null, isLoading: true);
      final salesId = state.salesHeaderData?.salesId ?? '';
      // sales head data
      final salesHeaderData = SalesHeaderEntityCompanion(
        salesId: Value(salesId),
        note: Value(value),
      );
      // update the sales header
      final result = await ref
          .read(orderServiceProvider)
          .updateSalesHeader(salesHeaderData);
      // update the state
      result.when((success) {
        state = state.copyWith(salesHeaderData: success, isLoading: false);
      }, (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      });
    } on Failure catch (e) {
      state = state.copyWith(errorMsg: e.message);
    }
  }

  String? getTimeZone() => state.settings?['timeZone'];

  String getPriceGroup() => state.customerData?.priceGroup ?? '';

  String getSalesId() => state.salesHeaderData?.salesId ?? '';

  bool isDeliveryDateSet() =>
      state.salesHeaderData?.deliveryDate.isNotEmpty ?? false;

  Future<void> getCustomerAddressByPostalAddress(String postalAddress) async {
    try {
      final result = await ref
          .read(customerAddressServiceProvider)
          .getCustomerAddressByPostalAddress(postalAddress);

      state = state.copyWith(customerAddressData: result);
    } on Failure catch (e) {
      state = state.copyWith(errorMsg: e.message);
    }
  }

  Future<void> getCustomerByCustomerId(String customerId) async {
    try {
      final result = await ref
          .read(salesCustomerServiceProvider)
          .getCustomerByCustomerId(customerId);

      state = state.copyWith(customerData: result);
    } on Failure catch (e) {
      state = state.copyWith(errorMsg: e.message);
    }
  }
}
