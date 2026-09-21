.class public Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TARGET_TYPE_COUNT:I


# instance fields
.field protected _defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

.field protected final _defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

.field protected _perClassCoercions:Ljava/util/Map;

.field protected _perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/LogicalType;->values()[Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->TARGET_TYPE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 49
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;-><init>(Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;Ljava/util/Map;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;Ljava/util/Map;)V
    .registers 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 59
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 60
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 61
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    return-void
.end method

.method private static _copy(Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected _isScalarType(Lcom/fasterxml/jackson/databind/type/LogicalType;)Z
    .registers 2

    .line 326
    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Float:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-eq p1, p0, :cond_13

    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-eq p1, p0, :cond_13

    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-eq p1, p0, :cond_13

    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->DateTime:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-ne p1, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public copy()Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v2, v1

    goto :goto_1a

    .line 77
    :cond_7
    array-length v0, v0

    .line 78
    new-array v2, v0, [Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_1a

    .line 80
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_copy(Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 84
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    if-nez v0, :cond_1f

    goto :goto_4e

    .line 87
    :cond_1f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 92
    :cond_4e
    :goto_4e
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object p0

    invoke-direct {v0, v3, p0, v2, v1}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;-><init>(Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;Ljava/util/Map;)V

    return-object v0
.end method

.method public defaultCoercions()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    return-object p0
.end method

.method public findCoercion(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .registers 6

    .line 166
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    if-eqz v0, :cond_15

    if-eqz p3, :cond_15

    .line 167
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-eqz p3, :cond_15

    .line 169
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    if-eqz p3, :cond_15

    return-object p3

    .line 177
    :cond_15
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-eqz p3, :cond_2a

    if-eqz p2, :cond_2a

    .line 178
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p3, p3, v0

    if-eqz p3, :cond_2a

    .line 180
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    if-eqz p3, :cond_2a

    return-object p3

    .line 188
    :cond_2a
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    if-eqz p3, :cond_33

    return-object p3

    .line 194
    :cond_33
    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionInputShape:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_96

    const/4 v0, 0x2

    if-eq p3, v0, :cond_54

    const/4 v0, 0x3

    if-eq p3, v0, :cond_45

    goto :goto_66

    .line 207
    :cond_45
    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Enum:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-ne p2, p3, :cond_66

    .line 208
    sget-object p3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p3

    if-eqz p3, :cond_66

    .line 209
    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p0

    .line 200
    :cond_54
    sget-object p3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-ne p2, p3, :cond_66

    .line 202
    sget-object p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_FLOAT_AS_INT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p0

    if-eqz p0, :cond_63

    .line 203
    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p0

    :cond_63
    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p0

    .line 218
    :cond_66
    :goto_66
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_isScalarType(Lcom/fasterxml/jackson/databind/type/LogicalType;)Z

    move-result p3

    if-eqz p3, :cond_77

    .line 222
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 223
    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p0

    .line 227
    :cond_77
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    if-ne p4, v0, :cond_93

    if-nez p3, :cond_90

    .line 230
    sget-object p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 232
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p0

    if-eqz p0, :cond_86

    goto :goto_90

    .line 237
    :cond_86
    sget-object p0, Lcom/fasterxml/jackson/databind/type/LogicalType;->OtherScalar:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-ne p2, p0, :cond_8d

    .line 238
    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p0

    .line 241
    :cond_8d
    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p0

    .line 233
    :cond_90
    :goto_90
    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p0

    .line 245
    :cond_93
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p0

    .line 197
    :cond_96
    sget-object p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p0

    if-eqz p0, :cond_a1

    .line 198
    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p0

    :cond_a1
    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p0
.end method

.method public findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .registers 8

    .line 272
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    if-eqz v0, :cond_19

    if-eqz p3, :cond_19

    .line 273
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-eqz p3, :cond_19

    .line 275
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->getAcceptBlankAsEmpty()Ljava/lang/Boolean;

    move-result-object v0

    .line 276
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    move-object p3, v0

    .line 281
    :goto_1b
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-eqz v1, :cond_37

    if-eqz p2, :cond_37

    .line 282
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_37

    if-nez v0, :cond_2f

    .line 285
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->getAcceptBlankAsEmpty()Ljava/lang/Boolean;

    move-result-object v0

    :cond_2f
    if-nez p3, :cond_37

    .line 288
    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {v1, p3}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    :cond_37
    if-nez v0, :cond_3f

    .line 295
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->getAcceptBlankAsEmpty()Ljava/lang/Boolean;

    move-result-object v0

    :cond_3f
    if-nez p3, :cond_49

    .line 298
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    .line 302
    :cond_49
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_69

    :cond_52
    if-eqz p3, :cond_55

    return-object p3

    .line 312
    :cond_55
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_isScalarType(Lcom/fasterxml/jackson/databind/type/LogicalType;)Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 313
    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p0

    .line 317
    :cond_5e
    sget-object p0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p0

    if-eqz p0, :cond_69

    .line 318
    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p0

    :cond_69
    :goto_69
    return-object p4
.end method

.method public findOrCreateCoercion(Lcom/fasterxml/jackson/databind/type/LogicalType;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-nez v0, :cond_a

    .line 121
    sget v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->TARGET_TYPE_COUNT:I

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 123
    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_21

    .line 125
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>()V

    aput-object v0, p0, p1

    :cond_21
    return-object v0
.end method

.method public findOrCreateCoercion(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    .line 134
    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-nez v0, :cond_1f

    .line 136
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>()V

    .line 137
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0
.end method
