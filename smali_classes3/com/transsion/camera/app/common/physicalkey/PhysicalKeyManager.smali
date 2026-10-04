.class public Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsDelayForCapture:Z

.field private mIsSideFingerPrint:Z

.field private mKeyEventCallBack:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

.field private mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

.field private mLastLogPrintTime:J

.field private mOrientation:I

.field private mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mShoulderButtonState:I

.field private mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolumeKeyCode:I

.field private mVolumeKeyEvent:Landroid/view/KeyEvent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmKeyEventCallBack(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventCallBack:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingProvide(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misFingerprintSlideKey(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintSlideKey(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNeedAiKeyLongPress(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isNeedAiKeyLongPress()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misShoulderButtonClickSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isShoulderButtonClickSwitchOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misShoulderButtonLongPressSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isShoulderButtonLongPressSwitchOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monShoulderButtonKeyDown(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onShoulderButtonKeyDown(Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monShoulderButtonKeyUp(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onShoulderButtonKeyUp(Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportPhysicalKeyShutterEvent(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->reportPhysicalKeyShutterEvent(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PhysicalKeyManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .registers 6

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsDelayForCapture:Z

    const/4 v1, -0x1

    .line 85
    iput v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    const-wide/16 v1, 0x0

    .line 86
    iput-wide v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mLastLogPrintTime:J

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 89
    iput v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    .line 486
    new-instance v0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;-><init>(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventCallBack:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    .line 120
    new-instance p1, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventCallBack:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;-><init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    .line 121
    new-instance p1, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;-><init>(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    .line 122
    const-string p1, "ro.side_fingerprint_support"

    const-string p2, "0"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsSideFingerPrint:Z

    return-void
.end method

.method private doFingerPrintAction()V
    .registers 4

    .line 428
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsDelayForCapture:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsDelayForCapture:Z

    .line 432
    iget-object v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsSideFingerPrint:Z

    if-eqz v1, :cond_20

    .line 434
    sget-object v1, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[fingerPrintAction] send finger print action:delay"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 437
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private ensureVibrator()V
    .registers 3

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_15

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator_manager"

    .line 481
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorManager;

    .line 482
    invoke-virtual {v0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVibrator:Landroid/os/Vibrator;

    :cond_15
    return-void
.end method

.method private getShoulderButtonOrientation()I
    .registers 3

    .line 141
    iget p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mOrientation:I

    const/16 v0, 0x13b

    if-ge p0, v0, :cond_15

    const/16 v1, 0x2d

    if-gt p0, v1, :cond_b

    goto :goto_15

    :cond_b
    const/16 v1, 0xe1

    if-lt p0, v1, :cond_13

    if-gt p0, v0, :cond_13

    const/4 p0, 0x2

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method private isFingerprintOn()Z
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v0, :cond_17

    .line 443
    const-string v1, "key_fingerprint_capture"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 445
    const-string p0, "on"

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 448
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_take_photo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v1
.end method

.method private isFingerprintSlideKey(I)Z
    .registers 2

    .line 758
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFingerprintSupportZoom:Z

    if-eqz p0, :cond_12

    const/16 p0, 0x167

    if-eq p1, p0, :cond_10

    const/16 p0, 0x168

    if-ne p1, p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private isNeedAiKeyLongPress()Z
    .registers 1

    .line 469
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isAiKeySupportBurst()Z

    move-result p0

    return p0
.end method

.method private isShoulderButtonClickSwitchOn()Z
    .registers 4

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tran_smart_button_main_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    .line 453
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 454
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShoulderButtonClickSwitchDefaultValue:I

    .line 453
    const-string/jumbo v1, "tran_smart_button_camera_click_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_26

    return v2

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private isShoulderButtonLongPressSwitchOn()Z
    .registers 4

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tran_smart_button_main_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 460
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShoulderButtonLongPressSwitchDefaultValue:I

    .line 459
    const-string/jumbo v1, "tran_smart_button_camera_longpress_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_26

    return v2

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private isShoulderButtonSlideHorizontallyOn()Z
    .registers 4

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tran_smart_button_main_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "tran_smart_camera_slide_horizontally_switch"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_20

    return v2

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private onShoulderButtonKeyDown(Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;)V
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 329
    sget-object p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onShoulderButtonKeyDown] return for not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 332
    :cond_10
    iget v0, p1, Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;->mKeyCode:I

    .line 333
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isKeyNeedProcess(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 334
    sget-object p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onShoulderButtonKeyDown] return for not process, keycode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 338
    :cond_2f
    iget p1, p1, Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;->mDistance:I

    const/16 v1, 0x2d0

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x2d2

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x2da

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x2dc

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x2df

    if-eq v0, v1, :cond_55

    const/16 v1, 0x2e0

    if-eq v0, v1, :cond_55

    packed-switch v0, :pswitch_data_72

    goto :goto_6c

    .line 359
    :pswitch_4d
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->physicalKeySwiping(II)V

    return-void

    .line 355
    :pswitch_51
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->physicalKeyDown(I)V

    return-void

    .line 342
    :cond_55
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isShoulderButtonSlideHorizontallyOn()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 343
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->physicalKeySwiping(II)V

    return-void

    .line 350
    :cond_5f
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isShoulderButtonClickSwitchOn()Z

    move-result p1

    if-nez p1, :cond_6d

    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isShoulderButtonLongPressSwitchOn()Z

    move-result p1

    if-eqz p1, :cond_6c

    goto :goto_6d

    :cond_6c
    :goto_6c
    return-void

    .line 351
    :cond_6d
    :goto_6d
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->physicalKeyDown(I)V

    return-void

    nop

    :pswitch_data_72
    .packed-switch 0x2e2
        :pswitch_51
        :pswitch_4d
        :pswitch_4d
    .end packed-switch
.end method

.method private onShoulderButtonKeyUp(Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;)V
    .registers 8

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1c

    .line 371
    :cond_9
    iget p1, p1, Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;->mKeyCode:I

    const/16 v0, 0x2d7

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x2e1

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x2e2

    if-eq p1, v0, :cond_1d

    :goto_1c
    return-void

    .line 390
    :cond_1d
    iget v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    if-ne v0, v5, :cond_32

    .line 391
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->ensureVibrator()V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v4}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {v0, p1, v3}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyUp(ILandroid/view/KeyEvent;)V

    .line 396
    :cond_32
    iget v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    if-ne v0, v2, :cond_3b

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->swipeUp(I)V

    .line 399
    :cond_3b
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->switchShoulderButtonState(I)V

    return-void

    .line 376
    :cond_3f
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isShoulderButtonClickSwitchOn()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isShoulderButtonLongPressSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 377
    :cond_4b
    iget v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    if-ne v0, v5, :cond_60

    .line 378
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->ensureVibrator()V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v4}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {v0, p1, v3}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyUp(ILandroid/view/KeyEvent;)V

    .line 384
    :cond_60
    iget v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    if-ne v0, v2, :cond_69

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->swipeUp(I)V

    .line 387
    :cond_69
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->switchShoulderButtonState(I)V

    return-void
.end method

.method private physicalKeyDown(I)V
    .registers 4

    .line 311
    iget v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    if-nez v0, :cond_1b

    .line 312
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->ensureVibrator()V

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyDown(ILandroid/view/KeyEvent;)V

    const/4 p1, 0x1

    .line 315
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->switchShoulderButtonState(I)V

    :cond_1b
    return-void
.end method

.method private physicalKeySwiping(II)V
    .registers 4

    .line 320
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->setPhysicalKeyCode(I)V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keySwiping(II)V

    .line 322
    iget p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_14

    .line 323
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->switchShoulderButtonState(I)V

    :cond_14
    return-void
.end method

.method private reportPhysicalKeyShutterEvent(I)V
    .registers 2

    const/16 p0, 0x19d

    if-eq p1, p0, :cond_29

    const/16 p0, 0x2d0

    if-eq p1, p0, :cond_26

    const/16 p0, 0x2d2

    if-eq p1, p0, :cond_26

    const/16 p0, 0x2d7

    if-eq p1, p0, :cond_26

    const/16 p0, 0x2da

    if-eq p1, p0, :cond_26

    const/16 p0, 0x2dc

    if-eq p1, p0, :cond_26

    const/16 p0, 0x2e1

    if-eq p1, p0, :cond_26

    const/16 p0, 0x2e2

    if-eq p1, p0, :cond_23

    .line 751
    const-string p0, "-1"

    goto :goto_2b

    .line 749
    :cond_23
    const-string p0, "4"

    goto :goto_2b

    .line 743
    :cond_26
    const-string p0, "2"

    goto :goto_2b

    .line 746
    :cond_29
    const-string p0, "3"

    .line 754
    :goto_2b
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setTriggerType(Ljava/lang/String;)V

    return-void
.end method

.method private resetFingerPrintStatus()V
    .registers 3

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsDelayForCapture:Z

    .line 474
    sget-object v0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resetFingerPrintStatus]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 475
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private switchShoulderButtonState(I)V
    .registers 5

    .line 306
    sget-object v0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[switchShoulderButtonState]  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    iput p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    return-void
.end method


# virtual methods
.method public doShoulderButtonAction(IIII)V
    .registers 7

    .line 407
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 408
    new-instance v1, Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;

    invoke-direct {v1, p1, p3, p4}, Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;-><init>(III)V

    .line 409
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_18

    const/4 p1, 0x3

    .line 411
    iput p1, v0, Landroid/os/Message;->what:I

    .line 412
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_20

    :cond_18
    const/4 p1, 0x4

    .line 414
    iput p1, v0, Landroid/os/Message;->what:I

    .line 415
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    :goto_20
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isKeyNeedProcess(I)Z
    .registers 4

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->getShoulderButtonOrientation()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_d

    const/4 p1, 0x2

    if-eq p0, p1, :cond_c

    return v0

    :cond_c
    return v1

    :cond_d
    const/16 p0, 0x2d0

    if-eq p1, p0, :cond_1b

    const/16 p0, 0x2d2

    if-eq p1, p0, :cond_1b

    const/16 p0, 0x2d7

    if-ne p1, p0, :cond_1a

    goto :goto_1b

    :cond_1a
    return v0

    :cond_1b
    :goto_1b
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->isPhysicalKeyEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 168
    :cond_a
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintOn()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintSlideKey(I)Z

    move-result v0

    if-eqz v0, :cond_18

    return v2

    .line 172
    :cond_18
    invoke-static {}, Lcom/transsion/camera/utils/UnderwaterUtils;->isUnderwater()Z

    move-result v0

    .line 173
    iget-object v3, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->isSupportDoubleClickVolumeDown()Z

    move-result v3

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_fe

    const/16 v4, 0x42

    if-eq p1, v4, :cond_fd

    const/16 v4, 0x4f

    const/16 v5, 0x19

    const/16 v6, 0x18

    if-eq p1, v4, :cond_ec

    const/16 v4, 0x55

    if-eq p1, v4, :cond_fe

    const/16 v4, 0x8d

    if-eq p1, v4, :cond_99

    const/16 v4, 0x12a

    if-eq p1, v4, :cond_99

    const/16 v4, 0x15e

    if-eq p1, v4, :cond_fe

    const/16 v4, 0x162

    if-eq p1, v4, :cond_99

    const/16 v4, 0xa8

    const/16 v7, 0x167

    if-eq p1, v4, :cond_5d

    const/16 v4, 0xa9

    if-eq p1, v4, :cond_72

    if-eq p1, v7, :cond_5d

    const/16 v4, 0x168

    if-eq p1, v4, :cond_72

    packed-switch p1, :pswitch_data_104

    packed-switch p1, :pswitch_data_10e

    return v2

    .line 193
    :cond_5d
    :pswitch_5d
    iget-object v4, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v4

    if-eqz v4, :cond_6c

    if-ne v6, p1, :cond_6b

    if-nez v0, :cond_6c

    if-eqz v3, :cond_6c

    :cond_6b
    return v2

    :cond_6c
    if-eq p1, v7, :cond_72

    .line 199
    iput v6, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    .line 200
    iput-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 207
    :cond_72
    :pswitch_72
    iget-object v4, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v4

    if-eqz v4, :cond_83

    if-eq v6, p1, :cond_7e

    if-ne v5, p1, :cond_82

    :cond_7e
    if-nez v0, :cond_83

    if-eqz v3, :cond_83

    :cond_82
    return v2

    :cond_83
    if-ne p1, v5, :cond_89

    .line 213
    iput v5, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    .line 214
    iput-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 217
    :cond_89
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintSlideKey(I)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 218
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintOn()Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 219
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->resetFingerPrintStatus()V

    goto :goto_ec

    .line 178
    :cond_99
    sget-object p2, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVolumeKeyCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    if-eqz v0, :cond_d5

    .line 180
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKeyDown keyCode :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",not support, return !"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 184
    :cond_d5
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintOn()Z

    move-result p1

    if-eqz p1, :cond_df

    .line 185
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->doFingerPrintAction()V

    goto :goto_eb

    .line 186
    :cond_df
    iget p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_eb

    .line 187
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyDown(ILandroid/view/KeyEvent;)V

    :cond_eb
    :goto_eb
    return v1

    .line 223
    :cond_ec
    :goto_ec
    iget-object v4, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v4

    if-eqz v4, :cond_fe

    if-eq v6, p1, :cond_f8

    if-ne v5, p1, :cond_fc

    :cond_f8
    if-nez v0, :cond_fe

    if-eqz v3, :cond_fe

    :cond_fc
    return v2

    :cond_fd
    return v1

    .line 233
    :cond_fe
    :pswitch_fe
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyDown(ILandroid/view/KeyEvent;)V

    return v1

    :pswitch_data_104
    .packed-switch 0x17
        :pswitch_fe
        :pswitch_5d
        :pswitch_72
    .end packed-switch

    :pswitch_data_10e
    .packed-switch 0x19b
        :pswitch_72
        :pswitch_72
        :pswitch_fe
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 12

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->isPhysicalKeyEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 248
    :cond_a
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintOn()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintSlideKey(I)Z

    move-result v0

    if-eqz v0, :cond_18

    return v2

    .line 252
    :cond_18
    invoke-static {}, Lcom/transsion/camera/utils/UnderwaterUtils;->isUnderwater()Z

    move-result v0

    .line 253
    iget-object v3, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->isSupportDoubleClickVolumeDown()Z

    move-result v3

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_a4

    const/16 v4, 0x42

    if-eq p1, v4, :cond_a3

    const/16 v4, 0x4f

    const/16 v5, 0x19

    const/16 v6, 0x18

    if-eq p1, v4, :cond_92

    const/16 v4, 0x55

    if-eq p1, v4, :cond_a4

    const/16 v4, 0x8d

    if-eq p1, v4, :cond_88

    const/16 v4, 0x12a

    if-eq p1, v4, :cond_88

    const/16 v4, 0x15e

    if-eq p1, v4, :cond_a4

    const/16 v4, 0x162

    if-eq p1, v4, :cond_88

    const/16 v4, 0xa8

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq p1, v4, :cond_5f

    const/16 v4, 0xa9

    if-eq p1, v4, :cond_72

    const/16 v4, 0x167

    if-eq p1, v4, :cond_5f

    const/16 v4, 0x168

    if-eq p1, v4, :cond_72

    packed-switch p1, :pswitch_data_aa

    packed-switch p1, :pswitch_data_b4

    return v2

    .line 267
    :cond_5f
    :pswitch_5f
    iget-object v4, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v4

    if-eqz v4, :cond_6e

    if-ne v6, p1, :cond_6d

    if-nez v0, :cond_6e

    if-eqz v3, :cond_6e

    :cond_6d
    return v2

    .line 272
    :cond_6e
    iput v8, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    .line 273
    iput-object v7, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 277
    :cond_72
    :pswitch_72
    iget-object v4, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v4

    if-eqz v4, :cond_83

    if-eq v6, p1, :cond_7e

    if-ne v5, p1, :cond_82

    :cond_7e
    if-nez v0, :cond_83

    if-eqz v3, :cond_83

    :cond_82
    return v2

    .line 282
    :cond_83
    iput v8, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    .line 283
    iput-object v7, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    goto :goto_92

    .line 258
    :cond_88
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintOn()Z

    move-result p1

    if-eqz p1, :cond_91

    .line 259
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->resetFingerPrintStatus()V

    :cond_91
    return v1

    .line 285
    :cond_92
    :goto_92
    iget-object v4, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v4

    if-eqz v4, :cond_a4

    if-eq v6, p1, :cond_9e

    if-ne v5, p1, :cond_a2

    :cond_9e
    if-nez v0, :cond_a4

    if-eqz v3, :cond_a4

    :cond_a2
    return v2

    :cond_a3
    return v1

    .line 295
    :cond_a4
    :pswitch_a4
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyUp(ILandroid/view/KeyEvent;)V

    return v1

    :pswitch_data_aa
    .packed-switch 0x17
        :pswitch_a4
        :pswitch_5f
        :pswitch_72
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x19b
        :pswitch_5f
        :pswitch_5f
        :pswitch_a4
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .registers 8

    .line 131
    iput p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mOrientation:I

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    iget-wide v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mLastLogPrintTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_28

    .line 135
    iput-wide v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mLastLogPrintTime:J

    .line 136
    sget-object p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setLandscape] orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public setKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    return-void
.end method
