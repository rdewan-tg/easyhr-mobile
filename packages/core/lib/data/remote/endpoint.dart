const String loginEndPoint = '/v1/auth/login';
const String logoutEndPoint = '/v1/auth/logout';
const String tokenRefreshEndPoint = '/v1/auth/refresh-token';
const String signUpEndPoint = '/v1/auth/signup';
const String forgotPasswordEndPoint = '/v1/auth/forgot-password';
const String meEndPoint = '/v1/me';
const String findDeviceSettingByDeviceIdEndPoint =
    '/v1/device-setting/find/{deviceId}';
const String merchandiserCustomerEndPoint =
    '/v1/merchandiser-customers/{DataAreaId}';
const String filterMerchandiserCustomerEndPoint =
    '/v1/merchandiser-customers';

const String salesCustomerEndPoint = '/v1/customers/{DataAreaId}';
const String filterSalesCustomerEndPoint = '/v1/customers';
const String uploadMerchandiserPhotoEndPoint = '/v1/merchandiser/photos';
const String customerAddressEndpoint = '/v1/addresses/{DataAreaId}';
const String filterCustomerAddressEndpoint = '/v1/addresses';
const String toDaySiteVisitReportEndPoint =
    '/v1/merchandiser/photos/report/today-unique-site-visit-report';
const String thisMonthSiteVisitReportEndPoint =
    '/v1/merchandiser/photos/report/this-month-site-visit-report';

// product
const String productsEndPoint = '/v1/items/{DataAreaId}';
// price
const String pricesEndPoint = '/v1/prices/{DataAreaId}';

// sales header
const String createSalesHeaderEndPoint = '/v1/sales-header';
// sales line
const String createSalesLineEndPoint = '/v1/sales-line';
const String createManySalesLineEndPoint = '/v1/sales-line/create-many';
