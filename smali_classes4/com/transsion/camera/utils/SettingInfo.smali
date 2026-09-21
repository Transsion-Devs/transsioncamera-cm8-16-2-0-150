.class public abstract Lcom/transsion/camera/utils/SettingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;,
        Lcom/transsion/camera/utils/SettingInfo$Pattern;,
        Lcom/transsion/camera/utils/SettingInfo$CameraFace;,
        Lcom/transsion/camera/utils/SettingInfo$Area;,
        Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;,
        Lcom/transsion/camera/utils/SettingInfo$Gender;
    }
.end annotation


# static fields
.field public static final AIRAW_SUPPORT_CAMERA_IDS:[I

.field public static final AI_FRAME_MAX_ZOOM:I

.field public static AREA_A_DARK:[Ljava/lang/String;

.field public static AREA_A_DARK_SELLING_POINT_GUIDE:[Ljava/lang/String;

.field public static AREA_C_LIGHT:[Ljava/lang/String;

.field public static AREA_C_LIGHT_SELLING_POINT_GUIDE:[Ljava/lang/String;

.field public static AREA_GOLD_WATERMARK_SUPPORT:[Ljava/lang/String;

.field public static final BACK_VP_DEFAULT_VALUE:Ljava/util/HashMap;

.field public static final BACK_VP_LEVEL_GROUP:Ljava/util/HashMap;

.field public static final BLUR_LEVEL_DATA:[Ljava/lang/String;

.field public static final CAM_MODE_SUPPORT_VALUES:Ljava/util/List;

.field public static final EXPOSURE_ZERO:Ljava/lang/String;

.field public static final FRONT_VP_DEFAULT_VALUE:Ljava/util/HashMap;

.field public static final FRONT_VP_LEVEL_GROUP:Ljava/util/HashMap;

.field public static final ITDV2LIST:[Ljava/lang/String;

.field public static final LONG_EXPOSURE_PICTRACE_DATA:[Ljava/lang/String;

.field public static final LONG_EXPOSURE_STELLAR_DATA:[Ljava/lang/String;

.field public static final MACRO_ZOOM_SUPPORT_VALUE_RANGE_1:Ljava/lang/String;

.field public static final MACRO_ZOOM_SUPPORT_VALUE_RANGE_2:Ljava/lang/String;

.field public static final MAIN_LOWER_CROP_ZOOM_VALUE:I

.field public static final MAIN_THR_CROP_ZOOM_VALUE:I

.field public static final VALUE_SUPER_RESOLUTION_LIMIT_ZOOM:I

.field public static final VIDEO_PORTRAIT_DATA:[Ljava/lang/String;

.field public static final VIDEO_SPOT_DATA:[Ljava/lang/String;

.field public static final ZOOM_06X:I

.field public static final ZOOM_10X:I

.field public static final ZOOM_15X:I

.field public static final ZOOM_1X:I

.field public static final ZOOM_20X:I

.field public static final ZOOM_2X:I

.field public static final ZOOM_3X:I

.field public static final ZOOM_4X:I

.field public static final ZOOM_5X:I

.field public static final ZOOM_8X:I

.field public static final ZOOM_FRONT_INIT_VALUE:Ljava/lang/String;

.field public static final ZOOM_INIT_VALUE:Ljava/lang/String;

.field public static final ZOOM_MACRO_INIT_VALUE:Ljava/lang/String;

.field public static final ZOOM_RATIO_UNIT:I

.field public static final ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

.field public static final ZOOM_TELE_SECOND_INIT_VALUE:Ljava/lang/String;

.field public static final mFlashFacadeValues:Ljava/util/List;

.field public static final sVideoFaceBeautyFeatureKeys:[Ljava/lang/String;

.field public static final sVideoFaceBeautyKeyMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 87

    .line 37
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_b

    const-string v0, "6000"

    goto :goto_d

    :cond_b
    const-string v0, "60"

    :goto_d
    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_1a

    const-string v0, "10000"

    goto :goto_1c

    :cond_1a
    const-string v0, "100"

    :goto_1c
    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_29

    const-string v0, "12000"

    goto :goto_2b

    :cond_29
    const-string v0, "120"

    :goto_2b
    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_FRONT_INIT_VALUE:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_38

    const-string v0, "15000"

    goto :goto_3a

    :cond_38
    const-string v0, "150"

    :goto_3a
    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_MACRO_INIT_VALUE:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_47

    const-string v0, "20000"

    goto :goto_49

    :cond_47
    const-string v0, "200"

    :goto_49
    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_TELE_SECOND_INIT_VALUE:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_56

    const/16 v0, 0x2710

    goto :goto_58

    :cond_56
    const/16 v0, 0x64

    :goto_58
    sput v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    const-wide v1, 0x3fe3333333333333L    # 0.6

    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int v1, v3

    .line 45
    sput v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_06X:I

    .line 46
    sput v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    mul-int/lit8 v1, v0, 0x2

    .line 47
    sput v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_2X:I

    mul-int/lit8 v1, v0, 0x3

    .line 48
    sput v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_3X:I

    mul-int/lit8 v1, v0, 0x4

    .line 49
    sput v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_4X:I

    mul-int/lit8 v1, v0, 0x5

    .line 50
    sput v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_5X:I

    mul-int/lit8 v1, v0, 0x8

    .line 51
    sput v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_8X:I

    mul-int/lit8 v1, v0, 0xa

    .line 52
    sput v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    mul-int/lit8 v1, v0, 0xf

    .line 53
    sput v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_15X:I

    mul-int/lit8 v0, v0, 0x14

    .line 54
    sput v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_20X:I

    .line 71
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v1, :cond_91

    const/16 v1, 0x4e20

    goto :goto_93

    :cond_91
    const/16 v1, 0xc8

    :goto_93
    sput v1, Lcom/transsion/camera/utils/SettingInfo;->MAIN_LOWER_CROP_ZOOM_VALUE:I

    .line 72
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v1, :cond_a0

    const/16 v1, 0x7530

    goto :goto_a2

    :cond_a0
    const/16 v1, 0x12c

    :goto_a2
    sput v1, Lcom/transsion/camera/utils/SettingInfo;->MAIN_THR_CROP_ZOOM_VALUE:I

    .line 187
    const-string v1, "IN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->AREA_GOLD_WATERMARK_SUPPORT:[Ljava/lang/String;

    .line 615
    sget-object v1, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    invoke-virtual {v1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    .line 699
    const-string v15, "28s"

    const-string v16, "30s"

    const-string v2, "2s"

    const-string v3, "4s"

    const-string v4, "6s"

    const-string v5, "8s"

    const-string v6, "10s"

    const-string v7, "12s"

    const-string v8, "14s"

    const-string v9, "16s"

    const-string v10, "18s"

    const-string v11, "20s"

    const-string v12, "22s"

    const-string v13, "24s"

    const-string v14, "26s"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->LONG_EXPOSURE_PICTRACE_DATA:[Ljava/lang/String;

    .line 700
    const-string v1, "15min"

    const-string v2, "20min"

    const-string v3, "4min"

    const-string v4, "8min"

    const-string v5, "10min"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->LONG_EXPOSURE_STELLAR_DATA:[Ljava/lang/String;

    .line 798
    const-string v1, "five_senses"

    const-string v2, "muscle_care"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->ITDV2LIST:[Ljava/lang/String;

    .line 843
    const-string v1, "video_face"

    const-string v2, "video_whiten"

    const-string v3, "video_soften"

    const-string v4, "video_eye"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->sVideoFaceBeautyFeatureKeys:[Ljava/lang/String;

    .line 850
    new-instance v1, Lcom/transsion/camera/utils/SettingInfo$1;

    invoke-direct {v1}, Lcom/transsion/camera/utils/SettingInfo$1;-><init>()V

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->sVideoFaceBeautyKeyMap:Ljava/util/Map;

    .line 1022
    const-string v6, "ringscreenlight"

    const-string v7, "screenflash"

    const-string v2, "off"

    const-string v3, "on"

    const-string v4, "auto"

    const-string v5, "torch"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->mFlashFacadeValues:Ljava/util/List;

    .line 1352
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v1, :cond_128

    const/16 v1, 0x3a98

    goto :goto_12a

    :cond_128
    const/16 v1, 0x96

    :goto_12a
    sput v1, Lcom/transsion/camera/utils/SettingInfo;->VALUE_SUPER_RESOLUTION_LIMIT_ZOOM:I

    .line 1924
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSupportCameraIds:[I

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->AIRAW_SUPPORT_CAMERA_IDS:[I

    .line 1927
    const-string v39, "SL"

    const-string v40, "GW"

    const-string v2, "NG"

    const-string v3, "GH"

    const-string v4, "KE"

    const-string v5, "TZ"

    const-string v6, "SN"

    const-string v7, "CM"

    const-string v8, "UG"

    const-string v9, "ET"

    const-string v10, "ZM"

    const-string v11, "ML"

    const-string v12, "RW"

    const-string v13, "CD"

    const-string v14, "CG"

    const-string v15, "TD"

    const-string v16, "GA"

    const-string v17, "NE"

    const-string v18, "TG"

    const-string v19, "BJ"

    const-string v20, "BF"

    const-string v21, "SO"

    const-string v22, "AO"

    const-string v23, "CF"

    const-string v24, "NS"

    const-string v25, "MU"

    const-string v26, "GQ"

    const-string v27, "SD"

    const-string v28, "SS"

    const-string v29, "ZA"

    const-string v30, "MZ"

    const-string v31, "MR"

    const-string v32, "NA"

    const-string v33, "BW"

    const-string v34, "MG"

    const-string v35, "MW"

    const-string v36, "BI"

    const-string v37, "LR"

    const-string v38, "ZW"

    filled-new-array/range {v2 .. v40}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->AREA_A_DARK:[Ljava/lang/String;

    .line 1930
    const-string v12, "MY"

    const-string v13, "BN"

    const-string v2, "IN"

    const-string v3, "LK"

    const-string v4, "NP"

    const-string v5, "BT"

    const-string v6, "ID"

    const-string v7, "PH"

    const-string v8, "TH"

    const-string v9, "VN"

    const-string v10, "LA"

    const-string v11, "KH"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->AREA_C_LIGHT:[Ljava/lang/String;

    .line 1933
    const-string v65, "ZM"

    const-string v66, "ZW"

    const-string v2, "AO"

    const-string v3, "BB"

    const-string v4, "BF"

    const-string v5, "BI"

    const-string v6, "BJ"

    const-string v7, "BO"

    const-string v8, "BS"

    const-string v9, "BW"

    const-string v10, "CD"

    const-string v11, "CF"

    const-string v12, "CG"

    const-string v13, "CI"

    const-string v14, "CM"

    const-string v15, "DM"

    const-string v16, "DO"

    const-string v17, "ER"

    const-string v18, "ET"

    const-string v19, "FM"

    const-string v20, "GA"

    const-string v21, "GD"

    const-string v22, "GH"

    const-string v23, "GM"

    const-string v24, "GN"

    const-string v25, "GQ"

    const-string v26, "GW"

    const-string v27, "HT"

    const-string v28, "JM"

    const-string v29, "KE"

    const-string v30, "KI"

    const-string v31, "KM"

    const-string v32, "KN"

    const-string v33, "LC"

    const-string v34, "LR"

    const-string v35, "LS"

    const-string v36, "MG"

    const-string v37, "ML"

    const-string v38, "MR"

    const-string v39, "MU"

    const-string v40, "MW"

    const-string v41, "MZ"

    const-string v42, "NA"

    const-string v43, "NE"

    const-string v44, "NG"

    const-string v45, "NR"

    const-string v46, "NS"

    const-string v47, "PG"

    const-string v48, "RW"

    const-string v49, "SB"

    const-string v50, "SD"

    const-string v51, "SL"

    const-string v52, "SN"

    const-string v53, "SO"

    const-string v54, "SR"

    const-string v55, "SS"

    const-string v56, "ST"

    const-string v57, "SZ"

    const-string v58, "TD"

    const-string v59, "TG"

    const-string v60, "TZ"

    const-string v61, "UG"

    const-string v62, "VC"

    const-string v63, "VU"

    const-string v64, "ZA"

    filled-new-array/range {v2 .. v66}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->AREA_A_DARK_SELLING_POINT_GUIDE:[Ljava/lang/String;

    .line 1938
    const-string v85, "XK"

    const-string v86, "YE"

    const-string v2, "AD"

    const-string v3, "AE"

    const-string v4, "AG"

    const-string v5, "AL"

    const-string v6, "AM"

    const-string v7, "AR"

    const-string v8, "AT"

    const-string v9, "AU"

    const-string v10, "AZ"

    const-string v11, "BA"

    const-string v12, "BE"

    const-string v13, "BG"

    const-string v14, "BH"

    const-string v15, "BY"

    const-string v16, "CA"

    const-string v17, "CH"

    const-string v18, "CK"

    const-string v19, "CU"

    const-string v20, "CY"

    const-string v21, "CZ"

    const-string v22, "DE"

    const-string v23, "DJ"

    const-string v24, "DK"

    const-string v25, "DZ"

    const-string v26, "EE"

    const-string v27, "EG"

    const-string v28, "ES"

    const-string v29, "FI"

    const-string v30, "FR"

    const-string v31, "GB"

    const-string v32, "GE"

    const-string v33, "GR"

    const-string v34, "HR"

    const-string v35, "HU"

    const-string v36, "IE"

    const-string v37, "IL"

    const-string v38, "IQ"

    const-string v39, "IR"

    const-string v40, "IS"

    const-string v41, "IT"

    const-string v42, "JO"

    const-string v43, "KG"

    const-string v44, "KW"

    const-string v45, "KZ"

    const-string v46, "LB"

    const-string v47, "LI"

    const-string v48, "LT"

    const-string v49, "LU"

    const-string v50, "LV"

    const-string v51, "LY"

    const-string v52, "MA"

    const-string v53, "MC"

    const-string v54, "MD"

    const-string v55, "ME"

    const-string v56, "MK"

    const-string v57, "MT"

    const-string v58, "NL"

    const-string v59, "NO"

    const-string v60, "NZ"

    const-string v61, "OM"

    const-string v62, "PL"

    const-string v63, "PR"

    const-string v64, "PS"

    const-string v65, "PT"

    const-string v66, "QA"

    const-string v67, "RO"

    const-string v68, "RS"

    const-string v69, "RU"

    const-string v70, "SA"

    const-string v71, "SE"

    const-string v72, "SI"

    const-string v73, "SK"

    const-string v74, "SM"

    const-string v75, "SY"

    const-string v76, "TJ"

    const-string v77, "TM"

    const-string v78, "TN"

    const-string v79, "TR"

    const-string v80, "UA"

    const-string v81, "US"

    const-string v82, "UY"

    const-string v83, "UZ"

    const-string v84, "VA"

    filled-new-array/range {v2 .. v86}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->AREA_C_LIGHT_SELLING_POINT_GUIDE:[Ljava/lang/String;

    .line 2262
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v1, :cond_2e9

    const-string v1, "15000,25000"

    goto :goto_2eb

    :cond_2e9
    const-string v1, "150,250"

    :goto_2eb
    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->MACRO_ZOOM_SUPPORT_VALUE_RANGE_1:Ljava/lang/String;

    .line 2263
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v1, :cond_2f8

    const-string v1, "10000,20000"

    goto :goto_2fa

    :cond_2f8
    const-string v1, "100,200"

    :goto_2fa
    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->MACRO_ZOOM_SUPPORT_VALUE_RANGE_2:Ljava/lang/String;

    .line 2496
    new-instance v1, Lcom/transsion/camera/utils/SettingInfo$2;

    invoke-direct {v1}, Lcom/transsion/camera/utils/SettingInfo$2;-><init>()V

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->BACK_VP_DEFAULT_VALUE:Ljava/util/HashMap;

    .line 2504
    new-instance v1, Lcom/transsion/camera/utils/SettingInfo$3;

    invoke-direct {v1}, Lcom/transsion/camera/utils/SettingInfo$3;-><init>()V

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->FRONT_VP_DEFAULT_VALUE:Ljava/util/HashMap;

    .line 2511
    new-instance v1, Lcom/transsion/camera/utils/SettingInfo$4;

    invoke-direct {v1}, Lcom/transsion/camera/utils/SettingInfo$4;-><init>()V

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->BACK_VP_LEVEL_GROUP:Ljava/util/HashMap;

    .line 2519
    new-instance v1, Lcom/transsion/camera/utils/SettingInfo$5;

    invoke-direct {v1}, Lcom/transsion/camera/utils/SettingInfo$5;-><init>()V

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->FRONT_VP_LEVEL_GROUP:Ljava/util/HashMap;

    .line 2779
    new-instance v1, Lcom/transsion/camera/utils/SettingInfo$6;

    invoke-direct {v1}, Lcom/transsion/camera/utils/SettingInfo$6;-><init>()V

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->CAM_MODE_SUPPORT_VALUES:Ljava/util/List;

    .line 2938
    const-string v9, "f11"

    const-string v10, "f16"

    const-string v2, "f1.0"

    const-string v3, "f1.4"

    const-string v4, "f2.0"

    const-string v5, "f2.8"

    const-string v6, "f4.0"

    const-string v7, "f5.6"

    const-string v8, "f8.0"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    .line 2939
    const-string v9, "20"

    const-string v10, "10"

    const-string v2, "90"

    const-string v3, "80"

    const-string v4, "70"

    const-string v5, "60"

    const-string v6, "50"

    const-string v7, "40"

    const-string v8, "30"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->VIDEO_PORTRAIT_DATA:[Ljava/lang/String;

    .line 2940
    const-string v9, "20"

    const-string v10, "10"

    const-string v2, "90"

    const-string v3, "80"

    const-string v4, "70"

    const-string v5, "60"

    const-string v6, "50"

    const-string v7, "40"

    const-string v8, "30"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/utils/SettingInfo;->VIDEO_SPOT_DATA:[Ljava/lang/String;

    .line 3083
    sput v0, Lcom/transsion/camera/utils/SettingInfo;->AI_FRAME_MAX_ZOOM:I

    return-void
.end method
