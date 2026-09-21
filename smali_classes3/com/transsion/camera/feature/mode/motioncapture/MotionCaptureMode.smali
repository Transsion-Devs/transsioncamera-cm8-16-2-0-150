.class public Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;",
        "Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final PREVIEW_SIZE_HEIGHT:I

.field mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mInstantZoomRatios:[Ljava/lang/String;

.field private mIsAIFrame:Z

.field mTopLayerRoot:Landroid/view/ViewGroup;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MotionCaptureMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2d0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->PREVIEW_SIZE_HEIGHT:I

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->mIsAIFrame:Z

    .line 67
    sget p1, Lcom/transsion/camera/feature/mode/motioncapture/R$array;->motion_capture_instant_zoom:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->mInstantZoomRatios:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;)Landroid/content/Context;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;)Landroid/content/Context;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;)Landroid/content/Context;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private findAndReplaceTextWithIcon()V
    .registers 3

    .line 332
    sget-object v0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "findAndReplaceTextWithIcon"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getTopLayerRoot()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->mTopLayerRoot:Landroid/view/ViewGroup;

    if-nez v1, :cond_17

    .line 335
    const-string p0, "mTopLayerRoot is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 338
    :cond_17
    new-instance v0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;-><init>(Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private isAlgorithmMigrated()Z
    .registers 3

    .line 229
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getMotionCaptureType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    .line 230
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getMotionCaptureType()I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    return v0
.end method

.method private updateJpegExif([B)V
    .registers 4

    .line 324
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->mIsAIFrame:Z

    if-eqz p0, :cond_11

    .line 325
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    const-string v0, ";ai_frame"

    invoke-static {p1, p0, v0}, Lcom/transsion/camera/utils/exif/ExifTools;->extendExifStringValue([BILjava/lang/String;)[B

    move-result-object p0

    .line 327
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 93
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

    .line 98
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method protected currentModeNeedNewCaptureAnimation()Z
    .registers 2

    .line 387
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSupportNewCaptureAnimation:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    .line 388
    :cond_d
    :goto_d
    sget-object p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "currentModeNeedNewCaptureAnimation : false"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected getBackMaxZoomRatio()I
    .registers 2

    .line 423
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_24M()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 424
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackTeleCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 425
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_5X:I

    return p0

    .line 428
    :cond_13
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackMaxZoomRatio()I

    move-result p0

    return p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 5

    .line 402
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_24M()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_23

    .line 403
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->mInstantZoomRatios:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ZoomConfig;->setInstantZoomRatios([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    const/16 v0, 0x8

    const/16 v2, 0x10

    const/4 v3, 0x4

    filled-new-array {v1, v3, v0, v2}, [I

    move-result-object v0

    .line 404
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0

    .line 407
    :cond_23
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    filled-new-array {v1}, [I

    move-result-object v0

    .line 408
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 3

    .line 129
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    const/4 p0, 0x3

    goto :goto_a

    :cond_9
    move p0, v0

    .line 132
    :goto_a
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x4

    .line 135
    :cond_15
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3

    .line 145
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    const-string v0, "key_tran_plugin"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v0, "key_best_moment_detect"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v0, "key_setting_smart_denoise"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v0, "key_edit_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v0, "key_gold_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v0, "key_pro_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v0, "key_auto_color_level"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v0, "key_auto_focus_switch"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v0, "key_voice_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v0, "key_touch_capture"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v0, "key_human_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v0, "key_animal_eye_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v0, "key_eye_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v0, "key_taint_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v0, "key_mood_light"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->isAlgorithmMigrated()Z

    move-result p0

    const-string v0, "key_hdr"

    if-eqz p0, :cond_5b

    .line 162
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_5b
    const-string p0, "key_lens_correction"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const-string p0, "key_shutter_sound_optional"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isAIFrameSupport()Z

    move-result p0

    if-eqz p0, :cond_74

    .line 167
    const-string p0, "key_ai_frame"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_74
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2()Z

    move-result p0

    if-eqz p0, :cond_a4

    .line 170
    const-string p0, "key_single_blur"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    const-string p0, "key_ai_shutter"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    const-string p0, "key_ai_shutter_switch"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_24M()Z

    move-result p0

    if-eqz p0, :cond_a4

    .line 174
    const-string p0, "key_portraitmode_enhance"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const-string p0, "key_asd"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_a4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 180
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->isAlgorithmMigrated()Z

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureModeRestriction;->getModeRelation(Z)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 8

    .line 83
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPostAlgoFormat()I
    .registers 1

    .line 222
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV1_G100()Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0x23

    return p0

    :cond_d
    const/16 p0, 0x20

    return p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/16 v0, 0x2d0

    .line 396
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getLimitedPreviewSize(Ljava/util/List;I)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 140
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 19

    .line 72
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 73
    const-string v0, "capture_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/mode/motioncapture/R$string;->motion_capture_lowlight_hint:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/mode/motioncapture/R$string;->motion_capture_banding_hint_new:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 76
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v10}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    return-void
.end method

.method protected initContinuousShot(Landroid/content/Context;)Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;
    .registers 5

    .line 114
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    sget v1, Lcom/transsion/camera/feature/mode/motioncapture/R$integer;->max_continuous_shot_number:I

    sget v2, Lcom/transsion/camera/feature/mode/motioncapture/R$raw;->camera_continuous_shutter:I

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/content/Context;II)V

    return-object v0
.end method

.method protected isContinuousShotSupport()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isMainZoom2XSupported()Z
    .registers 2

    .line 415
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2_G100_ForOSUpToW()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 416
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapProV1()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1a

    .line 419
    :cond_15
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isMainZoom2XSupported()Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDeviceCaptureSound()Z
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isNeedDeviceCaptureSound()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 255
    :cond_a
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isNeedDeviceCaptureSound()Z

    move-result p0

    return p0
.end method

.method protected isSupportMotionCapture()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSat()Z

    move-result p0

    return p0
.end method

.method protected isZoomFocalLengthSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->notifyCameraOperateAction(I)V

    const/16 v0, 0x6d

    if-ne p1, v0, :cond_c

    .line 313
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->findAndReplaceTextWithIcon()V

    :cond_c
    return-void
.end method

.method public notifyPictureTaken([BZIJ)I
    .registers 11

    .line 279
    invoke-static {}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->getInstance()Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->getPhotoTaskData(J)Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 281
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isAIFrame()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->mIsAIFrame:Z

    .line 283
    :cond_10
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyPictureTaken photoTaskData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mIsAIFrame : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->mIsAIFrame:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->notifyPictureTaken()V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v0, p4, p5}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->findCaptureInfoByTimestamp(J)Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_4e

    .line 289
    sget-object p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "notifyPictureTaken, null motionCaptureInfo, return!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 292
    :cond_4e
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v2, p4, p5, v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->needSaveJpeg(JLcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;)Z

    move-result v2

    if-nez v2, :cond_5b

    const/4 p1, 0x1

    .line 295
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->checkCaptureResult(Z)V

    return v1

    .line 298
    :cond_5b
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    iget-wide v3, v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mTimestamp:J

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->removeMotionCaptureInfo(J)V

    .line 299
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->analyticsCapture(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;)V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v0, p4, p5}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->getMotionCaptureInfoTimeStamp(J)J

    move-result-wide p4

    .line 302
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->notifyPictureTaken([BZIJ)I

    .line 303
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->updateJpegExif([B)V

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move p3, p2

    const/4 p2, 0x0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;ZJ)V

    return v1
.end method

.method public onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 319
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onModeCaptureFailed(Z[J)V
    .registers 3

    .line 273
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed(Z[J)V

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->onModeCaptureFailed()V

    return-void
.end method

.method public onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 7

    .line 260
    sget-object v0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeCaptureStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", silentCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    .line 261
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isSilentCaptureType()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isSilentCaptureType()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 263
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->setSilentCaptureTimeStampInfo(J)V

    return-void

    .line 266
    :cond_39
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->onModeCaptureStarted(J)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 209
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz p0, :cond_a

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public onSettingReady()V
    .registers 1

    .line 185
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->onSettingReady()V

    return-void
.end method

.method public onShutterClick(II)Z
    .registers 3

    .line 235
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(II)Z

    move-result p2

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->onShutterClick(IZ)Z

    move-result p0

    return p0
.end method

.method public onThumbNailTypeConfirmed(I[IJ)V
    .registers 8

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isTimeLongAlgoScene([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    .line 242
    sget-object v0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutterPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getCurShutterPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getCurShutterPriority()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2b

    return-void

    .line 246
    :cond_2b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onThumbNailTypeConfirmed(I[IJ)V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 197
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->pause()V

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
    .registers 1

    .line 191
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->resume()V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 203
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public supportPostAlgo()Z
    .registers 1

    .line 217
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 2

    .line 119
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 120
    const-string v0, "capture_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 121
    const-string v0, "key_best_moment_detect"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->unInit()V

    return-void
.end method
