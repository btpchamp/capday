using ProductMasterA2X from './external/ProductMasterA2X.cds';

service ProductMasterA2XSampleService {
    @readonly
    entity A_ProductDescription as projection on ProductMasterA2X.A_ProductDescription
    {        key Product, key Language, ProductDescription     }    
;
    @readonly
    entity A_Product as projection on ProductMasterA2X.A_Product
    {        key Product, ProductType, CrossPlantStatus, CrossPlantStatusValidityDate, CreationDate, CreatedByUser, LastChangeDate, LastChangedByUser, LastChangeDateTime, IsMarkedForDeletion, ProductOldID, GrossWeight, PurchaseOrderQuantityUnit, SourceOfSupply, WeightUnit, NetWeight, CountryOfOrigin, CompetitorID, ProductGroup, BaseUnit, ItemCategoryGroup, ProductHierarchy, Division, VarblPurOrdUnitIsActive, VolumeUnit, MaterialVolume, ANPCode, Brand, ProcurementRule, ValidityStartDate, LowLevelCode, ProdNoInGenProdInPrepackProd, SerialIdentifierAssgmtProfile, SizeOrDimensionText, IndustryStandardName, ProductStandardID, InternationalArticleNumberCat, ProductIsConfigurable, IsBatchManagementRequired, ExternalProductGroup, CrossPlantConfigurableProduct, SerialNoExplicitnessLevel, ProductManufacturerNumber, ManufacturerNumber, ManufacturerPartProfile, QltyMgmtInProcmtIsActive, IndustrySector, ChangeNumber, MaterialRevisionLevel, HandlingIndicator, WarehouseProductGroup, WarehouseStorageCondition, StandardHandlingUnitType, SerialNumberProfile, AdjustmentProfile, PreferredUnitOfMeasure, IsPilferable, IsRelevantForHzdsSubstances, QuarantinePeriod, TimeUnitForQuarantinePeriod, QualityInspectionGroup, AuthorizationGroup, DocumentIsCreatedByCAD, HandlingUnitType, HasVariableTareWeight, MaximumPackagingLength, MaximumPackagingWidth, MaximumPackagingHeight, UnitForMaxPackagingDimensions     }    
;
}