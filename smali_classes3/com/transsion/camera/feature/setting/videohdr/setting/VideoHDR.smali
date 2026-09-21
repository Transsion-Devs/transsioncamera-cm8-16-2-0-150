.class public Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActiveRectangle:Landroid/graphics/Rect;

.field private mAlgoScene:Ljava/lang/String;

.field private mBackLongFocusSupport360Hdr:Z

.field private mBackWideSupport360Hdr:Z

.field private mDHdrAndRawSuperNightBothSupport:Z

.field private mIgnoreFrame:I

.field private mIsFlashFired:Z

.field private mIsModeSupport:Z

.field private mIsPreviewStarted:Z

.field private mIsVideoRecording:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$StatusChangeListener;

.field private mVideoAsdSupport:Z

.field public final mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

.field private mVideoHDRParameterConfigure:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

.field protected mVideoSuperNightBvLimit:I

.field protected mVideoSuperNightOutBvLimit:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mActiveRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDHdrAndRawSuperNightBothSupport(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mDHdrAndRawSuperNightBothSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFlashFired(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsFlashFired:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoHDRParameterConfigure(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoHDRParameterConfigure:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveRectangle(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mActiveRectangle:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAlgoScene(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mAlgoScene:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFlashFired(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsFlashFired:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPreviewStarted(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsPreviewStarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVideoRecording(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsVideoRecording:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestChangeCommand(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->requestChangeCommand()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoHDR"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsModeSupport:Z

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsPreviewStarted:Z

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsFlashFired:Z

    const/16 v1, -0x14

    .line 66
    iput v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoSuperNightBvLimit:I

    .line 67
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoSuperNightOutBvLimit:I

    .line 68
    new-instance v1, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$StatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$StatusChangeListener;

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mBackWideSupport360Hdr:Z

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mBackLongFocusSupport360Hdr:Z

    .line 75
    new-instance v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$1;-><init>(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 96
    new-instance v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$2;-><init>(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private static final getCommonKey()Ljava/lang/String;
    .registers 1

    .line 444
    const-string v0, "key_com_video_hdr"

    return-object v0
.end method

.method private handleRestriction(Z)V
    .registers 12

    .line 448
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRRestriction;->getVideoHDRRestriction(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_cc

    .line 450
    const-string v1, "key_video_quality"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "key_anti_video"

    const-string v5, "off"

    const-string v6, "key_super_anti_video"

    const-string/jumbo v7, "value_change_off"

    const-string v8, "null"

    if-eqz v3, :cond_94

    const/4 v3, 0x6

    .line 452
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_45

    const/4 v9, 0x5

    .line 453
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 454
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v8}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :cond_45
    if-eqz p1, :cond_83

    .line 457
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mDHdrAndRawSuperNightBothSupport:Z

    if-eqz p1, :cond_7d

    .line 458
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 459
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7d

    iget p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSatNewStreamId:I

    .line 460
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 461
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, v6, v7, v8}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_7d
    const-string/jumbo p1, "value_change_on"

    invoke-virtual {v0, v1, p1, v8}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_83
    :goto_83
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mDHdrAndRawSuperNightBothSupport:Z

    if-eqz p1, :cond_a9

    .line 468
    const-string p1, "key_video_enhance"

    const-string v1, "off,on"

    invoke-virtual {v0, p1, v5, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string p1, "key_video_super_night"

    invoke-virtual {v0, p1, v5, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    .line 471
    :cond_94
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a9

    if-eqz p1, :cond_a9

    .line 472
    invoke-virtual {v0, v1, v7, v8}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, v4, v7, v8}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, v6, v7, v8}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_a9
    :goto_a9
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoHDRParameterConfigure:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->isVideoSuperNightSupport()Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 477
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 479
    :cond_b4
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoAsdSupport:Z

    if-nez p1, :cond_c7

    .line 480
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_360_video_hdr"

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    :cond_c7
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_cc
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private requestChangeCommand()V
    .registers 4

    .line 389
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestChangeCommand] , value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoAsdSupport:Z

    if-nez v0, :cond_38

    .line 391
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoHDRParameterConfigure:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoHDRInfoCallback:Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V

    goto :goto_38

    .line 394
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoHDRParameterConfigure:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V

    .line 397
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_43

    .line 398
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method private storeValue(Ljava/lang/String;)V
    .registers 5

    .line 438
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeValue, currentValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method public beforeUnInit()V
    .registers 6

    .line 198
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->beforeUnInit()V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "null"

    if-eqz v0, :cond_22

    .line 200
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "key_360_video_hdr"

    const-string v4, "off"

    invoke-direct {v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_video_quality"

    const-string/jumbo v4, "value_change_off"

    .line 201
    invoke-virtual {v2, v3, v4, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 200
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 203
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_45

    .line 204
    const-string v2, "key_quality_recover_default"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_anti_video_recover_default"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_super_anti_video_recover_default"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getAlgoScene()Ljava/lang/String;
    .registers 1

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mAlgoScene:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 258
    const-string p0, "key_360_video_hdr"

    return-object p0
.end method

.method protected getKeyForScreenPocket()Ljava/lang/String;
    .registers 2

    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "screen_pocket_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getCommonKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoHDRParameterConfigure:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    if-nez v0, :cond_f

    .line 273
    new-instance v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoHDRParameterConfigure:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    .line 275
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoHDRParameterConfigure:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 2

    .line 352
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsModeSupport:Z

    if-eqz v0, :cond_7

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
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

    .line 253
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 347
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

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 170
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoSuperNightBvLimit:I

    .line 169
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->getVideoSuperNightBvDebug(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoSuperNightBvLimit:I

    .line 171
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoSuperNightOutBvLimit:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoSuperNightOutBvLimit:I

    .line 172
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mBackWideSupport360Hdr:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mBackWideSupport360Hdr:Z

    .line 173
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mBackLongFocusSupport360Hdr:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mBackLongFocusSupport360Hdr:Z

    .line 174
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoAsdSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoAsdSupport:Z

    .line 175
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDHdrAndRawSuperNightBothSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mDHdrAndRawSuperNightBothSupport:Z

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_45

    .line 177
    const-string p1, "key_com_video_hdr"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 178
    const-string p1, "key_record_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_45
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 8
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

    .line 212
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initValueAndSupport] supportList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", defaultValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 218
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValueForScreenPocket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 220
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getCommonKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_44
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mDHdrAndRawSuperNightBothSupport:Z

    if-nez v1, :cond_65

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->unSupportVideoHDR()Z

    move-result v1

    if-nez v1, :cond_65

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "off"

    .line 224
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_video_enhance"

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    move-object v0, v2

    .line 227
    :cond_65
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    .line 229
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mBackWideSupport360Hdr:Z

    if-nez p1, :cond_75

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isBackMainCamera()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 230
    :cond_75
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->storeValue(Ljava/lang/String;)V

    goto :goto_7c

    .line 233
    :cond_79
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->storeValue(Ljava/lang/String;)V

    .line 235
    :cond_7c
    :goto_7c
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    return-void
.end method

.method public isBackLongFocusSupport360Hdr()Z
    .registers 1

    .line 500
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mBackLongFocusSupport360Hdr:Z

    return p0
.end method

.method public isBackMainCamera()Z
    .registers 5

    .line 372
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 373
    sget-object v1, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentCameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , mSatNewStreamId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSatNewStreamId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , getCameraIdBeforeSAT\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraIdBeforeSAT()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 375
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSatNewStreamId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 377
    :cond_49
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBackWideSupport360Hdr()Z
    .registers 1

    .line 496
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mBackWideSupport360Hdr:Z

    return p0
.end method

.method public isDHdrAndRawSuperNightBothSupport()Z
    .registers 1

    .line 504
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mDHdrAndRawSuperNightBothSupport:Z

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 368
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsModeSupport:Z

    return p0
.end method

.method public isPreviewStarted()Z
    .registers 1

    .line 385
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsPreviewStarted:Z

    return p0
.end method

.method public isQualifiedToRecoverQuality()Z
    .registers 2

    .line 487
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase;

    if-eqz p0, :cond_1e

    .line 489
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 490
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->compareQuality(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public isVideoAsdSupport()Z
    .registers 1

    .line 381
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoAsdSupport:Z

    return p0
.end method

.method public isVideoEnhanceOn()Z
    .registers 3

    .line 267
    const-string v0, "key_video_enhance"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "key_video_enhance_yuv"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method onBVChanged(I)V
    .registers 6

    .line 412
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsVideoRecording:Z

    if-eqz v0, :cond_6

    goto/16 :goto_a2

    .line 416
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const-string v0, "key_video_enhance"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "key_video_enhance_yuv"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    :cond_2a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsPreviewStarted:Z

    if-eqz v0, :cond_a2

    .line 419
    iget v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoSuperNightBvLimit:I

    const-string/jumbo v2, "video_hdr bv value = "

    const-string v3, "key_360_video_hdr"

    if-gt p1, v0, :cond_6c

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mAlgoScene:Ljava/lang/String;

    const-string v1, "off"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 421
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mAlgoScene:Ljava/lang/String;

    .line 422
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v0, "key_video_hdr_normal"

    invoke-virtual {p1, v3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void

    .line 426
    :cond_6c
    iget v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoSuperNightOutBvLimit:I

    if-lt p1, v0, :cond_a2

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mAlgoScene:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 428
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mAlgoScene:Ljava/lang/String;

    .line 429
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v0, "key_video_hdr_scene"

    invoke-virtual {p1, v3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .registers 2

    .line 246
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 247
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsModeSupport:Z

    const/4 p1, 0x0

    .line 248
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mAlgoScene:Ljava/lang/String;

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 240
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 298
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_36

    .line 301
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 302
    sget-object v0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->storeValue(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 304
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->handleRestriction(Z)V

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoHDRParameterConfigure:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->sendSettingChangeRequest()V

    .line 306
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->requestChangeCommand()V

    :cond_36
    :goto_36
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
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

    .line 313
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 314
    sget-object v1, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[overrideValues] headerKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,currentValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,lastValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", supportValues: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isModeSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isModeSupport()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_72

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 317
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "key_360_video_hdr"

    invoke-direct {v3, v4, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_video_quality"

    .line 318
    const-string v5, "override_values_off"

    const-string v6, "null"

    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_anti_video"

    .line 319
    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "key_super_anti_video"

    .line 320
    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 317
    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_72
    if-eqz p2, :cond_c1

    .line 322
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isModeSupport()Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 323
    const-string v2, "key_com_video_hdr"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 324
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 326
    :cond_86
    const-string/jumbo v2, "wide_camera"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 327
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 328
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 329
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 333
    :cond_b2
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 335
    :cond_b6
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->storeValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 336
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->handleRestriction(Z)V

    .line 337
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->requestChangeCommand()V

    return-void

    .line 341
    :cond_c1
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 360
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    const/4 v0, 0x0

    .line 361
    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIgnoreFrame:I

    const/4 v1, 0x0

    .line 362
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mAlgoScene:Ljava/lang/String;

    .line 363
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsVideoRecording:Z

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 6

    .line 280
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_20

    .line 281
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    move v0, v1

    .line 283
    :goto_21
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->isQualifiedToRecoverQuality()Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v2, :cond_38

    .line 284
    const-string v3, "key_quality_recover_default"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    :cond_38
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mIsModeSupport:Z

    if-eqz v2, :cond_73

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 288
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->handleRestriction(Z)V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoHDRParameterConfigure:Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDRParameterConfigure;->isVideoSuperNightSupport()Z

    move-result v0

    if-nez v0, :cond_73

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->mVideoAsdSupport:Z

    if-nez v0, :cond_73

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_360_video_hdr"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6e

    const-string p0, "key_video_hdr_scene"

    goto :goto_70

    :cond_6e
    const-string p0, "key_video_hdr_normal"

    .line 290
    :goto_70
    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_73
    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 184
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_11

    .line 186
    const-string v0, "key_com_video_hdr"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 187
    const-string v0, "key_record_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videohdr/setting/VideoHDR;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method unSupportVideoHDR()Z
    .registers 7

    const/4 v0, 0x6

    .line 403
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    .line 404
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_video_quality"

    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    const/4 v1, 0x5

    .line 405
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    .line 406
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    const/4 v1, 0x4

    .line 407
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    .line 408
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v5, v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 407
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    const/4 p0, 0x1

    return p0

    :cond_5b
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
