.class public Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;",
        "Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;"
    }
.end annotation


# instance fields
.field private isSupportFingerprintCapture:Z

.field private final m3AController:Lcom/transsion/camera/feature/common/I3AController;

.field private final mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

.field private mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field private final mDirectionListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

.field private mIsSupportAELock:Z

.field private mPreviewSize:Landroid/util/Size;

.field private final mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

.field private final mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

.field private final mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

.field private mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

.field private mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

.field private mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

.field private mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAeAfLockState(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideSelfiePreview(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAeAfLockState(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 236
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mIsSupportAELock:Z

    .line 73
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    .line 143
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    .line 163
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    .line 175
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    .line 189
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->m3AController:Lcom/transsion/camera/feature/common/I3AController;

    .line 211
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mDirectionListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;[B)V
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;Z)V
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;Z)V
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)I
    .registers 1

    .line 59
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private updateOrientation(I)V
    .registers 4

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->updateOrientation(I)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/common/BasePreview;->updateOrientation(I)V

    .line 336
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 337
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x0

    .line 340
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateOrientation(I)V

    return-void
.end method

.method private updateThumbnailSize(I)V
    .registers 5

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2a

    if-eqz p1, :cond_2a

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_2a

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    iget p0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void

    .line 355
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
        }
    .end annotation

    .line 488
    new-instance p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/NullImageProcessor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method protected getContinuousShotNotSupportMessage()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 2

    const/4 p0, 0x1

    const/4 v0, 0x4

    .line 473
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 278
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    const-string p1, "key_shutter_sound_optional"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 281
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 4

    .line 459
    invoke-static {}, Lcom/transsion/camera/feature/wideselfie/WideSelfieRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x1

    .line 460
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 461
    iget-boolean v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->isSupportFingerprintCapture:Z

    if-nez v1, :cond_16

    .line 462
    const-string v1, "key_fingerprint_capture"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_16
    iget-boolean p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mIsSupportAELock:Z

    if-nez p0, :cond_21

    .line 465
    const-string p0, "key_exposure"

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_21
    invoke-static {}, Lcom/transsion/camera/feature/wideselfie/WideSelfieRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 8

    return-object p5
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 438
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_21

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    if-eqz v0, :cond_21

    .line 441
    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 443
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 444
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3f

    :cond_33
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    const/4 v2, 0x1

    .line 445
    invoke-super {p0, p1, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSizeMatch64(Ljava/util/List;DZ)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 447
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreviewSize mPreviewSize= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method protected getScreenSize()Landroid/util/Size;
    .registers 4

    .line 453
    new-instance p0, Landroid/util/Size;

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 454
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 273
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 9

    .line 243
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 245
    new-instance p6, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-direct {p6, p3}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    .line 246
    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p7, "key_fold_switch_preview"

    invoke-interface {p6, p7}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 247
    iget-object p7, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-virtual {p7, p6}, Lcom/transsion/camera/feature/common/BaseUISpec;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p7

    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->is_support_ae_lock:I

    invoke-virtual {p7, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p7

    iput-boolean p7, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mIsSupportAELock:Z

    .line 250
    new-instance p7, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-direct {p7, p3, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;)V

    iput-object p7, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    .line 251
    invoke-virtual {p7}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->initView()V

    .line 252
    iget-object p7, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {p7, p6}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 254
    new-instance p6, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    iget-object p7, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-static {p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p6, p3, p7, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;Z)V

    iput-object p6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    .line 255
    invoke-virtual {p6}, Lcom/transsion/camera/feature/common/BasePreview;->modeInit()V

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p6, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->panorama_support_fingerprint_capture:I

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->isSupportFingerprintCapture:Z

    .line 257
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->m3AController:Lcom/transsion/camera/feature/common/I3AController;

    invoke-direct {p1, p5, p6, p4, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/common/I3AController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    const/4 p2, 0x1

    .line 259
    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->init(Z)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setThumbnailListener(Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;)V

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mDirectionListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setDirectionListener(Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;)V

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStatusListener;)V

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setThumbnailOperator(Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;)V

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setStreamStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;)V

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 268
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected isShot2ShotEnable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public needUnintModeWhenPause()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 6

    .line 533
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 534
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 535
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 536
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr p1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr p1, v2

    float-to-int p1, p1

    if-ge p1, v1, :cond_26

    sub-int/2addr v1, p1

    .line 540
    div-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 543
    :cond_26
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    if-eqz p1, :cond_3c

    .line 544
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 545
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V

    .line 547
    :cond_3c
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    if-eqz p1, :cond_43

    .line 548
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 550
    :cond_43
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateThumbnailSize(I)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 397
    :cond_a
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 419
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V

    .line 422
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateThumbnailSize(I)V

    .line 423
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateOrientation(I)V

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 5

    .line 428
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 429
    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    .line 430
    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->onScreenFormChanged(I)V

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V

    .line 432
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateThumbnailSize(I)V

    .line 433
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateOrientation(I)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 303
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "key_fold_switch_preview"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    if-eqz p1, :cond_12

    .line 306
    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseUISpec;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 308
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    if-eqz p0, :cond_19

    .line 309
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public onSettingReady()V
    .registers 5

    .line 316
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 317
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    .line 318
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V

    .line 319
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateThumbnailSize(I)V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->createDataStream()V

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_23

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    .line 324
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_23
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 5

    .line 402
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1a

    .line 403
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onShutterClick space in not enough"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    const/4 p0, 0x0

    return p0

    .line 408
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2b

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2

    .line 413
    :cond_2b
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->shutterClick()V

    return p2
.end method

.method public pause()V
    .registers 3

    .line 381
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_c

    .line 383
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    .line 384
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 386
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->pause()V

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->pause()V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->destroyDataStream()V

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

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

    .line 372
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->resume()V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->resume()V

    .line 376
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateOrientation(I)V

    return-void
.end method

.method public setModeChangeFlag(Z)V
    .registers 3

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    if-nez v0, :cond_c

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setModeChangeFlag mWideSelfieUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 497
    :cond_c
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/common/BaseUI;->setModeChangeFlag(Z)V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 297
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 521
    iget-boolean v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mIsSupportAELock:Z

    if-eqz v0, :cond_9

    .line 522
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0

    .line 524
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_12

    .line 525
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 527
    :cond_12
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method protected supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 513
    iget-boolean v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mIsSupportAELock:Z

    if-eqz v0, :cond_9

    .line 514
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0

    .line 516
    :cond_9
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .registers 3

    .line 286
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->unInitView()V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->modeUnInit()V

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->unInit()V

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 3

    .line 366
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method
