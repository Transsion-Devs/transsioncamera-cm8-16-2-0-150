.class public Lcom/transsion/camera/feature/setting/zoom/Zoom;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"


# static fields
.field private static final FOCAL_LENGTH_23MM:I = 0x17

.field private static final FOCAL_LENGTH_24MM:I = 0x18

.field private static final FOCAL_LENGTH_28MM:I = 0x1c

.field private static final FOCAL_LENGTH_35MM:I = 0x23

.field private static final FOCAL_LENGTH_50MM:I = 0x32

.field private static final FOCAL_LENGTH_70MM:I = 0x46

.field static final INIT_FRONT_VALUE:Ljava/lang/String;

.field static final INIT_SAT_VALUE:Ljava/lang/String;

.field static final INIT_VALUE:Ljava/lang/String;

.field private static final INVALID_VALUE:Ljava/lang/String; = "0"

.field private static final LIMITED_MAX_VALUE_ENLARGED:I

.field private static final LIMITED_MAX_VALUE_ENLARGED_20X:I

.field private static final LIMIT_MAX_VALUE_ENLARGED:I

.field private static final LIMIT_MAX_VALUE_IN_AIGC:I

.field private static final LIMIT_MAX_VALUE_IN_AI_ART_MUSEUM:I

.field private static final LIMIT_MAX_VALUE_IN_INTENT_PHOTO_MODE:I

.field private static final LIMIT_MAX_VALUE_IN_VIDEO_MAIN_ENLARGED:I

.field private static final LIMIT_VALUE_30X_FOR_TELE:I

.field private static final LIMIT_VALUE_30X_IN_PRO_FOR_TELE:I

.field private static final LIMIT_VALUE_60X_FOR_TELE:I

.field private static final LIMIT_VALUE_60X_IN_PRO_FOR_TELE:I

.field private static final LIMIT_VALUE_FOR_THIRD_ALGO:I

.field private static final LIMIT_VALUE_FOR_VIDEO:I

.field private static final LIMIT_VALUE_IN_SLOW_MOTION_FOR_MAIN:I

.field private static final LIMIT_VALUE_IN_SLOW_MOTION_FOR_TELE:I

.field private static final LIMIT_VALUE_IN_THIRD_ALGO_FOR_SAT:I

.field private static final LIMIT_VALUE_IN_VIDEO_FOR_SAT:I

.field public static final MODE_ENTRY_KEY:Ljava/lang/String; = "mode_entry_key"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected static mWideRangeConverterProgressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static mWideRangeConverterValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAIArtMuseumMode:Z

.field private mAIGCMode:Z

.field private mBaseFocalLength:F

.field private mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field private mCurrentFeature:[Ljava/lang/String;

.field private mCurrentMode:Ljava/lang/String;

.field private mCurrentModeKey:Ljava/lang/String;

.field public mCurrentZoomUIState:Z

.field private mCustomizedTeleValue:I

.field private mDocumentMode:Z

.field private mFocalLength:[I

.field private mFocalLengthSupport:Z

.field private mForceApplyValue:Ljava/lang/String;

.field private mFovCropValue:Ljava/lang/String;

.field private mFunVideoMode:Z

.field private mIsAsdMode:Z

.field private mIsDualVideoMode:Z

.field private mIsFrontWideCameraWhenOpened:Z

.field private mIsHighDefinitionMode:Z

.field private mIsInNormal:Z

.field private mIsInTele:Z

.field private mIsInWide:Z

.field private mIsIntentPhotoMode:Z

.field private mIsIntentVideoMode:Z

.field private mIsLiteFaceBeautyMode:Z

.field private mIsMacroMode:Z

.field private mIsMaxValueLimited:Z

.field private mIsModeChanged:Z

.field private mIsMotionCaptureMode:Z

.field private mIsMovieMode:Z

.field private mIsPMasterMode:Z

.field private mIsPause:Z

.field private mIsProMode:Z

.field private mIsSATCameraWhenOpened:Z

.field private mIsSlowMotionMode:Z

.field private mIsStreetPhotoMode:Z

.field private mIsTeleCameraWhenOpened:Z

.field private mIsVideoMode:Z

.field private mIsVlogMode:Z

.field private mIsWideCameraWhenOpened:Z

.field private mIsZooming:Z

.field private mLongFocusRatio:F

.field private mMacroZoomCustomized:Z

.field private mNeedRodeBySaveValue:Z

.field private mNeedSaveZoomValue:Z

.field private mParametersConfig:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

.field private mPortrait:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mRealZoomValue:I

.field private mSatReplaceWide:Z

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSlowMotionZoomLimited:Z

.field private mSmoothZoomValue:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSuperNightMode:Z

.field private mSupportSuperAntiVideoV2:Z

.field private mTimeLapseVideoMode:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsAsdMode(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsZooming(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsZooming:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSatReplaceWide(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSatReplaceWide:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsZooming(Lcom/transsion/camera/feature/setting/zoom/Zoom;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsZooming:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedRodeBySaveValue(Lcom/transsion/camera/feature/setting/zoom/Zoom;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedRodeBySaveValue:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedSaveZoomValue(Lcom/transsion/camera/feature/setting/zoom/Zoom;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedSaveZoomValue:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSmoothZoomValue(Lcom/transsion/camera/feature/setting/zoom/Zoom;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSmoothZoomValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msetZoomByItemClick(Lcom/transsion/camera/feature/setting/zoom/Zoom;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->setZoomByItemClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 9

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Zoom"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 62
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    sput-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_FRONT_INIT_VALUE:Ljava/lang/String;

    sput-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_FRONT_VALUE:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    sput-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_SAT_VALUE:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const/16 v1, 0x3e8

    const v2, 0x186a0

    if-eqz v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    .line 68
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_31

    move v0, v2

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_IN_VIDEO_MAIN_ENLARGED:I

    .line 69
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const/16 v3, 0x5dc

    const v4, 0x249f0

    if-eqz v0, :cond_43

    move v0, v4

    goto :goto_44

    :cond_43
    move v0, v3

    :goto_44
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_IN_INTENT_PHOTO_MODE:I

    .line 70
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_52

    const v0, 0xea60

    goto :goto_54

    :cond_52
    const/16 v0, 0x258

    :goto_54
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_IN_SLOW_MOTION_FOR_TELE:I

    .line 71
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_61

    const/16 v0, 0x7530

    goto :goto_63

    :cond_61
    const/16 v0, 0x12c

    :goto_63
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_IN_SLOW_MOTION_FOR_MAIN:I

    .line 72
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_6f

    move v0, v4

    goto :goto_70

    :cond_6f
    move v0, v3

    :goto_70
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_FOR_VIDEO:I

    .line 73
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_7c

    move v0, v2

    goto :goto_7d

    :cond_7c
    move v0, v1

    :goto_7d
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_FOR_THIRD_ALGO:I

    .line 74
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_89

    move v0, v2

    goto :goto_8a

    :cond_89
    move v0, v1

    :goto_8a
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_IN_THIRD_ALGO_FOR_SAT:I

    .line 75
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_96

    move v0, v4

    goto :goto_97

    :cond_96
    move v0, v3

    :goto_97
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_IN_VIDEO_FOR_SAT:I

    .line 76
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const/16 v5, 0xbb8

    const v6, 0x493e0

    if-eqz v0, :cond_a8

    move v0, v6

    goto :goto_a9

    :cond_a8
    move v0, v5

    :goto_a9
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_30X_IN_PRO_FOR_TELE:I

    .line 77
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const/16 v7, 0x1770

    const v8, 0x927c0

    if-eqz v0, :cond_ba

    move v0, v8

    goto :goto_bb

    :cond_ba
    move v0, v7

    :goto_bb
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_60X_IN_PRO_FOR_TELE:I

    .line 78
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_c6

    move v1, v2

    :cond_c6
    sput v1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_IN_AIGC:I

    .line 79
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_d4

    const v0, 0xc350

    goto :goto_d6

    :cond_d4
    const/16 v0, 0x1f4

    :goto_d6
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_IN_AI_ART_MUSEUM:I

    .line 80
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_e1

    move v7, v8

    :cond_e1
    sput v7, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_60X_FOR_TELE:I

    .line 81
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_ec

    move v5, v6

    :cond_ec
    sput v5, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_30X_FOR_TELE:I

    .line 82
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_f7

    move v3, v4

    :cond_f7
    sput v3, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMITED_MAX_VALUE_ENLARGED:I

    .line 83
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_105

    const v0, 0x30d40

    goto :goto_107

    :cond_105
    const/16 v0, 0x7d0

    :goto_107
    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMITED_MAX_VALUE_ENLARGED_20X:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMaxValueLimited:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    .line 97
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsIntentVideoMode:Z

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsIntentPhotoMode:Z

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTimeLapseVideoMode:Z

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mDocumentMode:Z

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSuperNightMode:Z

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFunVideoMode:Z

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mAIGCMode:Z

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mAIArtMuseumMode:Z

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSlowMotionMode:Z

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsDualVideoMode:Z

    .line 108
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMovieMode:Z

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVlogMode:Z

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPMasterMode:Z

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsStreetPhotoMode:Z

    .line 112
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMacroMode:Z

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsProMode:Z

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMotionCaptureMode:Z

    .line 116
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsLiteFaceBeautyMode:Z

    .line 117
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsHighDefinitionMode:Z

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mPortrait:Z

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentMode:Ljava/lang/String;

    .line 123
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSatReplaceWide:Z

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedSaveZoomValue:Z

    .line 127
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedRodeBySaveValue:Z

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPause:Z

    .line 129
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mMacroZoomCustomized:Z

    .line 132
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSlowMotionZoomLimited:Z

    .line 138
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFocalLengthSupport:Z

    .line 139
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSupportSuperAntiVideoV2:Z

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInWide:Z

    .line 142
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInNormal:Z

    .line 143
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInTele:Z

    .line 146
    const-string v1, "0"

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    .line 147
    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSmoothZoomValue:I

    .line 148
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsZooming:Z

    .line 150
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 190
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private convertZoomToFocal(I)I
    .registers 3

    .line 1076
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_15

    int-to-float p1, p1

    .line 1077
    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mBaseFocalLength:F

    mul-float/2addr p1, p0

    const p0, 0x461c4000    # 10000.0f

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_15
    int-to-float p1, p1

    .line 1079
    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mBaseFocalLength:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private currentIsBaseCamera()Z
    .registers 2

    .line 666
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private currentIsFrontCamera()Z
    .registers 2

    .line 687
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private currentIsFrontWideCamera()Z
    .registers 2

    .line 682
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 683
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private currentIsSatPeriscopeCamera()Z
    .registers 2

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    .line 657
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->getStreamId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 659
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private currentIsTeleCamera()Z
    .registers 4

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getPreIspTeleFakeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_18

    .line 677
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_18
    if-eqz v1, :cond_26

    .line 678
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_26

    :cond_24
    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private currentIsWideCamera()Z
    .registers 2

    .line 670
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 671
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private getMacroFocalLength(I)I
    .registers 4

    .line 1083
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    add-int/lit16 p1, p1, -0x1388

    .line 1086
    :cond_e
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->convertZoomToFocal(I)I

    move-result p0

    return p0
.end method

.method private getNearestFocalLength(I)I
    .registers 7

    .line 1090
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->convertZoomToFocal(I)I

    move-result v0

    .line 1091
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFocalLength:[I

    array-length v1, v1

    .line 1092
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->convertZoomToFocal(I)I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_1a

    .line 1094
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFocalLength:[I

    aget v4, v4, v3

    if-gt p1, v4, :cond_17

    move v0, v4

    goto :goto_1a

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1100
    :cond_1a
    :goto_1a
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFocalLength:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_27

    .line 1101
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFocalLength:[I

    aget p0, p0, v2

    return p0

    :cond_27
    return v0
.end method

.method private macroZoomCustomized()Z
    .registers 2

    .line 390
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mMacroZoomCustomized:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsTeleCamera()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private postRestrictionAfterValueChange()V
    .registers 9

    .line 506
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSupportSuperAntiVideoV2:Z

    if-nez v0, :cond_6

    goto/16 :goto_91

    .line 509
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsTeleCamera()Z

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x1

    const-string v3, "null"

    const-string v4, "key_super_anti_video"

    const-string v5, "off"

    const/4 v6, 0x0

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    if-lt v0, v1, :cond_3e

    :cond_1a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInTele:Z

    if-nez v0, :cond_3e

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "value_zoom_tele"

    .line 511
    invoke-virtual {v1, v4, v5, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 510
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 512
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInTele:Z

    .line 513
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInWide:Z

    .line 514
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInNormal:Z

    return-void

    .line 515
    :cond_3e
    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    const/16 v7, 0x64

    if-lt v0, v7, :cond_6a

    if-ge v0, v1, :cond_6a

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInNormal:Z

    if-nez v1, :cond_6a

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "value_zoom_normal"

    .line 517
    invoke-virtual {v1, v4, v5, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 516
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 518
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInTele:Z

    .line 519
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInWide:Z

    .line 520
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInNormal:Z

    return-void

    :cond_6a
    if-ge v0, v7, :cond_91

    if-ltz v0, :cond_91

    .line 521
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInWide:Z

    if-nez v0, :cond_91

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "value_zoom_wide"

    .line 523
    invoke-virtual {v1, v4, v5, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 522
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 524
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInTele:Z

    .line 525
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInWide:Z

    .line 526
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsInNormal:Z

    :cond_91
    :goto_91
    return-void
.end method

.method private setZoomByItemClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1003
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsFrontCamera()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_39

    .line 1007
    :cond_7
    const-string v0, "front_crop_fov"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "on"

    .line 1008
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1009
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFovCropValue:Ljava/lang/String;

    goto :goto_2f

    .line 1010
    :cond_1a
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const-string/jumbo p1, "value_wide_camera_item_single_cam_seleccted"

    .line 1011
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 1012
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    if-eqz p1, :cond_39

    .line 1015
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->setValue(Ljava/lang/String;)V

    .line 1016
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_39
    :goto_39
    return-void
.end method

.method private updateModeParameter()V
    .registers 3

    .line 1028
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentFeature:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMaxValueLimited:Z

    .line 1029
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsWideCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    .line 1030
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsFrontWideCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    .line 1031
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsTeleCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    .line 1032
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentSatCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    .line 1034
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    .line 1035
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTimeLapseVideoMode:Z

    .line 1036
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFunVideoMode:Z

    .line 1037
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mAIGCMode:Z

    .line 1038
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mAIArtMuseumMode:Z

    .line 1039
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSlowMotionMode:Z

    .line 1040
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMovieMode:Z

    .line 1041
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVlogMode:Z

    .line 1042
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsDualVideoMode:Z

    .line 1043
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mDocumentMode:Z

    .line 1044
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPMasterMode:Z

    .line 1045
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsStreetPhotoMode:Z

    .line 1046
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    .line 1047
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMacroMode:Z

    .line 1048
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 1049
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c5

    goto :goto_c7

    :cond_c5
    const/4 v0, 0x0

    goto :goto_c8

    :cond_c7
    :goto_c7
    const/4 v0, 0x1

    :goto_c8
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSuperNightMode:Z

    .line 1050
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsProMode:Z

    .line 1051
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMotionCaptureMode:Z

    .line 1052
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsIntentVideoMode:Z

    .line 1053
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsIntentPhotoMode:Z

    .line 1054
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.litefacebeauty.LiteFaceBeautyModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsLiteFaceBeautyMode:Z

    .line 1055
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsHighDefinitionMode:Z

    .line 1056
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mPortrait:Z

    return-void
.end method


# virtual methods
.method public currentSatCamera()Z
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 652
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public focalLengthSupport()Z
    .registers 4

    .line 1068
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 1069
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFocalLengthSupport:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPMasterMode:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_16
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsStreetPhotoMode:Z

    if-nez v0, :cond_20

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMacroMode:Z

    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    return v2

    :cond_20
    :goto_20
    return v1

    .line 1072
    :cond_21
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFocalLengthSupport:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPMasterMode:Z

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_2f
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsStreetPhotoMode:Z

    if-eqz p0, :cond_34

    :cond_33
    return v1

    :cond_34
    return v2
.end method

.method public forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 548
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    return-void
.end method

.method public forceUpdateValue(Ljava/lang/String;)V
    .registers 6

    .line 536
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->setValue(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_18

    .line 539
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 541
    :cond_18
    const-string p0, "160"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 542
    sget-object p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[forceUpdateValue] 160 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public getCurrentMode()Ljava/lang/String;
    .registers 1

    .line 588
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentMode:Ljava/lang/String;

    return-object p0
.end method

.method protected getEquivalentZoomValue(I)I
    .registers 5

    .line 339
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 340
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_1b

    return p1

    .line 344
    :cond_1b
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 345
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p1, :cond_2d

    .line 347
    sget-object p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterProgressList:Ljava/util/List;

    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterValueList:Ljava/util/List;

    .line 348
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_51
    return p0

    .line 353
    :cond_52
    sget-object p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterProgressList:Ljava/util/List;

    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getFocalLength()I
    .registers 4

    .line 1108
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1109
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1110
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->is2XBlurCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1111
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1112
    :cond_26
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 1114
    :cond_2f
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getNearestFocalLength(I)I

    move-result v1

    .line 1115
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMacroMode:Z

    if-eqz v2, :cond_3c

    .line 1116
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getMacroFocalLength(I)I

    move-result p0

    return p0

    :cond_3c
    return v1

    .line 1119
    :cond_3d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1120
    const-string v1, "10000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1121
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->is2XBlurCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1122
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_62

    goto :goto_65

    :cond_62
    const/16 p0, 0x17

    return p0

    :cond_65
    :goto_65
    const/16 p0, 0x46

    return p0

    .line 1127
    :cond_68
    const-string p0, "15000"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_73

    const/16 p0, 0x23

    return p0

    .line 1129
    :cond_73
    const-string p0, "20000"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7e

    const/16 p0, 0x32

    return p0

    .line 1131
    :cond_7e
    const-string p0, "10300"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_89

    const/16 p0, 0x18

    return p0

    .line 1133
    :cond_89
    const-string p0, "12000"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_94

    const/16 p0, 0x1c

    return p0

    :cond_94
    const/4 p0, 0x0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 403
    const-string p0, "key_camera_zoom"

    return-object p0
.end method

.method public getLimitValueForAIArtMuseumMode()I
    .registers 1

    .line 999
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_IN_AI_ART_MUSEUM:I

    return p0
.end method

.method public getLimitValueForAIGC()I
    .registers 7

    .line 952
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_20

    .line 953
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result p0

    float-to-double v2, p0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double p0, v2, v4

    if-nez p0, :cond_14

    .line 955
    sget v1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_IN_AIGC:I

    .line 957
    :cond_14
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz p0, :cond_1f

    .line 958
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    return p0

    :cond_1f
    return v1

    .line 961
    :cond_20
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz p0, :cond_2b

    .line 962
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    return p0

    :cond_2b
    return v1
.end method

.method public getLimitValueForAsd()I
    .registers 3

    .line 933
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_30X_FOR_TELE:I

    int-to-float v0, v0

    .line 934
    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    rem-float v1, v0, p0

    float-to-int v1, v1

    if-eqz v1, :cond_f

    div-float/2addr v0, p0

    float-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_f
    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getLimitValueForDocument()I
    .registers 4

    .line 811
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_12

    .line 812
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz p0, :cond_f

    .line 813
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    return p0

    .line 815
    :cond_f
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_IN_THIRD_ALGO_FOR_SAT:I

    return p0

    .line 817
    :cond_12
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_5e

    .line 818
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_FOR_THIRD_ALGO:I

    int-to-float v1, v0

    iget v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    rem-float/2addr v1, v2

    float-to-int v1, v1

    .line 819
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v2, :cond_2c

    .line 820
    sget v1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    rem-float/2addr v1, v2

    float-to-int v1, v1

    :cond_2c
    if-eqz v1, :cond_48

    int-to-float v0, v0

    .line 824
    iget v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 825
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v1, :cond_47

    .line 826
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_47
    return v0

    :cond_48
    int-to-float v0, v0

    .line 829
    iget v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 830
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v1, :cond_5d

    .line 831
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_5d
    return v0

    .line 835
    :cond_5e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz p0, :cond_69

    .line 836
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    return p0

    :cond_69
    const/4 p0, -0x1

    return p0
.end method

.method public getLimitValueForFunVideo()I
    .registers 2

    .line 944
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_c

    .line 945
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_FOR_VIDEO:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public getLimitValueForLiteFaceBeauty()I
    .registers 1

    .line 802
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    return p0
.end method

.method public getLimitValueForMovieMode()I
    .registers 2

    .line 969
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_c

    .line 970
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_FOR_VIDEO:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public getLimitValueForPro()I
    .registers 3

    .line 911
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_29

    .line 912
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_30X_IN_PRO_FOR_TELE:I

    .line 914
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport30XForPro:Z

    if-eqz v1, :cond_f

    goto :goto_19

    .line 916
    :cond_f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport60XForPro:Z

    if-eqz v1, :cond_19

    .line 917
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_60X_IN_PRO_FOR_TELE:I

    :cond_19
    :goto_19
    int-to-float v0, v0

    .line 920
    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    rem-float v1, v0, p0

    float-to-int v1, v1

    if-eqz v1, :cond_26

    div-float/2addr v0, p0

    float-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_26
    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method public getLimitValueForSlowMotionMode()I
    .registers 3

    .line 989
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    .line 990
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v1, :cond_f

    .line 991
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getMaxLimitValue(I)I

    move-result p0

    return p0

    .line 993
    :cond_f
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_IN_SLOW_MOTION_FOR_MAIN:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getLimitValueForSuperNight()I
    .registers 4

    .line 879
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_11

    .line 880
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_IN_THIRD_ALGO_FOR_SAT:I

    .line 881
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v0, :cond_10

    .line 882
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    :cond_10
    return p0

    .line 884
    :cond_11
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_5d

    .line 885
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_FOR_THIRD_ALGO:I

    int-to-float v1, v0

    iget v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    rem-float/2addr v1, v2

    float-to-int v1, v1

    .line 886
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v2, :cond_2b

    .line 887
    sget v1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    rem-float/2addr v1, v2

    float-to-int v1, v1

    :cond_2b
    if-eqz v1, :cond_47

    int-to-float v0, v0

    .line 891
    iget v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 892
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v1, :cond_46

    .line 893
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_46
    return v0

    :cond_47
    int-to-float v0, v0

    .line 896
    iget v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 897
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v1, :cond_5c

    .line 898
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_5c
    return v0

    .line 902
    :cond_5d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz p0, :cond_68

    .line 903
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    return p0

    :cond_68
    const/4 p0, -0x1

    return p0
.end method

.method public getLimitValueForVideo()I
    .registers 3

    .line 712
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceZoom10XForVideo()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 713
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_12

    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_IN_VIDEO_MAIN_ENLARGED:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    :goto_f
    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_12
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_IN_VIDEO_MAIN_ENLARGED:I

    return p0

    .line 715
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v1, :cond_28

    if-nez v0, :cond_28

    .line 717
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_IN_VIDEO_MAIN_ENLARGED:I

    return p0

    .line 719
    :cond_28
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_2f

    .line 720
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_IN_VIDEO_FOR_SAT:I

    return p0

    .line 721
    :cond_2f
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_39

    .line 722
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_FOR_VIDEO:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    goto :goto_f

    .line 723
    :cond_39
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-nez v0, :cond_4c

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-nez p0, :cond_4c

    .line 724
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_IN_VIDEO_MAIN_ENLARGED:I

    return p0

    :cond_4c
    const/4 p0, -0x1

    return p0
.end method

.method public getLimitValueInIntentMode()I
    .registers 4

    .line 844
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsIntentPhotoMode:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v0, :cond_f

    .line 845
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_IN_INTENT_PHOTO_MODE:I

    return p0

    .line 847
    :cond_f
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_20

    .line 848
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_IN_THIRD_ALGO_FOR_SAT:I

    .line 849
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v0, :cond_1f

    .line 850
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    :cond_1f
    return p0

    .line 852
    :cond_20
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_6c

    .line 853
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_FOR_THIRD_ALGO:I

    int-to-float v1, v0

    iget v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    rem-float/2addr v1, v2

    float-to-int v1, v1

    .line 854
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v2, :cond_3a

    .line 855
    sget v1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    rem-float/2addr v1, v2

    float-to-int v1, v1

    :cond_3a
    if-eqz v1, :cond_56

    int-to-float v0, v0

    .line 859
    iget v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 860
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v1, :cond_55

    .line 861
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_55
    return v0

    :cond_56
    int-to-float v0, v0

    .line 864
    iget v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 865
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v1, :cond_6b

    .line 866
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_6b
    return v0

    .line 870
    :cond_6c
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz p0, :cond_77

    .line 871
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_MAX_VALUE_ENLARGED:I

    return p0

    :cond_77
    const/4 p0, -0x1

    return p0
.end method

.method public getLimitZoomEnlarged()I
    .registers 2

    .line 760
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_c

    .line 761
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_60X_FOR_TELE:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    .line 763
    :cond_c
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged20X:Z

    if-eqz p0, :cond_17

    .line 764
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMITED_MAX_VALUE_ENLARGED_20X:I

    return p0

    .line 766
    :cond_17
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMITED_MAX_VALUE_ENLARGED:I

    return p0
.end method

.method public getMaxLimitValue(I)I
    .registers 2

    .line 977
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSlowMotionZoomLimited:Z

    if-eqz p0, :cond_a

    .line 978
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_IN_SLOW_MOTION_FOR_TELE:I

    mul-int/lit8 p0, p0, 0x64

    div-int/2addr p0, p1

    return p0

    .line 980
    :cond_a
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->LIMIT_VALUE_FOR_VIDEO:I

    mul-int/lit8 p0, p0, 0x64

    div-int/2addr p0, p1

    return p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    if-nez v0, :cond_f

    .line 409
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    .line 411
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    .line 413
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getRealZoomValue()I
    .registers 1

    .line 179
    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    return p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 398
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSmoothZoomValue()I
    .registers 1

    .line 1141
    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSmoothZoomValue:I

    return p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 2

    .line 559
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUIState()Z
    .registers 1

    .line 187
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentZoomUIState:Z

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 6

    .line 210
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 211
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFovCropValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFovCropValue:Ljava/lang/String;

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_smooth_zoom"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_zoom_state"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_wide_camera_item_seleccted"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "front_crop_fov"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "need_memory_zoom_value"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 217
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 218
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSatReplaceWide:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSatReplaceWide:Z

    .line 219
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mMacroZoomCustomized:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mMacroZoomCustomized:Z

    .line 220
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedTeleValue:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCustomizedTeleValue:I

    .line 221
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSlowMotionZoomLimited:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSlowMotionZoomLimited:Z

    .line 222
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFocalLengthSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFocalLengthSupport:Z

    .line 223
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getBaseFocalLength()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mBaseFocalLength:F

    .line 224
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getMainPmasterFocalLength()[Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getTelePmasterFocalLength()[Ljava/lang/String;

    move-result-object p2

    .line 226
    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result p3

    iput p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    .line 227
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    iget-boolean p3, p3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSupportSuperAntiVideoV2:Z

    .line 228
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_99

    .line 229
    array-length v0, p1

    if-lez v0, :cond_99

    .line 230
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_99
    if-eqz p2, :cond_a5

    .line 232
    array-length p1, p2

    if-lez p1, :cond_a5

    .line 233
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 235
    :cond_a5
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFocalLength:[I

    .line 236
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 237
    sget-object p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterValueList:Ljava/util/List;

    if-nez p0, :cond_d3

    .line 238
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterValueList:Ljava/util/List;

    goto :goto_d6

    .line 240
    :cond_d3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 242
    :goto_d6
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideRangeConverterValueList:[I

    .line 243
    array-length p1, p0

    const/4 p2, 0x0

    move p3, p2

    :goto_df
    if-ge p3, p1, :cond_ef

    aget v0, p0, p3

    .line 244
    sget-object v1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_df

    .line 246
    :cond_ef
    sget-object p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterProgressList:Ljava/util/List;

    if-nez p0, :cond_fb

    .line 247
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterProgressList:Ljava/util/List;

    goto :goto_fe

    .line 249
    :cond_fb
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 251
    :goto_fe
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideRangeConverterProgressList:[I

    .line 252
    array-length p1, p0

    :goto_105
    if-ge p2, p1, :cond_115

    aget p3, p0, p2

    .line 253
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mWideRangeConverterProgressList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_105

    :cond_115
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 270
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initValueAndSupport] zoomList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 273
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 274
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsFrontCamera()Z

    move-result p1

    const-string v0, "off"

    const-string v1, "on"

    if-eqz p1, :cond_84

    .line 277
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    if-nez p1, :cond_42

    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "front_crop_fov"

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 278
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFovCropValue:Ljava/lang/String;

    goto/16 :goto_171

    .line 279
    :cond_42
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    if-eqz p1, :cond_66

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isFrontCameraSupport()Z

    move-result p1

    if-eqz p1, :cond_66

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string p2, "front_super_wide_camera"

    .line 281
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {p1, p2, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 282
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    :goto_60
    move-object p2, p1

    goto/16 :goto_171

    :cond_63
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_FRONT_VALUE:Ljava/lang/String;

    goto :goto_60

    .line 283
    :cond_66
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    if-eqz p1, :cond_171

    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_camera_click_zoom"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_171

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_171

    .line 287
    :cond_84
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isInSensorZoomStatus()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 288
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_SAT_VALUE:Ljava/lang/String;

    goto :goto_f4

    .line 290
    :cond_8d
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "back_super_wide_camera"

    .line 291
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {p1, v2, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 292
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    goto :goto_b0

    .line 293
    :cond_a2
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    :goto_b0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 295
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 294
    const-string v1, "back_super_wide_camera"

    const-string v2, "off"

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 297
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    if-eqz p2, :cond_f4

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsWideCamera()Z

    move-result p2

    if-eqz p2, :cond_f4

    .line 298
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiVideoRestrictionType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_f4

    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_super_anti_video"

    .line 299
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "super"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f4

    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_quality"

    .line 300
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "6"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f4

    .line 301
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    .line 304
    :cond_f4
    :goto_f4
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    const-string v0, "0"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_100

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    .line 307
    :cond_100
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMacroMode:Z

    if-eqz p2, :cond_11a

    .line 308
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->macroZoomCustomized()Z

    move-result p1

    if-eqz p1, :cond_116

    .line 309
    iget p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCustomizedTeleValue:I

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mLongFocusRatio:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 310
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_11a

    .line 312
    :cond_116
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 315
    :cond_11a
    :goto_11a
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPMasterMode:Z

    if-eqz p2, :cond_16e

    .line 316
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getTeleCamDefaultOpen()Z

    move-result p2

    if-eqz p2, :cond_16e

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    .line 319
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->is2XBlurCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_144

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_16e

    .line 323
    :cond_144
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    .line 324
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-interface {p2, v1, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result p2

    const v1, 0x402ccccd    # 2.7f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_16e

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_16e

    const p1, 0x46ea6000    # 30000.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 326
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_16e
    move-object p2, p1

    .line 331
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    .line 333
    :cond_171
    :goto_171
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->setValue(Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 335
    iput v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSmoothZoomValue:I

    return-void
.end method

.method public isFlashSnapMode()Z
    .registers 1

    .line 1149
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMotionCaptureMode:Z

    return p0
.end method

.method public isHighDefinitionMode()Z
    .registers 1

    .line 806
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsHighDefinitionMode:Z

    return p0
.end method

.method public isInSensorZoomStatus()Z
    .registers 2

    .line 1060
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSatReplaceWide:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isLiteFaceBeautyMode()Z
    .registers 1

    .line 798
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsLiteFaceBeautyMode:Z

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLimitedZoom4XForSomeMode:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isMaxValueLimited()Z
    .registers 1

    .line 691
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMaxValueLimited:Z

    return p0
.end method

.method public isModeSupport()Z
    .registers 2

    .line 646
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPMasterMode:Z

    if-nez v0, :cond_14

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_G200()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isFlashSnapMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 647
    :cond_14
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isMovieMode()Z
    .registers 1

    .line 794
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMovieMode:Z

    return p0
.end method

.method public isPortrait()Z
    .registers 1

    .line 1064
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mPortrait:Z

    return p0
.end method

.method public isSlowMotionMode()Z
    .registers 1

    .line 790
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSlowMotionMode:Z

    return p0
.end method

.method public isZooming()Z
    .registers 1

    .line 1145
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsZooming:Z

    return p0
.end method

.method public onCameraClosedBefore()V
    .registers 5

    .line 609
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraClosedBefore()V

    .line 610
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->setValue(Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 1022
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1023
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    .line 1024
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->updateModeParameter()V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 593
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 594
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->setValue(Ljava/lang/String;)V

    .line 595
    const-string v0, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 596
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "12000"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_33

    :catchall_24
    move-exception p1

    goto :goto_41

    .line 598
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 600
    :goto_33
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMaxValueLimited:Z

    .line 601
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    .line 602
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    .line 603
    const-string p1, "0"

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    .line 604
    iput v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSmoothZoomValue:I
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_24

    .line 605
    monitor-exit p0

    return-void

    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_24

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 8

    .line 570
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 571
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    .line 572
    const-string p2, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    .line 573
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "12000"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2d

    .line 575
    :cond_1e
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 577
    :goto_2d
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentFeature:[Ljava/lang/String;

    .line 578
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "mode_entry_key"

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->updateModeParameter()V

    .line 581
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentMode:Ljava/lang/String;

    if-eqz p2, :cond_49

    .line 582
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    .line 584
    :cond_49
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentMode:Ljava/lang/String;

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 3

    .line 476
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 477
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->forceUpdateValue(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->postRestrictionAfterValueChange()V

    :cond_10
    return-void
.end method

.method public onValueChangedOnly(Ljava/lang/String;)V
    .registers 7

    .line 484
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChangedOnly], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 486
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    .line 487
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsWideCamera()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 488
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getEquivalentZoomValue(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    goto :goto_3a

    .line 490
    :cond_34
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    .line 492
    :goto_3a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_50

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "key_real_zoom"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 495
    :cond_50
    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    const/16 v1, 0x64

    const-string/jumbo v2, "wide_camera"

    if-ge v0, v1, :cond_69

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_78

    .line 498
    :cond_69
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    :goto_78
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 501
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->postRestrictionAfterValueChange()V

    :cond_89
    return-void
.end method

.method public onZoomUIStateChanged(Z)V
    .registers 2

    .line 531
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->setUIState(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 418
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 419
    const-string/jumbo v0, "value_zoom_support_macro_active"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const-string/jumbo v3, "value_zoom_support_wide_active"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_b7

    .line 420
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto/16 :goto_b7

    .line 440
    :cond_3d
    const-string/jumbo v0, "wide_camera_zoom_override_value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    if-eqz p3, :cond_11f

    .line 441
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_11f

    .line 442
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 443
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 444
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 446
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    add-int/2addr p3, v4

    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 447
    sget-object p3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-super {p0, p1, p3, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 449
    :cond_7c
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_11f

    .line 450
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    return-void

    .line 453
    :cond_84
    const-string/jumbo v0, "value_zoom_support_dol_hdr_active"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 454
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object p2

    .line 455
    sget-object p3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-super {p0, p1, p3, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_11f

    .line 457
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    return-void

    :cond_9e
    if-eqz p3, :cond_a5

    if-eqz p2, :cond_a5

    .line 461
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_a5
    if-eqz p2, :cond_11f

    .line 463
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    if-nez p1, :cond_af

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    if-eqz p1, :cond_11f

    :cond_af
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_11f

    .line 464
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    return-void

    :cond_b7
    :goto_b7
    if-eqz p3, :cond_11f

    .line 421
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_11f

    .line 422
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 423
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 424
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v6

    .line 425
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11f

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11f

    .line 426
    invoke-interface {v6, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v6, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-interface {v6, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 427
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 428
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_101

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedRodeBySaveValue:Z

    if-eqz p2, :cond_101

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_107

    :cond_101
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 429
    :goto_107
    invoke-super {p0, p1, p2, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 430
    iput-boolean v5, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedRodeBySaveValue:Z

    goto :goto_118

    .line 431
    :cond_10d
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_118

    .line 432
    sget-object p2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-super {p0, p1, p2, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 435
    :cond_118
    :goto_118
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_11f

    .line 436
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_11f
    return-void
.end method

.method public pause()V
    .registers 6

    .line 619
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 620
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedSaveZoomValue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    .line 621
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPause:Z

    .line 622
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMacroMode:Z

    if-eqz v0, :cond_14

    .line 623
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->setValue(Ljava/lang/String;)V

    .line 625
    :cond_14
    const-string v0, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 626
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "12000"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3d

    .line 628
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 631
    :cond_3d
    :goto_3d
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedSaveZoomValue:Z

    .line 632
    iput v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSmoothZoomValue:I

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 1

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 2

    .line 554
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    return-void
.end method

.method public resume()V
    .registers 6

    .line 637
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    .line 638
    const-string v0, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPause:Z

    if-eqz v0, :cond_21

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "12000"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 641
    :cond_21
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPause:Z

    return-void
.end method

.method public setRealZoomValue(Ljava/lang/String;)V
    .registers 6

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    .line 379
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_1a

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "key_real_zoom"

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 382
    :cond_1a
    iget p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    const/16 v0, 0x64

    const-string/jumbo v1, "wide_camera"

    if-ge p1, v0, :cond_33

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 385
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "off"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setUIState(Z)V
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentZoomUIState:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 6

    .line 360
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsWideCamera()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 362
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getEquivalentZoomValue(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    goto :goto_1a

    .line 364
    :cond_14
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    .line 366
    :goto_1a
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz p1, :cond_30

    .line 367
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "key_real_zoom"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 369
    :cond_30
    iget p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mRealZoomValue:I

    const/16 v0, 0x64

    const-string/jumbo v1, "wide_camera"

    if-ge p1, v0, :cond_49

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 372
    :cond_49
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "off"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public shouldLimitForAIArtMuseum()Z
    .registers 2

    .line 778
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mAIArtMuseumMode:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLimitForAIGC()Z
    .registers 2

    .line 774
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v0, :cond_12

    :cond_c
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mAIGCMode:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLimitForAsd()Z
    .registers 2

    .line 782
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_20

    .line 784
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomLimit30xForSuperDefinition:Z

    if-eqz v0, :cond_20

    const-string v0, "key_super_definition"

    .line 785
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLimitForDocument()Z
    .registers 2

    .line 730
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v0, :cond_16

    :cond_10
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mDocumentMode:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLimitForFunVideo()Z
    .registers 2

    .line 770
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_e

    :cond_8
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFunVideoMode:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLimitForIntentMode()Z
    .registers 4

    .line 695
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 696
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLimitedZoom4XForSomeMode:Z

    if-nez v0, :cond_17

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsIntentVideoMode:Z

    if-eqz p0, :cond_17

    return v2

    :cond_17
    return v1

    .line 699
    :cond_18
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLimitedZoom4XForSomeMode:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsIntentPhotoMode:Z

    if-nez v0, :cond_28

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsIntentVideoMode:Z

    if-eqz p0, :cond_29

    :cond_28
    return v2

    :cond_29
    return v1
.end method

.method public shouldLimitForPro()Z
    .registers 2

    .line 738
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_1a

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsProMode:Z

    if-eqz p0, :cond_1a

    .line 739
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport30XForPro:Z

    if-nez p0, :cond_18

    .line 740
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport60XForPro:Z

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLimitForSuperNight()Z
    .registers 2

    .line 734
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v0, :cond_16

    :cond_10
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSuperNightMode:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLimitForVideo()Z
    .registers 2

    .line 705
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-nez v0, :cond_10

    .line 706
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v0, :cond_21

    :cond_10
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTimeLapseVideoMode:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsDualVideoMode:Z

    if-nez v0, :cond_23

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVlogMode:Z

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method public shouldLimitZoom4XForSomeMode()Z
    .registers 2

    .line 744
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLimitedZoom4XForSomeMode:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsProMode:Z

    if-nez v0, :cond_16

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsIntentPhotoMode:Z

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLimitZoomEnlarged()Z
    .registers 3

    .line 749
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomLimit60xForSuperDefinition:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    if-eqz v0, :cond_12

    return v1

    .line 752
    :cond_12
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged20X:Z

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsBaseCamera()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsProMode:Z

    if-eqz v0, :cond_29

    :cond_28
    return v1

    .line 755
    :cond_29
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v0, :cond_44

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsBaseCamera()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsProMode:Z

    if-nez v0, :cond_43

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsIntentPhotoMode:Z

    if-eqz p0, :cond_44

    :cond_43
    return v1

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .registers 6

    .line 259
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/camera/feature/setting/zoom/Zoom;->INIT_VALUE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_smooth_zoom"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "front_crop_fov"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "need_memory_zoom_value"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
