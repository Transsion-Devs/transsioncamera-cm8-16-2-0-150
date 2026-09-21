.class public Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static AREA_A_DARK_AREA:[Ljava/lang/String; = null

.field public static AREA_B_BROWN_AREA:[Ljava/lang/String; = null

.field public static AREA_C_LIGHT_AREA:[Ljava/lang/String; = null

.field public static DEFAULT_FUNCTIONS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation
.end field

.field public static DEFAULT_MODES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation
.end field

.field public static DEFAULT_SALE_MODES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final DETAIL_GUIDE_FRAGMENT_STACK_ID:Ljava/lang/String; = "detail_guide_fragment"

.field public static final DETAIL_GUIDE_ITEM_TYPE_HORIZONTAL:I = 0x3

.field public static final DETAIL_GUIDE_ITEM_TYPE_IMAGE:I = 0x0

.field public static final DETAIL_GUIDE_ITEM_TYPE_VERTICAL:I = 0x4

.field public static final DETAIL_GUIDE_ITEM_TYPE_VIDEO:I = 0x1

.field public static final FUNCTION_SPAN_COUNT:I = 0x6

.field public static final IMAGERY_GUIDE_AREA:Ljava/lang/String; = "area"

.field public static final IMAGERY_GUIDE_BROWN:Ljava/lang/String; = "brown"

.field public static final IMAGERY_GUIDE_CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.transsion.camera"

.field public static final IMAGERY_GUIDE_DARK:Ljava/lang/String; = "dark"

.field public static IMAGERY_GUIDE_FILE_ROOT:Ljava/lang/String; = null

.field public static final IMAGERY_GUIDE_FRAGMENT_STACK_ID:Ljava/lang/String; = "imagery_guide_fragment"

.field public static final IMAGERY_GUIDE_LIGHT:Ljava/lang/String; = "light"

.field public static final IMAGERY_GUIDE_REMOTE_URL:Ljava/lang/String; = "https://client.cameratechplatform.com/camera/api/v2/usermanual/get"

.field public static final IMAGERY_GUIDE_TEST_REMOTE_URL:Ljava/lang/String; = "https://test-api-camera.shalltry.com/camera/api/v2/usermanual/get"

.field public static final IMAGERY_GUIDE_TYPE_FUNCTION:I = 0x3

.field public static final IMAGERY_GUIDE_TYPE_MODE:I = 0x2

.field public static final IMAGERY_GUIDE_TYPE_SALE:I = 0x1

.field public static final MODE_ENTRY_MODENAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_SPAN_COUNT:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .registers 86

    .line 43
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

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->AREA_A_DARK_AREA:[Ljava/lang/String;

    .line 49
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

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->AREA_B_BROWN_AREA:[Ljava/lang/String;

    .line 54
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

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->AREA_C_LIGHT_AREA:[Ljava/lang/String;

    .line 78
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_asd_mode_title:I

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v1, v0}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_pmaster_mode_title:I

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_motion_capture_mode_title:I

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-static {v3, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_aigc_mode_title:I

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_super_night_mode_title:I

    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_street_photo_mode_title:I

    .line 84
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-static {v6, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_long_exposure_mode_title:I

    .line 85
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    invoke-static {v7, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    sget v7, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_sky_shop_mode_title:I

    .line 86
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {v8, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_professional_mode_title:I

    .line 87
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {v9, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v8

    sget v9, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_burst_pmk_mode_title:I

    .line 88
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    invoke-static {v10, v9}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v9

    sget v10, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_super_macro_mode_title:I

    .line 89
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-static {v11, v10}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v10

    sget v11, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_document_mode_title:I

    .line 90
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {v12, v11}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v11

    sget v12, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_video_mode_title:I

    .line 91
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v13, v12}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v12

    sget v13, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_vlog_mode_title:I

    .line 92
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {v14, v13}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v13

    sget v14, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_dual_video_mode_title:I

    .line 93
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {v15, v14}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    sget v15, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_time_laps_mode_title:I

    .line 94
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v0

    const-string v0, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v0, v15}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    sget v15, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_slow_motion_mode_title:I

    .line 95
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v17, v0

    const-string v0, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-static {v0, v15}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    sget v15, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_ai_art_museum_mode_title:I

    .line 96
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v18, v0

    const-string v0, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-static {v0, v15}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    const/16 v15, 0x12

    new-array v15, v15, [Ljava/util/Map$Entry;

    const/16 v19, 0x0

    aput-object v16, v15, v19

    const/16 v16, 0x1

    aput-object v1, v15, v16

    const/4 v1, 0x2

    aput-object v2, v15, v1

    const/4 v1, 0x3

    aput-object v3, v15, v1

    const/4 v1, 0x4

    aput-object v4, v15, v1

    const/4 v1, 0x5

    aput-object v5, v15, v1

    const/4 v1, 0x6

    aput-object v6, v15, v1

    const/4 v1, 0x7

    aput-object v7, v15, v1

    const/16 v1, 0x8

    aput-object v8, v15, v1

    const/16 v1, 0x9

    aput-object v9, v15, v1

    const/16 v1, 0xa

    aput-object v10, v15, v1

    const/16 v1, 0xb

    aput-object v11, v15, v1

    const/16 v1, 0xc

    aput-object v12, v15, v1

    const/16 v1, 0xd

    aput-object v13, v15, v1

    const/16 v1, 0xe

    aput-object v14, v15, v1

    const/16 v1, 0xf

    aput-object v17, v15, v1

    const/16 v1, 0x10

    aput-object v18, v15, v1

    const/16 v1, 0x11

    aput-object v0, v15, v1

    .line 78
    invoke-static {v15}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->MODE_ENTRY_MODENAME_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultFunction(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation

    .line 128
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$array;->imagery_guide_default_function:I

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->parasDefaultFunction(ILandroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultMode(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation

    .line 124
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$array;->imagery_guide_default_mode:I

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->parasDefaultModes(ILandroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultSaleMode(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/transsion/camera/utils/AreaUtil;->COUNTRY_CODE:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 110
    :cond_a
    const-string v0, "NG"

    .line 113
    :cond_c
    sget v1, Lcom/transsion/camera/feature/imageryguide/R$array;->imagery_guide_default_sale_mode_light:I

    .line 114
    sget-object v2, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->AREA_A_DARK_AREA:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 115
    sget v1, Lcom/transsion/camera/feature/imageryguide/R$array;->imagery_guide_default_sale_mode_dark:I

    goto :goto_23

    .line 116
    :cond_19
    sget-object v2, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->AREA_B_BROWN_AREA:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 117
    sget v1, Lcom/transsion/camera/feature/imageryguide/R$array;->imagery_guide_default_sale_mode_brown:I

    .line 120
    :cond_23
    :goto_23
    invoke-static {v1, p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->parasDefaultModes(ILandroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getDetailPath()Ljava/lang/String;
    .registers 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->IMAGERY_GUIDE_FILE_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "detail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFunctionPath()Ljava/lang/String;
    .registers 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->IMAGERY_GUIDE_FILE_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "function"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModePath()Ljava/lang/String;
    .registers 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->IMAGERY_GUIDE_FILE_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSaleModePath()Ljava/lang/String;
    .registers 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->IMAGERY_GUIDE_FILE_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ImageryGuide"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->IMAGERY_GUIDE_FILE_ROOT:Ljava/lang/String;

    .line 102
    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getDefaultSaleMode(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->DEFAULT_SALE_MODES:Ljava/util/List;

    .line 103
    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getDefaultMode(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->DEFAULT_MODES:Ljava/util/List;

    .line 104
    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getDefaultFunction(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->DEFAULT_FUNCTIONS:Ljava/util/List;

    return-void
.end method

.method public static parasDefaultFunction(ILandroid/content/Context;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 163
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    .line 164
    :goto_f
    array-length v4, p0

    if-ge v3, v4, :cond_50

    .line 165
    aget-object v4, p0, v3

    const-string v5, "array"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4d

    .line 167
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 169
    aget-object v5, v4, v2

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 169
    const-string v7, "string"

    invoke-virtual {v1, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 174
    aget-object v6, v4, v2

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 174
    invoke-virtual {v1, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 179
    aget-object v4, v4, v7

    .line 181
    new-instance v7, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-direct {v7, v5, v6, v4}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_50
    return-object v0
.end method

.method public static parasDefaultModes(ILandroid/content/Context;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 135
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    .line 136
    :goto_f
    array-length v4, p0

    if-ge v3, v4, :cond_4f

    .line 137
    aget-object v4, p0, v3

    const-string v5, "array"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4c

    .line 139
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 141
    aget-object v5, v4, v2

    const-string v6, "string"

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-virtual {v1, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 146
    aget-object v6, v4, v6

    const-string v7, "drawable"

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-virtual {v1, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    .line 151
    aget-object v4, v4, v7

    .line 153
    new-instance v7, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-direct {v7, v5, v6, v4}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_4f
    return-object v0
.end method
