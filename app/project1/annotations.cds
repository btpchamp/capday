using productshop as service from '../../srv/product';

annotate service.Product with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'mfgDate',
            Value : mfgDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'expDate',
            Value : expDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'stock',
            Value : stock,
        },
        {
            $Type : 'UI.DataField',
            Label : 'cost_price',
            Value : cost_price,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'productshop.orderProduct',
            Label : '{i18n>OrderProduct}',
            Criticality : #Positive,
            Inline : true,
            IconUrl : 'sap-icon://sales-order',
        },
    ]
);
annotate service.Product with {
    supplier @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Supplier',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : supplier_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'suppliername',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'address',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'email',
            },
        ],
    }
};
annotate service.Product with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'mfgDate',
                Value : mfgDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'expDate',
                Value : expDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Label : 'cost_price',
                Value : cost_price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'cost_discount',
                Value : cost_discount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'emission',
                Value : emission,
            },
            {
                $Type : 'UI.DataField',
                Label : 'supplier_ID',
                Value : supplier_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Product with @(
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'productshop.orderProduct',
            Label : '{i18n>OrderProduct}',
            Determining : true,
        },]
);
