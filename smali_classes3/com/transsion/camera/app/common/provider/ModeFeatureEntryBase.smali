.class public abstract Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# static fields
.field private static final DARK_SKIN_RESOURCE_INDEX:I = 0x2

.field private static final LIGHT_SKIN_RESOURCE_INDEX:I = 0x0

.field protected static final MAIN_LOWER_ZOOM_VALUE:I

.field private static final MEDIUM_SKIN_RESOURCE_INDEX:I = 0x1

.field protected static final MIN_ZOOM_RATIO:I

.field protected static final PMASTER_BASE_ZOOM_VALUE:I = 0x1


# instance fields
.field protected mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field protected mConfigTeleCamera:Z

.field protected mConfigWideCam:Z

.field protected mInstantZoom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMasterGuideUIBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/MasterGuideUIBean;",
            ">;"
        }
    .end annotation
.end field

.field protected mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

.field protected mZoomInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ZoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mainCropInfo:Lcom/transsion/camera/app/common/ZoomInfo;

.field protected mainCropNoTeleInfo:Lcom/transsion/camera/app/common/ZoomInfo;

.field protected mainInfo:Lcom/transsion/camera/app/common/ZoomInfo;

.field protected teleZoomInfo:Lcom/transsion/camera/app/common/ZoomInfo;

.field protected wideInfo:Lcom/transsion/camera/app/common/ZoomInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const/16 v1, 0x64

    const/16 v2, 0x2710

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    sput v0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->MAIN_LOWER_ZOOM_VALUE:I

    .line 37
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_1a

    move v1, v2

    :cond_1a
    sput v1, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->MIN_ZOOM_RATIO:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mInstantZoom:Ljava/util/List;

    .line 44
    new-instance p1, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->wideInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    .line 45
    new-instance p1, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    .line 46
    new-instance p1, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainCropInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    .line 47
    new-instance p1, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->teleZoomInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    .line 48
    new-instance p1, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainCropNoTeleInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mConfigWideCam:Z

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mConfigTeleCamera:Z

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mMasterGuideUIBeans:Ljava/util/List;

    .line 54
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 55
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->createCurrentModeUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    .line 56
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->createSecondDefaultValue()V

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->createZoomSpec()V

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->setModeOffsetPadding()V

    return-void
.end method

.method private createCurrentModeUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;
    .registers 2

    .line 183
    new-instance v0, Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->getFeatureName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected createSecondDefaultValue()V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$integer;->second_item_zoom_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/app/common/R$integer;->tele_second_item_zoom_value:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 68
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v2, :cond_1c

    mul-int/lit8 v0, v0, 0x64

    mul-int/lit8 v1, v1, 0x64

    .line 72
    :cond_1c
    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSecondDefautZoomValue(I)V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTeleSecondDefaultZoomValue(I)V

    return-void
.end method

.method protected createZoomSpec()V
    .registers 16

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mInstantZoom:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v0

    .line 80
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_24

    move v2, v4

    goto :goto_25

    :cond_24
    move v2, v3

    .line 82
    :goto_25
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->currentModeSupportWideCamera()Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mConfigWideCam:Z

    if-eqz v2, :cond_31

    if-eqz v5, :cond_31

    move v2, v4

    goto :goto_32

    :cond_31
    move v2, v3

    .line 84
    :goto_32
    iget-object v5, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v5, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportWideCamera(Z)V

    .line 86
    iget-object v5, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_41

    move v5, v4

    goto :goto_42

    :cond_41
    move v5, v3

    .line 87
    :goto_42
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->currentModeSupportTeleCamera()Z

    move-result v6

    iput-boolean v6, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mConfigTeleCamera:Z

    if-eqz v5, :cond_4e

    if-eqz v6, :cond_4e

    move v5, v4

    goto :goto_4f

    :cond_4e
    move v5, v3

    .line 89
    :goto_4f
    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v6, v5}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportTeleCamera(Z)V

    if-eqz v2, :cond_89

    .line 92
    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v6

    const v7, 0x3f19999a    # 0.6f

    invoke-interface {v1, v6, v7}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v6

    .line 93
    iget-object v7, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->wideInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-virtual {v7, v6}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 94
    iget-object v7, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->wideInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getWideFocalLength()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/common/ZoomInfo;->setFocalLengths([Ljava/lang/String;)V

    .line 95
    iget-object v7, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->wideInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    sget v8, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->MIN_ZOOM_RATIO:I

    int-to-float v8, v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 96
    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->wideInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    sget v7, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->MAIN_LOWER_ZOOM_VALUE:I

    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 97
    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    iget-object v7, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->wideInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_89
    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    iget-object v7, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-interface {v1, v7, v8}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 101
    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getMainFocalLength()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/common/ZoomInfo;->setFocalLengths([Ljava/lang/String;)V

    .line 102
    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    sget v7, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->MAIN_LOWER_ZOOM_VALUE:I

    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 103
    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    iget-object v7, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v6, 0x989680

    if-eqz v5, :cond_15c

    .line 106
    iget-object v7, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-interface {v1, v7, v9}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v7

    cmpl-float v0, v0, v9

    const/16 v9, 0x12c

    const/16 v10, 0x7530

    const/high16 v11, 0x40400000    # 3.0f

    const v12, 0x402ccccd    # 2.7f

    if-lez v0, :cond_119

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    sget v13, Lcom/transsion/camera/utils/SettingInfo;->MAIN_LOWER_CROP_ZOOM_VALUE:I

    invoke-virtual {v0, v13}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainCropInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    iget-object v14, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v14}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14, v8}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainCropInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getMainCropFocalLength()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setFocalLengths([Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainCropInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-virtual {v0, v13}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    cmpl-float v1, v7, v12

    if-ltz v1, :cond_10c

    cmpg-float v1, v7, v11

    if-gez v1, :cond_10c

    .line 114
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_10b

    move v0, v10

    goto :goto_10c

    :cond_10b
    move v0, v9

    .line 116
    :cond_10c
    :goto_10c
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainCropInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainCropInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_124

    .line 119
    :cond_119
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 122
    :goto_124
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->teleZoomInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->teleZoomInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getTeleFocalLength()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setFocalLengths([Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    cmpl-float v1, v7, v12

    if-ltz v1, :cond_14a

    cmpg-float v1, v7, v11

    if-gez v1, :cond_14a

    .line 126
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_149

    move v9, v10

    :cond_149
    move v0, v9

    .line 128
    :cond_14a
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->teleZoomInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->teleZoomInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->teleZoomInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_196

    .line 133
    :cond_15c
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    iget-object v7, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSecondDefaultZoomValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainCropNoTeleInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    iget-object v7, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v8}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainCropNoTeleInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getMainCropFocalLength()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setFocalLengths([Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainCropNoTeleInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSecondDefaultZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainCropNoTeleInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mainCropNoTeleInfo:Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :goto_196
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setCameraZoomList(Ljava/util/List;)V

    .line 143
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->setInstantZoomList()V

    .line 145
    :cond_1a6
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_22a

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportWideCamera(Z)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportTeleCamera(Z)V

    if-eqz v2, :cond_1c8

    if-eqz v5, :cond_1c8

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/app/common/R$array;->common_mode_wide_tele_zoom_ui_entries:I

    .line 150
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    goto :goto_1f5

    :cond_1c8
    if-eqz v2, :cond_1d8

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/app/common/R$array;->common_mode_wide_zoom_ui_entries:I

    .line 154
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    goto :goto_1f5

    :cond_1d8
    if-eqz v5, :cond_1e8

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/app/common/R$array;->common_mode_tele_zoom_ui_entries:I

    .line 157
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    goto :goto_1f5

    .line 159
    :cond_1e8
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/app/common/R$array;->common_mode_default_zoom_ui_entries:I

    .line 160
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    .line 165
    :goto_1f5
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/app/common/R$array;->common_mode_flip_zoom_ui_entries:I

    .line 166
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setFlipWideCameraSettingUIEntries([Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->currentModeSupportFrontWideCamera()Z

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_210

    move v1, v4

    goto :goto_211

    :cond_210
    move v1, v3

    :goto_211
    if-eqz v0, :cond_216

    if-eqz v1, :cond_216

    move v3, v4

    .line 172
    :cond_216
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportFrontWideCamera(Z)V

    if-eqz v3, :cond_22a

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$array;->common_front_wide_switch_setting_ui_entries:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setFrontWideCameraSettingUIEntries([Ljava/lang/String;)V

    :cond_22a
    return-void
.end method

.method protected currentModeSupportFrontWideCamera()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected currentModeSupportFrontZoomItems()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected currentModeSupportTeleCamera()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected currentModeSupportWideCamera()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract synthetic getFeatureName()Ljava/lang/String;
.end method

.method public abstract synthetic getType()Ljava/lang/Class;
.end method

.method protected initSellingPointGuideResources(Lcom/transsion/camera/app/common/FeatureResource;II)Z
    .registers 7

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 213
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_57

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    if-nez p3, :cond_22

    goto :goto_57

    .line 217
    :cond_22
    sget-object p3, Lcom/transsion/camera/utils/AreaUtil;->COUNTRY_CODE:Ljava/lang/String;

    if-eqz p3, :cond_2c

    .line 218
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 219
    :cond_2c
    const-string p3, "NG"

    .line 222
    :cond_2e
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->AREA_A_DARK_SELLING_POINT_GUIDE:[Ljava/lang/String;

    invoke-static {v1, p3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_39

    const/4 p3, 0x2

    goto :goto_44

    .line 224
    :cond_39
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->AREA_C_LIGHT_SELLING_POINT_GUIDE:[Ljava/lang/String;

    invoke-static {v1, p3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_43

    move p3, v0

    goto :goto_44

    :cond_43
    move p3, v2

    .line 229
    :goto_44
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFloatingWindowDrawableId:I

    .line 230
    invoke-virtual {p0, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p1, Lcom/transsion/camera/app/common/FeatureResource;->mOverlayGuideDrawableId:I

    .line 231
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v2

    :cond_57
    :goto_57
    return v0
.end method

.method protected pocketScreen(Lcom/transsion/camera/app/common/provider/FeatureParameters;)Z
    .registers 2

    if-eqz p1, :cond_b

    const/4 p0, 0x6

    .line 187
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->screenFormType()I

    move-result p1

    if-ne p0, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method protected screenFlip(Lcom/transsion/camera/app/common/provider/FeatureParameters;)Z
    .registers 2

    if-eqz p1, :cond_b

    const/4 p0, 0x7

    .line 191
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->screenFormType()I

    move-result p1

    if-ne p0, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method protected setInstantZoomList()V
    .registers 1

    return-void
.end method

.method protected setModeOffsetPadding()V
    .registers 1

    return-void
.end method
