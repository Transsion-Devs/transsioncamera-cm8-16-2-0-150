.class public Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;"
    }
.end annotation


# static fields
.field private static final DELAY_STOP_SHUTTER_PROCESS_TIME:I = 0x7d0

.field private static final MESSAGE_DELAY_SHUTTER_PROCESS_END:I = 0x1

.field private static final MESSAGE_SUPER_NIGHT_LITE_ANIM_END:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mSaveHighQualityJpegDone:Z


# instance fields
.field cameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

.field private mClosestMP:Ljava/lang/Integer;

.field private mLargest:Landroid/util/Size;

.field private final mTZShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

.field private final superDefinitionValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCaptureHandler(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClosestMP(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Ljava/lang/Integer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mClosestMP:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindSuitableInfo(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Ljava/lang/Integer;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->findSuitableInfo()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideTip(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->hideTip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTip(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->showTip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmSaveHighQualityJpegDone()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mSaveHighQualityJpegDone:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmSaveHighQualityJpegDone(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mSaveHighQualityJpegDone:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 71
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "UltraHDMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 p1, 0x32

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 p1, 0x40

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 p1, 0x6c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 p1, 0xc8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->superDefinitionValues:Ljava/util/List;

    .line 92
    new-instance p1, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;-><init>(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->cameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    .line 393
    new-instance p1, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$2;-><init>(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mTZShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private findSuitableInfo()Ljava/lang/Integer;
    .registers 7

    .line 271
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->getLargestSupportedPictureSize()Landroid/util/Size;

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mClosestMP:Ljava/lang/Integer;

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mLargest:Landroid/util/Size;

    if-eqz v0, :cond_65

    .line 274
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mLargest:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    .line 276
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->superDefinitionValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v2, 0x4f000000

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 277
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v2

    if-gez v5, :cond_25

    .line 280
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mClosestMP:Ljava/lang/Integer;

    move v2, v4

    goto :goto_25

    .line 283
    :cond_44
    sget-object v1, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findSuitableInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mClosestMP:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_6c

    .line 285
    :cond_65
    sget-object v0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "findSuitableInfo largest is null."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 287
    :goto_6c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mClosestMP:Ljava/lang/Integer;

    return-object p0
.end method

.method private hideTip()V
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    return-void
.end method

.method private showTip()V
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 231
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

    .line 236
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 70
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method protected doShutterClick(II)Z
    .registers 6

    .line 360
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doShutterClick(II)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 361
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->isSupport200M()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->isSuperNightOn()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    if-eqz v0, :cond_3e

    const/16 v0, 0xa

    if-ne p2, v0, :cond_3e

    .line 363
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->getShutterTypeSelftimerOff()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 364
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p2, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 365
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/IAppUI;->setShutterEnabled(Z)V

    :cond_3e
    return p1
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 240
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackTeleCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 241
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    const/4 v0, 0x2

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 3

    .line 126
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_11

    .line 127
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_11
    move p0, v0

    goto :goto_15

    :cond_13
    const/16 p0, 0x8

    .line 135
    :goto_15
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 p0, 0x3

    .line 138
    :cond_1c
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x4

    .line 141
    :cond_27
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getLargestSupportedPictureSize()Landroid/util/Size;
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStreamIds()[I

    move-result-object v1

    if-eqz v1, :cond_18

    .line 294
    array-length v2, v1

    if-lez v2, :cond_18

    const/4 v0, 0x0

    .line 295
    aget v0, v1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    :cond_18
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLargestSupportedPictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mLargest:Landroid/util/Size;

    return-object v0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 4

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    const-string v0, "key_tran_plugin"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v0, "key_super_definition"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v0, "key_high_resolution"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v0, "key_asd"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v0, "key_hdr"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v0, "key_mood_light"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v0, "key_voice_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v0, "key_taint_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v0, "key_super_night_lite"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v0, "key_super_night_light"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v0, "key_edit_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v0, "key_gold_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v0, "key_pro_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v0, "key_shutter_sound_optional"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v0, "key_fingerprint_capture"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v0, "key_touch_capture"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v0, "key_airaw_tf"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v0

    const/16 v1, 0x68

    if-ge v0, v1, :cond_67

    .line 177
    const-string v0, "key_super_resolution"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_67
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->supportPostAlgo()Z

    move-result p0

    if-nez p0, :cond_75

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-eqz p0, :cond_7a

    .line 180
    :cond_75
    const-string p0, "ai_raw_lite"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_7a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 183
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 3

    .line 151
    invoke-static {}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 152
    invoke-static {}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 146
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x800000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    const/16 p0, 0x14

    return p0
.end method

.method public getUltraHDTips()V
    .registers 5

    .line 304
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->findSuitableInfo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_12

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 310
    :cond_12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my_MM"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 311
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/ultrahd/R$string;->ultrahd_mode_tips:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 313
    :cond_39
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/ultrahd/R$string;->ultrahd_mode_tips:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_49
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 87
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->cameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 89
    new-instance p1, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    return-void
.end method

.method protected isMainZoom2XSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDeviceCaptureSound()Z
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_night_lite"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 265
    const-string p0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 267
    :cond_11
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isNeedDeviceCaptureSound()Z

    move-result p0

    return p0
.end method

.method protected isShot2ShotEnable()Z
    .registers 2

    .line 326
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->isSupport200M()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 329
    :cond_8
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result p0

    return p0
.end method

.method protected isSuperDefinitionOn()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isSuperNightOn()Z
    .registers 2

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_super_night_lite"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 335
    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method protected isSupport200M()Z
    .registers 1

    .line 321
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperDefinition200mSupport:Z

    return p0
.end method

.method public onConfigBeforeStartPreview()V
    .registers 2

    .line 388
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onConfigBeforeStartPreview()V

    .line 389
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->isSupport200M()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mTZShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    :cond_10
    return-void
.end method

.method public onModeCaptureFailed(Z[J)V
    .registers 4

    .line 374
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed(Z[J)V

    .line 375
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    const/16 p2, 0xa

    const/4 v0, 0x1

    if-ne p1, p2, :cond_c

    move p1, v0

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 376
    :goto_d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->isSupport200M()Z

    move-result p2

    if-eqz p2, :cond_2e

    if-nez p1, :cond_2e

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    if-eqz p1, :cond_22

    .line 378
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->setShutterEnabled(Z)V

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_2e
    return-void
.end method

.method protected onShutterClickBefore(I)Z
    .registers 8

    .line 340
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 341
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->isSupport200M()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->isSuperNightOn()Z

    move-result v1

    if-nez v1, :cond_45

    const/4 v1, 0x0

    .line 342
    sput-boolean v1, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mSaveHighQualityJpegDone:Z

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1c

    move p1, v3

    goto :goto_1d

    :cond_1c
    move p1, v1

    .line 344
    :goto_1d
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    if-eqz v2, :cond_45

    if-nez p1, :cond_45

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->getShutterTypeSelftimerOff()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {p1, v5, v2, v4}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setShutterEnabled(Z)V

    :cond_45
    return v0
.end method

.method public pause()V
    .registers 5

    .line 203
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 204
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->hideTip()V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    .line 206
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->mCaptureHandler:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    :cond_14
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 210
    :goto_1d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->isSupport200M()Z

    move-result v3

    if-eqz v3, :cond_39

    if-nez v0, :cond_39

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    if-ne v0, v1, :cond_34

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 214
    :cond_34
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/IAppUI;->setShutterEnabled(Z)V

    :cond_39
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

    .line 198
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    return-void
.end method

.method public supportPostAlgo()Z
    .registers 1

    .line 193
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result p0

    return p0
.end method

.method public supportPostAlgoDeferRequest()Z
    .registers 2

    .line 188
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportBackgroundShot2shot:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->supportPostAlgo()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .registers 2

    .line 220
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 221
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->hideTip()V

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    return-void
.end method
