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

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PhysicalKeyManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .registers 6

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsDelayForCapture:Z

    const/4 v1, -0x1

    .line 81
    iput v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    const-wide/16 v1, 0x0

    .line 82
    iput-wide v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mLastLogPrintTime:J

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 85
    iput v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    .line 460
    new-instance v0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;-><init>(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventCallBack:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    .line 114
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    .line 116
    new-instance p1, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventCallBack:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;-><init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    .line 117
    new-instance p1, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;-><init>(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    .line 118
    const-string p1, "ro.side_fingerprint_support"

    const-string p2, "0"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsSideFingerPrint:Z

    return-void
.end method

.method private doFingerPrintAction()V
    .registers 4

    .line 402
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsDelayForCapture:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsDelayForCapture:Z

    .line 406
    iget-object v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsSideFingerPrint:Z

    if-eqz v1, :cond_20

    .line 408
    sget-object v1, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[fingerPrintAction] send finger print action:delay"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 411
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private ensureVibrator()V
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_15

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator_manager"

    .line 455
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorManager;

    .line 456
    invoke-virtual {v0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVibrator:Landroid/os/Vibrator;

    :cond_15
    return-void
.end method

.method private getShoulderButtonOrientation()I
    .registers 3

    .line 137
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

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v0, :cond_17

    .line 417
    const-string v1, "key_fingerprint_capture"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 419
    const-string p0, "on"

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 422
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

.method private isNeedAiKeyLongPress()Z
    .registers 1

    .line 443
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isAiKeySupportBurst()Z

    move-result p0

    return p0
.end method

.method private isShoulderButtonClickSwitchOn()Z
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tran_smart_button_main_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 428
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShoulderButtonClickSwitchDefaultValue:I

    .line 427
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

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tran_smart_button_main_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 434
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShoulderButtonLongPressSwitchDefaultValue:I

    .line 433
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

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tran_smart_button_main_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    .line 439
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
    .registers 6

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_83

    .line 312
    :cond_a
    iget v0, p1, Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;->mKeyCode:I

    .line 313
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isKeyNeedProcess(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 314
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

    .line 318
    :cond_29
    iget p1, p1, Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;->mDistance:I

    const/16 v1, 0x2d0

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x2d2

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x2da

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x2dc

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x2df

    if-eq v0, v1, :cond_45

    const/16 v3, 0x2e0

    if-eq v0, v3, :cond_45

    goto :goto_83

    .line 322
    :cond_45
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isShoulderButtonSlideHorizontallyOn()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 323
    iget-object v3, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    if-ne v0, v1, :cond_50

    goto :goto_51

    :cond_50
    const/4 v2, 0x0

    :goto_51
    invoke-virtual {v3, v2, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->shoulderButtonKeySwiping(ZI)V

    .line 324
    iget p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_83

    .line 325
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->switchShoulderButtonState(I)V

    return-void

    .line 333
    :cond_5d
    iget p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    if-nez p1, :cond_83

    .line 334
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isShoulderButtonClickSwitchOn()Z

    move-result p1

    if-nez p1, :cond_6d

    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isShoulderButtonLongPressSwitchOn()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 335
    :cond_6d
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->ensureVibrator()V

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 339
    :cond_7a
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyDown(ILandroid/view/KeyEvent;)V

    .line 340
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->switchShoulderButtonState(I)V

    :cond_83
    :goto_83
    return-void
.end method

.method private onShoulderButtonKeyUp(Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;)V
    .registers 4

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_13

    .line 358
    :cond_9
    iget p1, p1, Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;->mKeyCode:I

    const/16 v0, 0x2d7

    if-eq p1, v0, :cond_14

    const/16 v0, 0x2e1

    if-eq p1, v0, :cond_14

    :goto_13
    return-void

    .line 362
    :cond_14
    iget v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    .line 363
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isShoulderButtonClickSwitchOn()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isShoulderButtonLongPressSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 364
    :cond_25
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->ensureVibrator()V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 368
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyUp(ILandroid/view/KeyEvent;)V

    .line 370
    :cond_38
    iget v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_42

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->shoulderButtonSwipeUp(I)V

    :cond_42
    const/4 p1, 0x0

    .line 373
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->switchShoulderButtonState(I)V

    return-void
.end method

.method private reportPhysicalKeyShutterEvent(I)V
    .registers 2

    const/16 p0, 0x19d

    if-eq p1, p0, :cond_22

    const/16 p0, 0x2d0

    if-eq p1, p0, :cond_1f

    const/16 p0, 0x2d2

    if-eq p1, p0, :cond_1f

    const/16 p0, 0x2d7

    if-eq p1, p0, :cond_1f

    const/16 p0, 0x2da

    if-eq p1, p0, :cond_1f

    const/16 p0, 0x2dc

    if-eq p1, p0, :cond_1f

    const/16 p0, 0x2e1

    if-eq p1, p0, :cond_1f

    .line 692
    const-string p0, "-1"

    goto :goto_24

    .line 687
    :cond_1f
    const-string p0, "2"

    goto :goto_24

    .line 690
    :cond_22
    const-string p0, "3"

    .line 695
    :goto_24
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setTriggerType(Ljava/lang/String;)V

    return-void
.end method

.method private resetFingerPrintStatus()V
    .registers 3

    const/4 v0, 0x0

    .line 447
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsDelayForCapture:Z

    .line 448
    sget-object v0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resetFingerPrintStatus]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private switchShoulderButtonState(I)V
    .registers 5

    .line 349
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

    .line 350
    iput p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mShoulderButtonState:I

    return-void
.end method


# virtual methods
.method public doShoulderButtonAction(IIII)V
    .registers 7

    .line 381
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 382
    new-instance v1, Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;

    invoke-direct {v1, p1, p3, p4}, Lcom/transsion/camera/app/common/physicalkey/ShoulderButtonInfo;-><init>(III)V

    .line 383
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_18

    const/4 p1, 0x3

    .line 385
    iput p1, v0, Landroid/os/Message;->what:I

    .line 386
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_20

    :cond_18
    const/4 p1, 0x4

    .line 388
    iput p1, v0, Landroid/os/Message;->what:I

    .line 389
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    :goto_20
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isKeyNeedProcess(I)Z
    .registers 4

    .line 149
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
    .registers 12

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->isPhysicalKeyEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 164
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFingerprintSupportZoom:Z

    const/16 v2, 0x167

    const/16 v3, 0x166

    const/4 v4, 0x0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintOn()Z

    move-result v0

    if-nez v0, :cond_22

    if-eq p1, v3, :cond_21

    if-ne p1, v2, :cond_22

    :cond_21
    return v4

    .line 171
    :cond_22
    invoke-static {}, Lcom/transsion/camera/utils/UnderwaterUtils;->isUnderwater()Z

    move-result v0

    .line 172
    iget-object v5, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->isSupportDoubleClickVolumeDown()Z

    move-result v5

    const/16 v6, 0x1b

    if-eq p1, v6, :cond_10a

    const/16 v6, 0x42

    if-eq p1, v6, :cond_109

    const/16 v6, 0x4f

    const/16 v7, 0x19

    const/16 v8, 0x18

    if-eq p1, v6, :cond_f8

    const/16 v6, 0x55

    if-eq p1, v6, :cond_10a

    const/16 v6, 0x8d

    if-eq p1, v6, :cond_a5

    const/16 v6, 0x12a

    if-eq p1, v6, :cond_a5

    const/16 v6, 0x15e

    if-eq p1, v6, :cond_10a

    const/16 v6, 0x162

    if-eq p1, v6, :cond_a5

    const/16 v6, 0xa8

    if-eq p1, v6, :cond_63

    const/16 v6, 0xa9

    if-eq p1, v6, :cond_78

    if-eq p1, v3, :cond_63

    if-eq p1, v2, :cond_78

    packed-switch p1, :pswitch_data_110

    packed-switch p1, :pswitch_data_11a

    return v4

    .line 192
    :cond_63
    :pswitch_63
    iget-object v6, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v6

    if-eqz v6, :cond_72

    if-ne v8, p1, :cond_71

    if-nez v0, :cond_72

    if-eqz v5, :cond_72

    :cond_71
    return v4

    :cond_72
    if-eq p1, v3, :cond_78

    .line 198
    iput v8, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    .line 199
    iput-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 206
    :cond_78
    :pswitch_78
    iget-object v6, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v6

    if-eqz v6, :cond_89

    if-eq v8, p1, :cond_84

    if-ne v7, p1, :cond_88

    :cond_84
    if-nez v0, :cond_89

    if-eqz v5, :cond_89

    :cond_88
    return v4

    :cond_89
    if-ne p1, v7, :cond_8f

    .line 212
    iput v7, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    .line 213
    iput-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 215
    :cond_8f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v6

    iget-boolean v6, v6, Lcom/transsion/camera/utils/CustomConfigUtil;->mFingerprintSupportZoom:Z

    if-eqz v6, :cond_f8

    if-eq p1, v3, :cond_9b

    if-ne p1, v2, :cond_f8

    .line 218
    :cond_9b
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintOn()Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 219
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->resetFingerPrintStatus()V

    goto :goto_f8

    .line 177
    :cond_a5
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

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    if-eqz v0, :cond_e1

    .line 179
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 180
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

    .line 183
    :cond_e1
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintOn()Z

    move-result p1

    if-eqz p1, :cond_eb

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->doFingerPrintAction()V

    goto :goto_f7

    .line 185
    :cond_eb
    iget p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_f7

    .line 186
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyDown(ILandroid/view/KeyEvent;)V

    :cond_f7
    :goto_f7
    return v1

    .line 224
    :cond_f8
    :goto_f8
    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v2

    if-eqz v2, :cond_10a

    if-eq v8, p1, :cond_104

    if-ne v7, p1, :cond_108

    :cond_104
    if-nez v0, :cond_10a

    if-eqz v5, :cond_10a

    :cond_108
    return v4

    :cond_109
    return v1

    .line 234
    :cond_10a
    :pswitch_10a
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyDown(ILandroid/view/KeyEvent;)V

    return v1

    :pswitch_data_110
    .packed-switch 0x17
        :pswitch_10a
        :pswitch_63
        :pswitch_78
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x19b
        :pswitch_78
        :pswitch_78
        :pswitch_10a
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 14

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->isPhysicalKeyEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 249
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFingerprintSupportZoom:Z

    const/16 v2, 0x167

    const/16 v3, 0x166

    const/4 v4, 0x0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintOn()Z

    move-result v0

    if-nez v0, :cond_22

    if-eq p1, v3, :cond_21

    if-ne p1, v2, :cond_22

    :cond_21
    return v4

    .line 255
    :cond_22
    invoke-static {}, Lcom/transsion/camera/utils/UnderwaterUtils;->isUnderwater()Z

    move-result v0

    .line 256
    iget-object v5, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->isSupportDoubleClickVolumeDown()Z

    move-result v5

    const/16 v6, 0x1b

    if-eq p1, v6, :cond_aa

    const/16 v6, 0x42

    if-eq p1, v6, :cond_a9

    const/16 v6, 0x4f

    const/16 v7, 0x19

    const/16 v8, 0x18

    if-eq p1, v6, :cond_98

    const/16 v6, 0x55

    if-eq p1, v6, :cond_aa

    const/16 v6, 0x8d

    if-eq p1, v6, :cond_8e

    const/16 v6, 0x12a

    if-eq p1, v6, :cond_8e

    const/16 v6, 0x15e

    if-eq p1, v6, :cond_aa

    const/16 v6, 0x162

    if-eq p1, v6, :cond_8e

    const/16 v6, 0xa8

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eq p1, v6, :cond_65

    const/16 v6, 0xa9

    if-eq p1, v6, :cond_78

    if-eq p1, v3, :cond_65

    if-eq p1, v2, :cond_78

    packed-switch p1, :pswitch_data_b0

    packed-switch p1, :pswitch_data_ba

    return v4

    .line 270
    :cond_65
    :pswitch_65
    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v2

    if-eqz v2, :cond_74

    if-ne v8, p1, :cond_73

    if-nez v0, :cond_74

    if-eqz v5, :cond_74

    :cond_73
    return v4

    .line 275
    :cond_74
    iput v10, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    .line 276
    iput-object v9, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 280
    :cond_78
    :pswitch_78
    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v2

    if-eqz v2, :cond_89

    if-eq v8, p1, :cond_84

    if-ne v7, p1, :cond_88

    :cond_84
    if-nez v0, :cond_89

    if-eqz v5, :cond_89

    :cond_88
    return v4

    .line 285
    :cond_89
    iput v10, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    .line 286
    iput-object v9, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    goto :goto_98

    .line 261
    :cond_8e
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isFingerprintOn()Z

    move-result p1

    if-eqz p1, :cond_97

    .line 262
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->resetFingerPrintStatus()V

    :cond_97
    return v1

    .line 288
    :cond_98
    :goto_98
    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v2

    if-eqz v2, :cond_aa

    if-eq v8, p1, :cond_a4

    if-ne v7, p1, :cond_a8

    :cond_a4
    if-nez v0, :cond_aa

    if-eqz v5, :cond_aa

    :cond_a8
    return v4

    :cond_a9
    return v1

    .line 298
    :cond_aa
    :pswitch_aa
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyUp(ILandroid/view/KeyEvent;)V

    return v1

    :pswitch_data_b0
    .packed-switch 0x17
        :pswitch_aa
        :pswitch_65
        :pswitch_78
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x19b
        :pswitch_65
        :pswitch_65
        :pswitch_aa
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .registers 8

    .line 127
    iput p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mOrientation:I

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    iget-wide v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mLastLogPrintTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_28

    .line 131
    iput-wide v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mLastLogPrintTime:J

    .line 132
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

    .line 123
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    return-void
.end method
