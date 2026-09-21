.class public Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FOCAL_LENGTH:Ljava/lang/String; = "28"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mStreetPhotoZoomLens:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private queryFlashValue()Ljava/lang/String;
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 128
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private queryHDRValue()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_hdr"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    return-object p0

    .line 136
    :cond_f
    const-string p0, "off"

    return-object p0
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 179
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
        }
    .end annotation

    .line 184
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 55
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 14

    .line 216
    new-instance v0, Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ZoomConfig;-><init>()V

    .line 217
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    .line 219
    sget v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    .line 220
    sget v3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_3X:I

    const/4 v4, 0x0

    move v5, v4

    .line 222
    :goto_f
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;->mStreetPhotoZoomLens:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v5, v7, :cond_75

    .line 223
    aget-object v6, v6, v5

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 224
    aget-object v7, v6, v4

    .line 225
    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    sget v10, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v11, v10

    mul-float/2addr v9, v11

    float-to-int v9, v9

    const/4 v11, 0x2

    .line 226
    aget-object v6, v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v11, v6, :cond_38

    .line 228
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v11

    goto :goto_3c

    :cond_38
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v11

    .line 229
    :goto_3c
    invoke-virtual {v1, v11}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result v12

    int-to-float v10, v10

    mul-float/2addr v12, v10

    float-to-int v10, v12

    .line 231
    new-instance v12, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v12}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    .line 232
    invoke-virtual {v12, v9}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCurrentRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v10

    .line 233
    invoke-virtual {v10, v9, v9, v8}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v10

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setFocalLength([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v7

    .line 234
    invoke-virtual {v7, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v6

    .line 231
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    if-nez v5, :cond_6b

    move v2, v9

    goto :goto_72

    .line 238
    :cond_6b
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;->mStreetPhotoZoomLens:[Ljava/lang/String;

    array-length v6, v6

    sub-int/2addr v6, v8

    if-ne v5, v6, :cond_72

    move v3, v9

    :cond_72
    :goto_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_75
    const/16 v1, 0x20

    const/16 v4, 0x80

    .line 243
    filled-new-array {v1, v4}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v8}, Lcom/transsion/camera/app/common/ZoomConfig;->setFocalLengthCustom(Z)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v1

    const-string v4, "28"

    .line 245
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/ZoomConfig;->setCurrentFocalLength(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 246
    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/ZoomConfig;->setCurrentLensTypeByCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    .line 247
    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v0
.end method

.method public getDataFlowType()I
    .registers 3

    .line 104
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_11

    .line 105
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_11
    move p0, v0

    goto :goto_15

    :cond_13
    const/16 p0, 0x8

    .line 113
    :goto_15
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_47

    .line 114
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_47

    .line 115
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_47

    .line 116
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_47

    .line 117
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_48

    :cond_47
    const/4 v0, 0x4

    .line 120
    :cond_48
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 157
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    const-string p1, "key_street_photo"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    const-string p1, "key_edit_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const-string p1, "key_gold_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const-string p1, "key_pro_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    const-string p1, "key_asd"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    const-string p1, "key_hdr"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    const-string p1, "key_tran_plugin"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const-string p1, "key_ai_shutter"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const-string p1, "key_ai_shutter_switch"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const-string p1, "key_taint_detection"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const-string p1, "key_voice_detection"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const-string p1, "key_touch_capture"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const-string p1, "key_mood_light"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    const-string p1, "key_airaw_tf"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    const-string p1, "key_in_sensor_zoom"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 174
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 3

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 143
    const-string v0, "off"

    .line 145
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;->queryHDRValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoRestriction;->getRelation(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 146
    invoke-static {}, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 152
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 68
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/streetphoto/R$array;->street_photo_zoom_lens:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;->mStreetPhotoZoomLens:[Ljava/lang/String;

    return-void
.end method

.method public onCameraStateChanged(I)V
    .registers 4

    .line 74
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCameraStateChanged(I)V

    .line 75
    sget-object p0, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSettingReady()V
    .registers 1

    .line 80
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    return-void
.end method

.method public pause()V
    .registers 5

    .line 85
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 87
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 86
    const-string v2, "key_exposure_private"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    sget-object p0, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[pause]"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 5

    .line 189
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 191
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 190
    const-string v2, "key_exposure_private"

    const-string v3, "on"

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    sget-object p0, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[resume]"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_setting_focus_distance"

    const-string v3, "continuous-picture"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_1b

    .line 205
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 207
    :cond_1b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    if-nez v0, :cond_24

    goto :goto_27

    .line 210
    :cond_24
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 208
    :cond_27
    :goto_27
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method protected supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 1

    .line 197
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .registers 2

    .line 93
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 94
    sget-object p0, Lcom/transsion/camera/feature/mode/streetphoto/StreetPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[unInit]"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
