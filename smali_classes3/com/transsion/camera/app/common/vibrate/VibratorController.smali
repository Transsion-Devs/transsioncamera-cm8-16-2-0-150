.class public Lcom/transsion/camera/app/common/vibrate/VibratorController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/app/common/vibrate/VibratorController;


# instance fields
.field private mContex:Landroid/content/Context;

.field private mIVibrator:Lcom/transsion/camera/app/common/vibrate/IVibrator;

.field private mInited:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VibratorController"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/vibrate/VibratorController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/transsion/camera/app/common/vibrate/VibratorController;->sInstance:Lcom/transsion/camera/app/common/vibrate/VibratorController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/transsion/camera/app/common/vibrate/VibratorController;->mIVibrator:Lcom/transsion/camera/app/common/vibrate/IVibrator;

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/app/common/vibrate/VibratorController;->mContex:Landroid/content/Context;

    .line 103
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getUseHapticVibrator()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/app/common/vibrate/VibratorController;->mContex:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.vibrate.Vibrator"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/vibrate/IVibrator;

    iput-object p1, p0, Lcom/transsion/camera/app/common/vibrate/VibratorController;->mIVibrator:Lcom/transsion/camera/app/common/vibrate/IVibrator;

    return-void

    .line 107
    :cond_23
    iput-object v0, p0, Lcom/transsion/camera/app/common/vibrate/VibratorController;->mIVibrator:Lcom/transsion/camera/app/common/vibrate/IVibrator;

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .registers 3

    .line 42
    const-class v0, Lcom/transsion/camera/app/common/vibrate/VibratorController;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/transsion/camera/app/common/vibrate/VibratorController;->sInstance:Lcom/transsion/camera/app/common/vibrate/VibratorController;

    if-nez v1, :cond_11

    .line 44
    new-instance v1, Lcom/transsion/camera/app/common/vibrate/VibratorController;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/camera/app/common/vibrate/VibratorController;->sInstance:Lcom/transsion/camera/app/common/vibrate/VibratorController;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 46
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;
    .registers 1

    .line 38
    sget-object v0, Lcom/transsion/camera/app/common/vibrate/VibratorController;->sInstance:Lcom/transsion/camera/app/common/vibrate/VibratorController;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    .line 63
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/vibrate/VibratorController;->mInited:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9

    if-nez v0, :cond_7

    .line 67
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 64
    :try_start_8
    throw v0

    :catchall_9
    move-exception v0

    .line 67
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public doVibrate(Ljava/lang/String;)V
    .registers 6

    .line 80
    new-instance v0, Lcom/transsion/hubsdk/api/os/TranVibratorManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;-><init>()V

    .line 81
    sget-object v1, Lcom/transsion/camera/app/common/vibrate/VibratorController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doVibrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    :try_start_1b
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 84
    const-string/jumbo v2, "tran_vibrate_package"

    iget-object p0, p0, Lcom/transsion/camera/app/common/vibrate/VibratorController;->mContex:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo p0, "tran_vibrate_usage"

    const/16 v2, 0x12

    invoke-virtual {v1, p0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v0, p1, v1}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->vibrate(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_37
    .catch Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException; {:try_start_1b .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p0

    .line 88
    sget-object p1, Lcom/transsion/camera/app/common/vibrate/VibratorController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doVibrate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isSupport()Z
    .registers 1

    .line 50
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getUseHapticVibrator()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 51
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportTranVibrate()Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLinearMotorVibrate()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method
