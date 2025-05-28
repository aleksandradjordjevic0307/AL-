tableextension 50113 CustomerTypeExt extends Customer
{
    fields
    {
        field(50114; CustomerType; Enum CustomerTypeEnum)
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Type';
        }
    }
}