.class public Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;


# static fields
.field private static final CLOSE_SCREEN_FLASH_DELAY:J = 0x7d0L

.field private static final SCREEN_FLASH_TIME_OUT:I = 0x1f40

.field private static final SETTING_KEY:Ljava/lang/String; = "key_screen_flash"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALUE_AUTO:Ljava/lang/String; = "auto"

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mHandler:Landroid/os/Handler;

.field private mLastTimestamp:J

.field private mOldState:Z

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

.field private mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

.field private mShowState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTimeOutRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmScreenFlashParameterConfigure(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misFlashRequired(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFlashRequired()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misLedFlashSupport(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isLedFlashSupport()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misScreenFlashFireSupport(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashFireSupport()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misScreenFlashSupport(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupport()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateCaptureState(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateCaptureState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFlashRequiredState(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateFlashRequiredState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFlashState(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateFlashState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScreenFlashState(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScreenFlash"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mShowState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 88
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 218
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$3;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mTimeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private isAllowedChangeState(Z)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    .line 174
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mOldState:Z

    if-nez v1, :cond_10

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mLastTimestamp:J

    .line 176
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mOldState:Z

    return v0

    :cond_10
    if-nez p1, :cond_28

    .line 179
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mOldState:Z

    if-eqz v1, :cond_28

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mLastTimestamp:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long p1, v1, v3

    const/4 v1, 0x0

    if-gtz p1, :cond_25

    return v1

    .line 183
    :cond_25
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mOldState:Z

    return v0

    :cond_28
    if-eqz p1, :cond_30

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mLastTimestamp:J

    :cond_30
    return v0
.end method

.method private isFlashOpen()Z
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isFlashOpen()Z

    move-result p0

    return p0
.end method

.method private isFlashRequired()Z
    .registers 2

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_d

    .line 397
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 400
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isFlashRequired()Z

    move-result p0

    return p0
.end method

.method private isLedFlashSupport()Z
    .registers 2

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_d

    .line 389
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 392
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isLedFlashSupport()Z

    move-result p0

    return p0
.end method

.method private isScreenFlashFireSupport()Z
    .registers 2

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_d

    .line 405
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 408
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isScreenFlashFireSupport()Z

    move-result p0

    return p0
.end method

.method private isScreenFlashSupport()Z
    .registers 2

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_d

    .line 381
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 384
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isScreenFlashSupport()Z

    move-result p0

    return p0
.end method

.method private updateCaptureState(Z)V
    .registers 2

    .line 412
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_c

    .line 413
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 416
    :cond_c
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->updateCaptureState(Z)V

    return-void
.end method

.method private updateFlashRequiredState(Z)V
    .registers 2

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_c

    .line 421
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 424
    :cond_c
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->updateFlashRequiredState(Z)V

    return-void
.end method

.method private updateFlashState()V
    .registers 2

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_c

    .line 429
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 432
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->updateFlashState()V

    return-void
.end method

.method private updateScreenFlashState(Z)V
    .registers 6

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mShowState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, p1, :cond_26

    .line 229
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen flash view is already "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_19

    const-string p1, "show"

    goto :goto_1b

    :cond_19
    const-string p1, "hide"

    :goto_1b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mShowState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_37

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3e

    .line 237
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    :goto_3e
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashStateImpl(Z)V

    return-void
.end method

.method private updateScreenFlashStateImpl(Z)V
    .registers 5

    .line 244
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-nez v0, :cond_e

    .line 247
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "dataCallback is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_e
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isSupportFrontFlash()Z

    move-result v1

    if-nez v1, :cond_36

    .line 252
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 253
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mScreenController"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/setting/screenflash/IScreenController;->onScreenFlashStart(Landroid/content/Context;)V

    return-void

    .line 257
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/setting/screenflash/IScreenController;->onScreenFlashEnd(Landroid/content/Context;)V

    :cond_36
    return-void
.end method


# virtual methods
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

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 317
    const-string p0, "key_screen_flash"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez v0, :cond_f

    .line 323
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    .line 326
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 312
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 353
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

    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 273
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    .line 274
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerFactory;->getScreenController()Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
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

    .line 291
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 292
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 293
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 296
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_11

    goto :goto_33

    .line 299
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_33
    move-object v0, p2

    .line 306
    :cond_34
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isFeatureOpen()Z
    .registers 2

    .line 156
    const-string v0, "key_screen_flash"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isFrontCamera()Z
    .registers 2

    .line 166
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->isFrontCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isScreenFlashSupported()Z
    .registers 1

    .line 436
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mScreenFlashSupport:Z

    return p0
.end method

.method public onFlashFire()V
    .registers 3

    .line 264
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onFlashFire"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 266
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashState(Z)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 343
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScreenFlashValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-eqz p0, :cond_2e

    .line 347
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->sendSettingChangeRequest()V

    :cond_2e
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
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

    .line 331
    sget-object p3, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[overrideValues] headerKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,currentValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " getValue()="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupport()Z

    return-void
.end method

.method public processOnPreview(Z)V
    .registers 4

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFeatureOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 197
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "The screen flash does not need to open."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFlashOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 202
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(Z)V

    return-void

    .line 206
    :cond_1d
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isAllowedChangeState(Z)Z

    move-result v0

    if-nez v0, :cond_24

    return-void

    .line 210
    :cond_24
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_2b

    move p1, v1

    .line 214
    :cond_2b
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(Z)V

    return-void
.end method

.method public processOnTakingPicture()V
    .registers 2

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFeatureOpen()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFlashRequired()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 161
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashState(Z)V

    :cond_10
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 3

    .line 358
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 359
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[restoreToSupportedPlatformValue]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupport()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 362
    const-string v0, "on"

    goto :goto_15

    .line 364
    :cond_13
    const-string v0, "off"

    .line 366
    :goto_15
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

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
    .registers 3

    .line 279
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashState(Z)V

    .line 282
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-eqz p0, :cond_12

    .line 284
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mIsInitialize:Z

    :cond_12
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
