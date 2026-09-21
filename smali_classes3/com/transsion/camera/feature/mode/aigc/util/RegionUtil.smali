.class public Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AFRICA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COUNTRY_CODE:Ljava/lang/String;

.field public static final CURRENT_REGION:I

.field private static final MIDDLE_EAST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REGION_AFRICA:I = 0x5

.field public static final REGION_MIDDLE_EAST:I = 0x2

.field public static final REGION_PUBLIC:I = 0x1

.field public static final REGION_SOUTHEAST_ASIA:I = 0x3

.field public static final REGION_SOUTH_ASIA:I = 0x4

.field private static final SOUTHEAST_ASIA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOUTH_ASIA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 62

    .line 23
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mOobeCountryCode:Ljava/lang/String;

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->COUNTRY_CODE:Ljava/lang/String;

    .line 25
    const-string v60, "VC"

    const-string v61, "AG"

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

    const-string v49, "DJ"

    const-string v50, "SC"

    const-string v51, "JM"

    const-string v52, "BO"

    const-string v53, "HT"

    const-string v54, "BS"

    const-string v55, "DM"

    const-string v56, "GD"

    const-string v57, "DO"

    const-string v58, "LC"

    const-string v59, "KN"

    filled-new-array/range {v1 .. v61}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->AFRICA:Ljava/util/List;

    .line 94
    const-string v6, "NP"

    const-string v7, "MV"

    const-string v1, "IN"

    const-string v2, "BD"

    const-string v3, "PK"

    const-string v4, "LK"

    const-string v5, "BT"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->SOUTH_ASIA:Ljava/util/List;

    .line 105
    const-string v10, "BN"

    const-string v11, "TL"

    const-string v1, "ID"

    const-string v2, "PH"

    const-string v3, "MY"

    const-string v4, "TH"

    const-string v5, "VN"

    const-string v6, "LA"

    const-string v7, "KH"

    const-string v8, "SG"

    const-string v9, "MM"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->SOUTHEAST_ASIA:Ljava/util/List;

    .line 120
    const-string v19, "YE"

    const-string v20, "TR"

    const-string v1, "EG"

    const-string v2, "MA"

    const-string v3, "LY"

    const-string v4, "TN"

    const-string v5, "DZ"

    const-string v6, "AE"

    const-string v7, "LB"

    const-string v8, "JO"

    const-string v9, "SA"

    const-string v10, "IL"

    const-string v11, "BH"

    const-string v12, "IQ"

    const-string v13, "IR"

    const-string v14, "KW"

    const-string v15, "QA"

    const-string v16, "PS"

    const-string v17, "OM"

    const-string v18, "SY"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->MIDDLE_EAST:Ljava/util/List;

    .line 153
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->parseRegionCode()I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->CURRENT_REGION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseRegionCode()I
    .registers 3

    .line 156
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->COUNTRY_CODE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    return v2

    .line 159
    :cond_a
    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->AFRICA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x5

    return v0

    .line 161
    :cond_14
    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->SOUTH_ASIA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x4

    return v0

    .line 163
    :cond_1e
    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->SOUTHEAST_ASIA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v0, 0x3

    return v0

    .line 165
    :cond_28
    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->MIDDLE_EAST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x2

    return v0

    :cond_32
    return v2
.end method
