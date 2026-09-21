.class public Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubColorDisplayManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "color_display"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    return-void
.end method


# virtual methods
.method public getMaximumColorTemperature(Landroid/content/Context;)I
    .registers 2

    .line 87
    invoke-static {p1}, Lcom/transsion/hubsdk/hardware/display/TranColorDisplayBridge;->getMaximumColorTemperature(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getMinimumColorTemperature(Landroid/content/Context;)I
    .registers 2

    .line 82
    invoke-static {p1}, Lcom/transsion/hubsdk/hardware/display/TranColorDisplayBridge;->getMinimumColorTemperature(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getNightDisplayColorTemperature()I
    .registers 5

    .line 92
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 96
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;->getNightDisplayColorTemperature()I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 98
    sget-object v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNightDisplayColorTemperature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isNightDisplayActivated()Z
    .registers 2

    .line 43
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 49
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;->isNightDisplayActivated()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public isNightDisplayAvailable(Landroid/content/Context;)Z
    .registers 2

    .line 77
    invoke-static {p1}, Lcom/transsion/hubsdk/hardware/display/TranColorDisplayBridge;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setEyeCareEnabled(Ljava/lang/String;IZIILandroid/os/Bundle;)V
    .registers 8

    .line 120
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    if-nez p0, :cond_5

    return-void

    .line 124
    :cond_5
    :try_start_5
    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;->setEyeCareEnabled(Ljava/lang/String;IZIILandroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    move-object p0, v0

    .line 126
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setEyeCareEnabled:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNightDisplayActivated(Z)Z
    .registers 5

    .line 64
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 68
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;->setNightDisplayActivated(Z)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 70
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNightDisplayActivated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setNightDisplayColorTemperature(I)Z
    .registers 5

    .line 105
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 109
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;->setNightDisplayColorTemperature(I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 111
    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNightDisplayColorTemperature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected setService(Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    return-void
.end method
