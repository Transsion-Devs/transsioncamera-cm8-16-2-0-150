.class public Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;"
    }
.end annotation


# static fields
.field private static final FRAMES_SKIP_FOR_DETECTION:I = 0x3


# instance fields
.field private mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

.field private mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

.field private mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

.field private final mCaptureListener:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

.field private mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

.field private mHandDetector:Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

.field private final mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

.field private mSettingReady:Z


# direct methods
.method public static synthetic $r8$lambda$YWSDNzCbcvsGIu_0uZAZ_6cgSVE(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->lambda$init$1(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJqYhj86llPZ3QWcNMgPsA39aH8(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->lambda$init$0(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAIArtMuseumCapture(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAIArtMuseumPreview(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAIArtMuseumUI(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandDetector(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mHandDetector:Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 125
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance p1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mCaptureListener:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    .line 534
    new-instance p1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$3;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method private getGoldWatermarkValue()Ljava/lang/String;
    .registers 4

    .line 275
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWatermarkDefaultValueOn:Z

    if-eqz v0, :cond_11

    .line 276
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isInTrOrRuMarket()Z

    move-result v0

    if-nez v0, :cond_11

    .line 277
    const-string v0, "on"

    goto :goto_13

    :cond_11
    const-string v0, "off"

    .line 279
    :goto_13
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v1, :cond_1f

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getGoldWatermarkValue mSettingController is null"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 283
    :cond_1f
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getGoldWatermarkValue dataStore is null"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 289
    :cond_2d
    const-string p0, "key_gold_watermark_normal"

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$init$0(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->userInteractive()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    .line 146
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$init$1(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;)V
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    if-eqz p0, :cond_7

    .line 159
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->updateHandLandmarker(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;)V

    :cond_7
    return-void
.end method

.method private updateHandLandmark()V
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_ai_art_museum"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_ai_art_museum_partial"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "partial_painted_tattoo"

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$2;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->previewStream(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;)V

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->updateHandLandmarkerStatus(Z)V

    return-void

    .line 269
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->previewStream(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewStream$IStreamCallback;)V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->updateHandLandmarkerStatus(Z)V

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 397
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

    .line 402
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method protected getBackMaxZoomRatio()I
    .registers 1

    .line 531
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_5X:I

    return p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 5

    .line 524
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    const/16 v0, 0x8

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x4

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 2

    .line 198
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->algorithmSupport()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    const/4 p0, 0x4

    goto :goto_e

    :cond_d
    move p0, v0

    .line 201
    :goto_e
    invoke-static {v0, p0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 377
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    const-string p1, "key_tran_plugin"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    const-string p1, "key_ai_art_museum"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    const-string p1, "key_gold_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    const-string p1, "key_pro_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    const-string p1, "key_gesture_detection"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    const-string p1, "key_voice_detection"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    const-string p1, "key_fingerprint_capture"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    const-string p1, "key_touch_capture"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    const-string p1, "key_camera_click_zoom"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    const-string p1, "key_shutter_sound_optional"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const-string p1, "key_zoom_eis"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const-string p1, "key_mood_light"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    const-string p1, "key_setting_smart_denoise"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 392
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 1

    .line 372
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumModeRestriction;->getRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 206
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 11

    .line 132
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    move v0, p7

    move-object p7, p2

    .line 134
    new-instance p2, Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

    invoke-interface {p7}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p6

    const-string v1, "key_ai_art_museum"

    invoke-direct {p2, v1, p6}, Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;-><init>(Ljava/lang/String;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 136
    new-instance p6, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-direct {p6, p1, p3, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;)V

    iput-object p6, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    .line 137
    invoke-virtual {p6}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->init()V

    .line 138
    iget-object p6, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p6, v2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->setScreenFormType(II)V

    .line 140
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p6

    if-eqz p6, :cond_2c

    .line 141
    iget-object p6, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    invoke-interface {p3, p6}, Lcom/transsion/camera/app/common/IAppUI;->setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V

    .line 143
    :cond_2c
    new-instance p6, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$$ExternalSyntheticLambda0;

    invoke-direct {p6, p0, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;Lcom/transsion/camera/app/common/IAppUI;)V

    invoke-interface {p3, p6}, Lcom/transsion/camera/app/common/IAppUI;->setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V

    .line 150
    new-instance p6, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-direct {p6, p3, p5, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;Ljava/lang/String;Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController;)V

    iput-object p6, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    .line 151
    invoke-virtual {p6}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->modeInit()V

    .line 152
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-virtual {p3, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateOrientation(I)V

    .line 154
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-virtual {p3, p5}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->setPreviewWindowListener(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;)V

    .line 156
    new-instance p3, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

    invoke-direct {p3, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mHandDetector:Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

    .line 157
    new-instance p5, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$$ExternalSyntheticLambda1;

    invoke-direct {p5, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)V

    invoke-virtual {p3, p5}, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->init(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;)V

    .line 163
    new-instance p5, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    invoke-direct {p5, p4}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    move-object p4, p2

    move-object p2, p1

    .line 165
    new-instance p1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    iget-object p6, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-direct/range {p1 .. p6}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    .line 167
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mCaptureListener:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->setCaptureListener(Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;)V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {p1, p7}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updateOrientation(I)V

    .line 171
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 172
    const-string p1, "key_ai_art_museum_style"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 173
    const-string p1, "key_ai_art_museum_partial"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 174
    const-string p1, "key_ai_art_museum_travel"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_9d

    .line 176
    const-string p1, "key_ai_art_museum_option"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 178
    :cond_9d
    const-string p1, "key_gold_watermark_normal"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 179
    const-string p1, "key_self_timer_status"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public isNeedDeviceCaptureSound()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isShot2ShotEnable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 4

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return p0

    .line 411
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSat()Z

    move-result p0

    return p0
.end method

.method protected needShutterSound()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyPictureTaken([BZIJ)I
    .registers 6

    .line 509
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->pictureTaken([B)V

    .line 511
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_13

    .line 512
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_19

    .line 514
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 517
    :goto_19
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    const/4 p0, -0x1

    return p0
.end method

.method public onFirstSteadyFrame()V
    .registers 1

    .line 342
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onFirstSteadyFrame()V

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->firstSteadyFrame()V

    return-void
.end method

.method public onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 503
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 504
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->captureCompleted()V

    return-void
.end method

.method public onModeCaptureFailed(Z[J)V
    .registers 3

    .line 497
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed(Z[J)V

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->captureFailed()V

    return-void
.end method

.method public onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 4

    .line 491
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 492
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->captureStarted()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 477
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->updateOrientation(I)V

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateOrientation(I)V

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updateOrientation(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 485
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 294
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_b4

    goto :goto_5b

    :sswitch_f
    const-string v0, "key_ai_art_museum_partial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_5b

    :cond_18
    const/4 v1, 0x6

    goto :goto_5b

    :sswitch_1a
    const-string v0, "key_ai_art_museum_travel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_5b

    :cond_23
    const/4 v1, 0x5

    goto :goto_5b

    :sswitch_25
    const-string v0, "key_gold_watermark_normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_5b

    :cond_2e
    const/4 v1, 0x4

    goto :goto_5b

    :sswitch_30
    const-string v0, "key_ai_art_museum_option"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_5b

    :cond_39
    const/4 v1, 0x3

    goto :goto_5b

    :sswitch_3b
    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_5b

    :cond_44
    const/4 v1, 0x2

    goto :goto_5b

    :sswitch_46
    const-string v0, "key_ai_art_museum_style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_5b

    :cond_4f
    const/4 v1, 0x1

    goto :goto_5b

    :sswitch_51
    const-string v0, "key_ai_art_museum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v1, 0x0

    :goto_5b
    packed-switch v1, :pswitch_data_d2

    return-void

    .line 311
    :pswitch_5f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->updatePartial(Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updatePartial(Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updatePartial(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->updateHandLandmark()V

    return-void

    .line 318
    :pswitch_72
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateTravel(Ljava/lang/String;)V

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updateTravel(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->updateHandLandmark()V

    return-void

    .line 328
    :pswitch_80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updateWatermark(Ljava/lang/String;)V

    return-void

    .line 324
    :pswitch_86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->updateAIArtMuseumOption(Ljava/lang/String;)V

    return-void

    .line 332
    :pswitch_8c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->updateSelfTimerStatus(Ljava/lang/String;)V

    return-void

    .line 305
    :pswitch_92
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateStyle(Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updateStyle(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->updateHandLandmark()V

    return-void

    .line 298
    :pswitch_a0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->updateEffect(Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateEffect(Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updateEffect(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->updateHandLandmark()V

    return-void

    nop

    :sswitch_data_b4
    .sparse-switch
        -0x2da399fb -> :sswitch_51
        0xa1e8ef7 -> :sswitch_46
        0x31f2225f -> :sswitch_3b
        0x32a53fef -> :sswitch_30
        0x36fcc541 -> :sswitch_25
        0x3b413694 -> :sswitch_1a
        0x3d390147 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_92
        :pswitch_8c
        :pswitch_86
        :pswitch_80
        :pswitch_72
        :pswitch_5f
    .end packed-switch
.end method

.method public onSettingReady()V
    .registers 6

    .line 211
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSettingReady"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mSettingReady:Z

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_ai_art_museum"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_ai_art_museum_style"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_ai_art_museum_travel"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_ai_art_museum_partial"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {v4, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->updateEffect(Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->updatePartial(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v4, :cond_44

    .line 225
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->settingReady()V

    .line 228
    :cond_44
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-virtual {v4, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateEffect(Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-virtual {v4, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateStyle(Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-virtual {v4, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateTravel(Ljava/lang/String;)V

    .line 231
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updatePartial(Ljava/lang/String;)V

    .line 233
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {v4, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updateEffect(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updateStyle(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updateTravel(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updatePartial(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->getGoldWatermarkValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updateWatermark(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->updateHandLandmark()V

    return-void
.end method

.method protected onShutterClickBefore(I)Z
    .registers 5

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterClickBefore mSettingReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mSettingReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 430
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mSettingReady:Z

    if-eqz v0, :cond_3e

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->shutterClick()Z

    move-result p1

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutterClick consumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public onShutterLongClick(II)Z
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->capturing()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 442
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterLongClick(II)Z

    move-result p0

    return p0
.end method

.method public onThumbNailTypeConfirmed(I[IJ)V
    .registers 5

    return-void
.end method

.method public pause()V
    .registers 1

    .line 423
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->pause()V

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

    .line 416
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->resume()V

    .line 418
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->refresh()V

    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .registers 2

    .line 190
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 184
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 348
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mSettingReady:Z

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->release()V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mHandDetector:Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->unInit()V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->unInit()V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumCapture:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->unInit()V

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->mAIArtMuseumPreview:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->modeUnInit()V

    .line 355
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V

    .line 358
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V

    .line 359
    const-string v0, "key_ai_art_museum"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 360
    const-string v0, "key_ai_art_museum_style"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 361
    const-string v0, "key_ai_art_museum_partial"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 362
    const-string v0, "key_ai_art_museum_travel"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_51

    .line 364
    const-string v0, "key_ai_art_museum_option"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 366
    :cond_51
    const-string v0, "key_gold_watermark_normal"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 367
    const-string v0, "key_self_timer_status"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method
