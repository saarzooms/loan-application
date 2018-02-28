<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'Welcome';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['loan/new'] = 'loan/newLoan';
$route['loan/get/(:any)'] = 'loan/getLoan/$1';
$route['loan/save'] = 'loan/saveLoan';
$route['loan/share'] = 'loan/shareLoan';


$route['settings/prepaid/get'] = 'settings/getPrepaid';
$route['settings/prepaid/save'] = 'settings/savePrepaid';

$route['settings/credit/get'] = 'settings/getCredit';
$route['settings/credit/save'] = 'settings/saveCredit';

$route['settings/closing-costs/get'] = 'settings/getClosingCosts';
$route['settings/closing-costs/save'] = 'settings/saveClosingCosts';

$route['settings/closing-costs-type/get'] = 'settings/getClosingCostTypes';
$route['settings/closing-costs-type/save'] = 'settings/saveClosingCostsType';

$route['settings/closing-costs-template/get'] = 'settings/getClosingCostsTemplate';
$route['settings/closing-costs-template/save'] = 'settings/saveClosingCostsTemplate';

// Lookups

$route['lookup/state-rate'] = 'lookups/getStateRates';
$route['lookup/title-insurance-premium/get'] = 'lookups/getTitleInsurancePremium';
$route['lookup/title-insurance-range/get'] = 'lookups/getTitleInsuranceRange';
$route['lookup/bpmi/get'] = 'lookups/getBpmi';
$route['lookup/bpmi-adjustments/get'] = 'lookups/getBpmiAdjustments';



