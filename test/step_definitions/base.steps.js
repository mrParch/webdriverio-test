import { Given, Then } from 'cucumber';

import MainPage from '../pages/main.page.js';
import sidebarData from '../files/test_data/sidebar.data';

Given(/^I click on the (My Day|Important| Planned| Assigned to you|Flagged email|Tasks) sidebar button$/, button => {
    MainPage.sidebar[sidebarData[button]].click();
});

Given(/^I expect that the (My Day|Important| Planned| Assigned to you|Flagged email|Tasks) section is displayed$/, button => {
    
});
