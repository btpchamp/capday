sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/project1/test/integration/FirstJourney',
		'ns/project1/test/integration/pages/ProductList',
		'ns/project1/test/integration/pages/ProductObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductList, ProductObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductList: ProductList,
					onTheProductObjectPage: ProductObjectPage
                }
            },
            opaJourney.run
        );
    }
);