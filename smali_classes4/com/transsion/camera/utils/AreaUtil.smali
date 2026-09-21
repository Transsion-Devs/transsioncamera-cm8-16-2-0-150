.class public abstract Lcom/transsion/camera/utils/AreaUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AFRICA:Ljava/util/List;

.field public static final AREA_CODE:I

.field public static final COUNTRY_CODE:Ljava/lang/String;

.field private static final DXO_AREA:Ljava/util/List;

.field private static final EASTERN_EUROPE:Ljava/util/List;

.field private static final EE1:Ljava/util/List;

.field public static final ICON_AREA_CODE:I

.field private static final MIDDLE_EAST:Ljava/util/List;

.field public static final REGION_CODE:I

.field private static final SOUTHEAST_ASIA:Ljava/util/List;

.field private static final SOUTH_ASIA:Ljava/util/List;

.field private static final SOUTH_SOUTHEAST_ASIA:Ljava/util/List;

.field private static final SSA:Ljava/util/List;

.field private static final USER_SOUTH_ASIA_ICO_AREA:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 86

    .line 10
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mOobeCountryCode:Ljava/lang/String;

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->COUNTRY_CODE:Ljava/lang/String;

    .line 14
    const-string v0, "IN"

    const-string v1, "PK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->USER_SOUTH_ASIA_ICO_AREA:Ljava/util/List;

    .line 20
    const-string v11, "NP"

    const-string v12, "MV"

    const-string v1, "EG"

    const-string v2, "MA"

    const-string v3, "LY"

    const-string v4, "TN"

    const-string v5, "DZ"

    const-string v6, "IN"

    const-string v7, "BD"

    const-string v8, "PK"

    const-string v9, "LK"

    const-string v10, "BT"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->SOUTH_ASIA:Ljava/util/List;

    .line 38
    const-string v49, "DJ"

    const-string v50, "SC"

    const-string v1, "NG"

    const-string v2, "GH"

    const-string v3, "CI"

    const-string v4, "CM"

    const-string v5, "SN"

    const-string v6, "BJ"

    const-string v7, "CD"

    const-string v8, "CG"

    const-string v9, "GN"

    const-string v10, "ML"

    const-string v11, "BF"

    const-string v12, "TG"

    const-string v13, "AO"

    const-string v14, "ZA"

    const-string v15, "MR"

    const-string v16, "NE"

    const-string v17, "GA"

    const-string v18, "NA"

    const-string v19, "BW"

    const-string v20, "MG"

    const-string v21, "ST"

    const-string v22, "LR"

    const-string v23, "GM"

    const-string v24, "GQ"

    const-string v25, "SL"

    const-string v26, "GW"

    const-string v27, "CV"

    const-string v28, "KE"

    const-string v29, "ET"

    const-string v30, "MZ"

    const-string v31, "BI"

    const-string v32, "MW"

    const-string v33, "ZW"

    const-string v34, "CF"

    const-string v35, "ER"

    const-string v36, "KM"

    const-string v37, "LS"

    const-string v38, "SZ"

    const-string v39, "UG"

    const-string v40, "RW"

    const-string v41, "TZ"

    const-string v42, "SD"

    const-string v43, "SS"

    const-string v44, "ZM"

    const-string v45, "MU"

    const-string v46, "SO"

    const-string v47, "TD"

    const-string v48, "NS"

    filled-new-array/range {v1 .. v50}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->AFRICA:Ljava/util/List;

    .line 94
    const-string v13, "SY"

    const-string v14, "YE"

    const-string v1, "AE"

    const-string v2, "LB"

    const-string v3, "JO"

    const-string v4, "SA"

    const-string v5, "IL"

    const-string v6, "BH"

    const-string v7, "IQ"

    const-string v8, "IR"

    const-string v9, "KW"

    const-string v10, "QA"

    const-string v11, "PS"

    const-string v12, "OM"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->MIDDLE_EAST:Ljava/util/List;

    .line 112
    const-string v23, "MN"

    const-string v24, "KP"

    const-string v1, "ID"

    const-string v2, "PH"

    const-string v3, "MY"

    const-string v4, "TH"

    const-string v5, "VN"

    const-string v6, "LA"

    const-string v7, "KH"

    const-string v8, "SG"

    const-string v9, "MM"

    const-string v10, "BN"

    const-string v11, "TL"

    const-string v12, "AZ"

    const-string v13, "KZ"

    const-string v14, "UZ"

    const-string v15, "GE"

    const-string v16, "TJ"

    const-string v17, "KG"

    const-string v18, "AM"

    const-string v19, "TM"

    const-string v20, "CN"

    const-string v21, "KR"

    const-string v22, "JP"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->SOUTHEAST_ASIA:Ljava/util/List;

    .line 144
    const-string v36, "VA"

    const-string v37, "XK"

    const-string v1, "FR"

    const-string v2, "RU"

    const-string v3, "BY"

    const-string v4, "ES"

    const-string v5, "DE"

    const-string v6, "IT"

    const-string v7, "PT"

    const-string v8, "BE"

    const-string v9, "PL"

    const-string v10, "CZ"

    const-string v11, "GR"

    const-string v12, "HU"

    const-string v13, "RO"

    const-string v14, "SK"

    const-string v15, "UA"

    const-string v16, "RS"

    const-string v17, "GB"

    const-string v18, "NL"

    const-string v19, "CH"

    const-string v20, "DK"

    const-string v21, "SE"

    const-string v22, "BG"

    const-string v23, "SI"

    const-string v24, "AL"

    const-string v25, "MK"

    const-string v26, "AD"

    const-string v27, "BA"

    const-string v28, "CA"

    const-string v29, "LI"

    const-string v30, "IE"

    const-string v31, "MC"

    const-string v32, "MD"

    const-string v33, "ME"

    const-string v34, "MT"

    const-string v35, "SM"

    filled-new-array/range {v1 .. v37}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->EASTERN_EUROPE:Ljava/util/List;

    .line 184
    const-string v5, "RS"

    const-string v6, "UA"

    const-string v1, "AL"

    const-string v2, "MK"

    const-string v3, "ME"

    const-string v4, "BA"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->DXO_AREA:Ljava/util/List;

    .line 193
    const-string v64, "ZM"

    const-string v65, "ZW"

    const-string v1, "AO"

    const-string v2, "BB"

    const-string v3, "BF"

    const-string v4, "BI"

    const-string v5, "BJ"

    const-string v6, "BO"

    const-string v7, "BS"

    const-string v8, "BW"

    const-string v9, "CD"

    const-string v10, "CF"

    const-string v11, "CG"

    const-string v12, "CI"

    const-string v13, "CM"

    const-string v14, "DM"

    const-string v15, "DO"

    const-string v16, "ER"

    const-string v17, "ET"

    const-string v18, "FM"

    const-string v19, "GA"

    const-string v20, "GD"

    const-string v21, "GH"

    const-string v22, "GM"

    const-string v23, "GN"

    const-string v24, "GQ"

    const-string v25, "GW"

    const-string v26, "HT"

    const-string v27, "JM"

    const-string v28, "KE"

    const-string v29, "KI"

    const-string v30, "KM"

    const-string v31, "KN"

    const-string v32, "LC"

    const-string v33, "LR"

    const-string v34, "LS"

    const-string v35, "MG"

    const-string v36, "ML"

    const-string v37, "MR"

    const-string v38, "MU"

    const-string v39, "MW"

    const-string v40, "MZ"

    const-string v41, "NA"

    const-string v42, "NE"

    const-string v43, "NG"

    const-string v44, "NR"

    const-string v45, "NS"

    const-string v46, "PG"

    const-string v47, "RW"

    const-string v48, "SB"

    const-string v49, "SD"

    const-string v50, "SL"

    const-string v51, "SN"

    const-string v52, "SO"

    const-string v53, "SR"

    const-string v54, "SS"

    const-string v55, "ST"

    const-string v56, "SZ"

    const-string v57, "TD"

    const-string v58, "TG"

    const-string v59, "TZ"

    const-string v60, "UG"

    const-string v61, "VC"

    const-string v62, "VU"

    const-string v63, "ZA"

    filled-new-array/range {v1 .. v65}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->SSA:Ljava/util/List;

    .line 261
    const-string v49, "VN"

    const-string v50, "WS"

    const-string v1, "AF"

    const-string v2, "BD"

    const-string v3, "BN"

    const-string v4, "BR"

    const-string v5, "BT"

    const-string v6, "BZ"

    const-string v7, "CL"

    const-string v8, "CN"

    const-string v9, "CO"

    const-string v10, "CR"

    const-string v11, "CV"

    const-string v12, "EC"

    const-string v13, "FJ"

    const-string v14, "GT"

    const-string v15, "GY"

    const-string v16, "HN"

    const-string v17, "ID"

    const-string v18, "IN"

    const-string v19, "JP"

    const-string v20, "KH"

    const-string v21, "KP"

    const-string v22, "KR"

    const-string v23, "LA"

    const-string v24, "LK"

    const-string v25, "MH"

    const-string v26, "MM"

    const-string v27, "MN"

    const-string v28, "MV"

    const-string v29, "MX"

    const-string v30, "MY"

    const-string v31, "NI"

    const-string v32, "NP"

    const-string v33, "NU"

    const-string v34, "PA"

    const-string v35, "PE"

    const-string v36, "PH"

    const-string v37, "PK"

    const-string v38, "PW"

    const-string v39, "PY"

    const-string v40, "SC"

    const-string v41, "SG"

    const-string v42, "SV"

    const-string v43, "TH"

    const-string v44, "TL"

    const-string v45, "TO"

    const-string v46, "TT"

    const-string v47, "TV"

    const-string v48, "VE"

    filled-new-array/range {v1 .. v50}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->SOUTH_SOUTHEAST_ASIA:Ljava/util/List;

    .line 315
    const-string v84, "XK"

    const-string v85, "YE"

    const-string v1, "AD"

    const-string v2, "AE"

    const-string v3, "AG"

    const-string v4, "AL"

    const-string v5, "AM"

    const-string v6, "AR"

    const-string v7, "AT"

    const-string v8, "AU"

    const-string v9, "AZ"

    const-string v10, "BA"

    const-string v11, "BE"

    const-string v12, "BG"

    const-string v13, "BH"

    const-string v14, "BY"

    const-string v15, "CA"

    const-string v16, "CH"

    const-string v17, "CK"

    const-string v18, "CU"

    const-string v19, "CY"

    const-string v20, "CZ"

    const-string v21, "DE"

    const-string v22, "DJ"

    const-string v23, "DK"

    const-string v24, "DZ"

    const-string v25, "EE"

    const-string v26, "EG"

    const-string v27, "ES"

    const-string v28, "FI"

    const-string v29, "FR"

    const-string v30, "GB"

    const-string v31, "GE"

    const-string v32, "GR"

    const-string v33, "HR"

    const-string v34, "HU"

    const-string v35, "IE"

    const-string v36, "IL"

    const-string v37, "IQ"

    const-string v38, "IR"

    const-string v39, "IS"

    const-string v40, "IT"

    const-string v41, "JO"

    const-string v42, "KG"

    const-string v43, "KW"

    const-string v44, "KZ"

    const-string v45, "LB"

    const-string v46, "LI"

    const-string v47, "LT"

    const-string v48, "LU"

    const-string v49, "LV"

    const-string v50, "LY"

    const-string v51, "MA"

    const-string v52, "MC"

    const-string v53, "MD"

    const-string v54, "ME"

    const-string v55, "MK"

    const-string v56, "MT"

    const-string v57, "NL"

    const-string v58, "NO"

    const-string v59, "NZ"

    const-string v60, "OM"

    const-string v61, "PL"

    const-string v62, "PR"

    const-string v63, "PS"

    const-string v64, "PT"

    const-string v65, "QA"

    const-string v66, "RO"

    const-string v67, "RS"

    const-string v68, "RU"

    const-string v69, "SA"

    const-string v70, "SE"

    const-string v71, "SI"

    const-string v72, "SK"

    const-string v73, "SM"

    const-string v74, "SY"

    const-string v75, "TJ"

    const-string v76, "TM"

    const-string v77, "TN"

    const-string v78, "TR"

    const-string v79, "UA"

    const-string v80, "US"

    const-string v81, "UY"

    const-string v82, "UZ"

    const-string v83, "VA"

    filled-new-array/range {v1 .. v85}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->EE1:Ljava/util/List;

    .line 417
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->parseAreaCode()I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/AreaUtil;->AREA_CODE:I

    .line 418
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->parseIcoAreaCode()I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/AreaUtil;->ICON_AREA_CODE:I

    .line 420
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->parseRegionCode()I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/AreaUtil;->REGION_CODE:I

    return-void
.end method

.method public static isUseDXOArea()Z
    .registers 2

    .line 490
    sget-object v0, Lcom/transsion/camera/utils/AreaUtil;->DXO_AREA:Ljava/util/List;

    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->COUNTRY_CODE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUseSouthAsiaIcoArea()Z
    .registers 2

    .line 423
    sget-object v0, Lcom/transsion/camera/utils/AreaUtil;->USER_SOUTH_ASIA_ICO_AREA:Ljava/util/List;

    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->COUNTRY_CODE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static parseAreaCode()I
    .registers 3

    .line 452
    sget-object v0, Lcom/transsion/camera/utils/AreaUtil;->COUNTRY_CODE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 455
    :cond_a
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->SOUTH_ASIA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    return v0

    .line 457
    :cond_14
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->AFRICA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x2

    return v0

    .line 459
    :cond_1e
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->MIDDLE_EAST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v0, 0x4

    return v0

    .line 461
    :cond_28
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->SOUTHEAST_ASIA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v0, 0x5

    return v0

    .line 463
    :cond_32
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->EASTERN_EUROPE:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v0, 0x6

    return v0

    .line 466
    :cond_3c
    const-string v1, "area_full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x3

    return v0

    :cond_46
    return v2
.end method

.method private static parseIcoAreaCode()I
    .registers 3

    .line 430
    sget-object v0, Lcom/transsion/camera/utils/AreaUtil;->COUNTRY_CODE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 433
    :cond_a
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->USER_SOUTH_ASIA_ICO_AREA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v0, 0x3e9

    return v0

    .line 435
    :cond_15
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->AFRICA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x2

    return v0

    .line 437
    :cond_1f
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->MIDDLE_EAST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v0, 0x4

    return v0

    .line 439
    :cond_29
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->SOUTHEAST_ASIA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v0, 0x5

    return v0

    .line 441
    :cond_33
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->EASTERN_EUROPE:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v0, 0x6

    return v0

    .line 444
    :cond_3d
    const-string v1, "area_full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x3

    return v0

    :cond_47
    return v2
.end method

.method private static parseRegionCode()I
    .registers 3

    .line 474
    sget-object v0, Lcom/transsion/camera/utils/AreaUtil;->COUNTRY_CODE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 477
    :cond_a
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->SSA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    return v0

    .line 479
    :cond_14
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->SOUTH_SOUTHEAST_ASIA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x2

    return v0

    .line 481
    :cond_1e
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->EE1:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x3

    return v0

    :cond_28
    return v2
.end method
