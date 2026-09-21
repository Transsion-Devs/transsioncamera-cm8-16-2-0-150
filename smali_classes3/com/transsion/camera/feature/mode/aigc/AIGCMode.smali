.class public Lcom/transsion/camera/feature/mode/aigc/AIGCMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;"
    }
.end annotation


# static fields
.field private static final FACE_COUNT_1:I = 0x1


# instance fields
.field private mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

.field private mAIGCPreview:Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;

.field private mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

.field private final mCaptureListener:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

.field private mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

.field private final mFaceDetectCallback:Lcom/transsion/camera/feature/mode/aigc/monitor/IFaceDetectCallback;

.field private mFaceMonitor:Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private mSettingReady:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAIGCUI(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/feature/mode/aigc/AIGCUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 164
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mPreviewRect:Landroid/graphics/Rect;

    .line 96
    new-instance p1, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$1;-><init>(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mCaptureListener:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    .line 129
    new-instance p1, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$2;-><init>(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 143
    new-instance p1, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$3;-><init>(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mFaceDetectCallback:Lcom/transsion/camera/feature/mode/aigc/monitor/IFaceDetectCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;[B)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 328
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

    .line 333
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method protected getBackMaxZoomRatio()I
    .registers 1

    .line 466
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor13M:Z

    if-nez p0, :cond_14

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor8M:Z

    if-eqz p0, :cond_11

    goto :goto_14

    .line 469
    :cond_11
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    return p0

    .line 467
    :cond_14
    :goto_14
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_4X:I

    return p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 5

    .line 459
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

    .line 301
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    const/4 p0, 0x4

    goto :goto_e

    :cond_d
    move p0, v0

    .line 304
    :goto_e
    invoke-static {v0, p0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 309
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    const-string p1, "key_tran_plugin"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    const-string p1, "key_aigc_effect_2"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    const-string p1, "key_face_detection"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    const-string p1, "key_face_detection_enhance"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    const-string p1, "key_gold_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    const-string p1, "key_pro_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const-string p1, "key_taint_detection"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    const-string p1, "key_camera_click_zoom"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const-string p1, "key_shutter_sound_optional"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const-string p1, "key_mood_light"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    const-string p1, "key_fingerprint_capture"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const-string p1, "key_touch_capture"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 323
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 1

    .line 289
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/AIGCModeRestriction;->getRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 294
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x10000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getTargetRatio()D
    .registers 3

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 12

    .line 171
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    move-object v0, p2

    move-object v1, p3

    move v2, p7

    .line 173
    new-instance p6, Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    const-string v3, "key_aigc_effect_2"

    invoke-direct {p6, v3, p2}, Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;-><init>(Ljava/lang/String;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 175
    new-instance p2, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    invoke-direct {p2, p1, v1, v0, p6}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    .line 176
    invoke-virtual {p2, p5}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->init(Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    iget p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p2, p3, v2}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->setScreenFormType(II)V

    .line 179
    new-instance p2, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;

    invoke-direct {p2, v1}, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCPreview:Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;

    .line 180
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->modeInit()V

    .line 182
    new-instance p2, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;

    invoke-direct {p2, p4}, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mFaceMonitor:Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;

    .line 184
    new-instance p2, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    invoke-direct {p2, p4}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    move-object p2, p1

    .line 186
    new-instance p1, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCPreview:Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    iget-object p7, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mFaceMonitor:Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;

    invoke-direct/range {p1 .. p7}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot;Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    .line 188
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mCaptureListener:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->setCaptureListener(Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;)V

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 190
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->updateOrientation(I)V

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 194
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 195
    const-string p1, "key_gold_watermark"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 196
    const-string p1, "key_self_timer_status"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 197
    const-string p1, " key_preview_cover_ui "

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

    .line 342
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

    .line 444
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->pictureTaken([B)V

    .line 446
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_13

    .line 447
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_19

    .line 449
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 452
    :goto_19
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    const/4 p0, -0x1

    return p0
.end method

.method public onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 439
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->captureCompleted()V

    return-void
.end method

.method public onModeCaptureFailed(Z[J)V
    .registers 3

    .line 432
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed(Z[J)V

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->captureFailed()V

    return-void
.end method

.method public onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 4

    .line 426
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->captureStarted()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 413
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->onOrientationChanged(I)V

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->updateOrientation(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 420
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 242
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_5e

    goto :goto_3a

    :sswitch_f
    const-string v0, "key_gold_watermark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_3a

    :cond_18
    const/4 v1, 0x3

    goto :goto_3a

    :sswitch_1a
    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_3a

    :cond_23
    const/4 v1, 0x2

    goto :goto_3a

    :sswitch_25
    const-string v0, " key_preview_cover_ui "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_3a

    :cond_2e
    const/4 v1, 0x1

    goto :goto_3a

    :sswitch_30
    const-string v0, "key_aigc_effect_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    packed-switch v1, :pswitch_data_70

    return-void

    .line 250
    :pswitch_3e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->updateWatermark(Ljava/lang/String;)V

    return-void

    .line 254
    :pswitch_44
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->updateSelfTimerStatus(Ljava/lang/String;)V

    return-void

    .line 258
    :pswitch_4a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    const-string/jumbo p1, "value_preview_cover_guide_ui_show"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->previewCoverGuideUIUpdated(Z)V

    return-void

    .line 246
    :pswitch_57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->updateTemplate(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_5e
    .sparse-switch
        -0x4fbfd601 -> :sswitch_30
        0x1ca5f9cd -> :sswitch_25
        0x31f2225f -> :sswitch_1a
        0x40385125 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_57
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
    .end packed-switch
.end method

.method public onSettingReady()V
    .registers 5

    .line 214
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSettingReady"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mSettingReady:Z

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mFaceMonitor:Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->startMonitor()V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mFaceMonitor:Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mFaceDetectCallback:Lcom/transsion/camera/feature/mode/aigc/monitor/IFaceDetectCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->setFaceDetectCallback(Lcom/transsion/camera/feature/mode/aigc/monitor/IFaceDetectCallback;)V

    .line 223
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_26

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->settingReady()V

    .line 227
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_aigc_effect_2"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->updateTemplate(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 231
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_gold_watermark_normal"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onSettingReady], valueNormal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->updateWatermark(Ljava/lang/String;)V

    return-void

    .line 236
    :cond_68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_gold_watermark"

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->updateWatermark(Ljava/lang/String;)V

    return-void
.end method

.method protected onShutterClickBefore(I)Z
    .registers 5

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterClickBefore mSettingReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mSettingReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 361
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mSettingReady:Z

    if-eqz v0, :cond_3e

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 362
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->shutterClick()Z

    move-result p1

    .line 363
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

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->capturing()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 373
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

    .line 354
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->pause()V

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

    .line 347
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->resume()V

    .line 349
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIGCManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIGCManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIGCManager;->refresh()V

    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .registers 2

    .line 208
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 202
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 268
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mSettingReady:Z

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;->release()V

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->unInit()V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCCapture:Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->unInit()V

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mAIGCPreview:Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->modeUnInit()V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mFaceMonitor:Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->stopMonitor()V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mFaceMonitor:Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->setFaceDetectCallback(Lcom/transsion/camera/feature/mode/aigc/monitor/IFaceDetectCallback;)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 277
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V

    .line 280
    :cond_37
    const-string v0, "key_aigc_effect_2"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 281
    const-string v0, "key_gold_watermark"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 282
    const-string v0, "key_self_timer_status"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 283
    const-string v0, " key_preview_cover_ui "

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAIGCEffectValue(Ljava/lang/String;)V

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
