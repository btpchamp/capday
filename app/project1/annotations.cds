using productshop as service from '../../srv/product';
using from '../../db/schema';

annotate service.Product with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : '{i18n>Car}',
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Stock}',
            Value : stock,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Price}',
            Value : cost_price,
        },
        {
            $Type : 'UI.DataField',
            Value : supplier.suppliername,
            Label : '{i18n>Supplier}',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#criticality',
            Label : '{i18n>Criticality}',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#emission',
            Label : '{i18n>Co2Emission}',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'productshop.orderProduct',
            Label : '{i18n>OrderProduct}',
            Criticality : #Negative,
            Inline : true
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'productshop.createPO',
            Label : '{i18n>CreatePurchaseOrder}',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'productshop.authetication',
            Label : 'Fingerprint',
            Inline : true,
            Criticality : #Positive,
            IconUrl : 'sap-icon://biometric-thumb',
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
                Label : '{i18n>Car}',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Stock}',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Price}',
                Value : cost_price,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Supplier}',
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Product Details',
            ID : 'ProductDetails',
            Target : '@UI.FieldGroup#ProductDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Conversation}',
            ID : 'i18nConversation',
            Target : 'converstion/@UI.LineItem#i18nConversation',
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
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'productshop.createPO',
            Label : '{i18n>CreatePurchaseOrder}',
        },]
);
annotate service.Product with @(
    UI.DataPoint #criticality : {
        Value : criticality,
        Visualization : #Rating,
        TargetValue : 5,
    }
);
annotate service.Product with @(
    UI.DataPoint #emission : {
        Value : emission,
        Visualization : #Progress,
        TargetValue : 100,
        Criticality : criticality,
    }
);
annotate service.Product with @(
    UI.SelectionFields : [
        name,
        supplier.suppliername,
    ]
);
annotate service.Product with {
    name @Common.Label : '{i18n>Car}'
};
annotate service.Supplier with {
    suppliername @Common.Label : '{i18n>Supplier}'
};
annotate service.Product with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : stock,
        },
        TypeImageUrl : 'sap-icon://car-renta'

    }
);
annotate service.Product with @(
    UI.FieldGroup #ProductDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ManufactureDate}',
                Value : mfgDate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ExpiryDate}',
                Value : expDate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Discount}',
                Value : cost_discount,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Co2Emission}',
                Value : emission,
                Criticality : criticality,
            },],
    }
);
annotate service.Product with {
    supplier @Common.Text : supplier.suppliername
};
annotate service.Product with {
    supplier @Common.ValueListWithFixedValues : false
};
annotate service.Product.converstion with @(
    UI.LineItem #i18nConversation : [
        {
            $Type : 'UI.DataField',
            Value : author,
            Label : '{i18n>Author}',
        },{
            $Type : 'UI.DataField',
            Value : message,
            Label : '{i18n>Message}',
        },
        {
            $Type : 'UI.DataField',
            Value : timestamp,
            Label : '{i18n>Timestamp}',
        },]
);
