using productshop as service from '../../srv/product';

annotate service.Product with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
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
    ]
);
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
                Label : 'ID',
                Value : ID,
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
