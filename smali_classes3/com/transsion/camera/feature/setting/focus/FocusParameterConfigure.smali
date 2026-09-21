.class public Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;
.implements Lcom/transsion/camera/feature/setting/focus/IFocusController;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAutoFocusCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

.field private mAutoFocusMoveCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

.field private mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

.field private mCurrentFocusMode:Ljava/lang/String;

.field private mDefaultFocusMode:Ljava/lang/String;

.field private mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mDisableUpdateFocusState:Z

.field private final mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusState:Ljava/lang/String;

.field private mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

.field private mIsAutoFocusTriggered:Z

.field public mIsSupportContinuousVideoFocus:Z

.field private mIsSupportedFocus:Z

.field private final mLock:Ljava/lang/Object;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mPreviewStopped:Z

.field private mSatSupport:Z

.field private mStreamId:I

.field private mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

.field private mSupportedFocusModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoFocusMoveCallback(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusMoveCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraProxy(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/adapter/CameraProxy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentFocusMode(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisableUpdateFocusState(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocus(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/feature/setting/focus/Focus;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusStateListener(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAutoFocusTriggered(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mStreamId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsAutoFocusTriggered(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStreamId(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mStreamId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFocusState(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Ljava/lang/String;J)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateFocusState(Ljava/lang/String;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FocusParameter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/focus/Focus;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    .line 28
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    .line 34
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSatSupport:Z

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mPreviewStopped:Z

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mStreamId:I

    .line 43
    const-string v0, "INACTIVE"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusState:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 289
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$2;-><init>(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusMoveCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    .line 325
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$3;-><init>(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    .line 50
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private applyFocusCapabilities(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 4

    .line 354
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->needApplyFocusCapabilities()Z

    move-result v0

    if-nez v0, :cond_29

    .line 355
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[applyFocusCapabilities] no need update focus capabilities mCurrentFocusMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mIsAutoFocusTriggered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 360
    :cond_29
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    if-eqz v0, :cond_32

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusArea:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusAreas(Ljava/util/List;)V

    .line 363
    :cond_32
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_3b

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringArea:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_3b
    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 267
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private needApplyFocusCapabilities()Z
    .registers 3

    .line 347
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "continuous-video"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "auto"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 109
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSatSupport:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mPreviewStopped:Z

    if-nez v0, :cond_e

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void

    .line 112
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method private updateAfCallback(Lcom/transsion/camera/adapter/CameraProxy;Z)V
    .registers 7

    .line 369
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateAfCallback] + isContinueAf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsAutoFocusTriggered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_28

    .line 372
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusMoveCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy;->setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    goto :goto_2c

    :cond_28
    const/4 p2, 0x0

    .line 374
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy;->setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    .line 376
    :goto_2c
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_52

    .line 377
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusState:Ljava/lang/String;

    const-string v3, "ACTIVE_SCAN"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 378
    const-string p2, "[updateAfCallback] cancelAutoFocus"

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->cancelAutoFocus()V

    .line 381
    :cond_44
    const-string p2, "[updateAfCallback] autoFocus"

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 382
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy;->autoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    .line 383
    invoke-direct {p0, v3, v1, v2}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateFocusState(Ljava/lang/String;J)V

    goto :goto_57

    .line 385
    :cond_52
    const-string p1, "INACTIVE"

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateFocusState(Ljava/lang/String;J)V

    .line 388
    :goto_57
    const-string p0, "[updateAfCallback] -"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 258
    :cond_3
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getMaxNumOfFocusAreas()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_19

    const-string v0, "auto"

    .line 259
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    .line 261
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getMaxNumOfMeteringAreas()I

    move-result p1

    if-lez p1, :cond_23

    move v1, v2

    :cond_23
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    .line 262
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateCapabilities] mFocusAreaSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mMeteringAreaSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateFocusState(Ljava/lang/String;J)V
    .registers 5

    .line 392
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusState:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_5
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    if-eqz p0, :cond_f

    .line 395
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;->onFocusStatusUpdate(Ljava/lang/String;J)V

    goto :goto_16

    :catchall_d
    move-exception p0

    goto :goto_18

    .line 397
    :cond_f
    sget-object p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFocusStateListener is null, can not update focus state"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    :goto_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_d

    throw p0
.end method


# virtual methods
.method public autoFocus()V
    .registers 3

    .line 201
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[autoFocus]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public capture()V
    .registers 1

    return-void
.end method

.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 5

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    .line 92
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 93
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand] configCommand mCurrentFocusMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mSupportedFocusModeList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[configCommand] - mCurrentFocusMode does not supported with mSupportedFocusModeList "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_48
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "continuous-video"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_6c

    .line 103
    :cond_5d
    const-string v0, "auto"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateAfCallback(Lcom/transsion/camera/adapter/CameraProxy;Z)V

    :cond_6b
    return-void

    :cond_6c
    :goto_6c
    const/4 v0, 0x1

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateAfCallback(Lcom/transsion/camera/adapter/CameraProxy;Z)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 5

    .line 74
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 75
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 76
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] mCurrentFocusMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->applyFocusCapabilities(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->notifyModeChanged(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_39
    sget-object p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParameters] mCurrentFocusMode is not supported in current platform"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_40
    const/4 p0, -0x1

    return p0
.end method

.method public disableUpdateFocusState(Z)V
    .registers 2

    .line 251
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    return-void
.end method

.method public getCurrentFocusMode()Ljava/lang/String;
    .registers 4

    .line 240
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentFocusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method public initFocusMode(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[initFocusMode] + "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_4c

    .line 272
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_4c

    .line 276
    :cond_10
    const-string v1, "continuous-picture"

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1b

    .line 277
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_2f

    .line 278
    :cond_1b
    const-string v1, "auto"

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_26

    .line 279
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_2f

    :cond_26
    const/4 v1, 0x0

    .line 281
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    .line 284
    :goto_2f
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initFocusMode] -, mCurrentFocusMode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    return-object p0

    :cond_4c
    :goto_4c
    const/4 p0, 0x0

    return-object p0
.end method

.method public isFocusCanDo()Z
    .registers 5

    .line 152
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isFocusCanDo] + focusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    const-string v3, "infinity"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_41

    .line 158
    :cond_26
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    if-nez v1, :cond_30

    .line 159
    const-string p0, "[isFocusCanDo] - mFocusAreaSupported is false"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 162
    :cond_30
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    if-nez p0, :cond_3a

    .line 163
    const-string p0, "[isFocusCanDo] - mMeteringAreaSupported is false"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 166
    :cond_3a
    const-string p0, "[isFocusCanDo] - return true"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 154
    :cond_41
    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isFocusCanDo] - focusMode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public isSupportedFocusModesEqual(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 405
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 406
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    return v0
.end method

.method public overrideFocusMode(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideFocusMode] currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",mCurrentFocusMode ="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 191
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    if-eq p2, p1, :cond_55

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overrideFocusMode, requestChangeCommand currentValue:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_55
    return-void
.end method

.method public resetAutoFocusTriggered()V
    .registers 2

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsAutoFocusTriggered:Z

    return-void
.end method

.method public restoreContinue()V
    .registers 6

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->isAutoFocusMode()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_45

    .line 211
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->changeFocusModeWhileRecord()Z

    move-result v1

    const-string v2, "continuous-video"

    if-eqz v1, :cond_20

    .line 214
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    iget-boolean v1, v1, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsRecording:Z

    if-eqz v1, :cond_20

    move-object v0, v2

    .line 218
    :cond_20
    sget-object v1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreContinue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    const-string v3, "continuous-picture"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 220
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_46

    :cond_45
    :goto_45
    return-void

    .line 221
    :cond_46
    :goto_46
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreContinue, sendSettingChangeRequest and requestChangeCommand, value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->sendSettingChangeRequest()V

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_d

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    .line 56
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportContinuousVideoFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportContinuousVideoFocus:Z

    .line 57
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSatSupport:Z

    .line 58
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->updateCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 59
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    if-eqz p1, :cond_22

    .line 61
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    .line 63
    :cond_22
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initPlatformSupportedValues] supportedFocusModeList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    if-eqz p1, :cond_4c

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->initFocusMode(Ljava/util/List;)Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDefaultFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_4c
    return-void
.end method

.method public setFocusStateListener(Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;)V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    .line 146
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public updateFocusArea(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;)V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocusArea:Ljava/util/List;

    .line 173
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringArea:Ljava/util/List;

    return-void
.end method

.method public updateFocusCallback()V
    .registers 4

    .line 230
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFocusCallback requestChangeCommand: key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)Z
    .registers 5

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 179
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateFocusMode] currentValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentFocusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public updatePreviewState(Z)V
    .registers 2

    .line 412
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->mPreviewStopped:Z

    return-void
.end method
