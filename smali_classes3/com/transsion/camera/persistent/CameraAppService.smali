.class public Lcom/transsion/camera/persistent/CameraAppService;
.super Landroid/service/media/CameraPrewarmService;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraAppService"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/persistent/CameraAppService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/service/media/CameraPrewarmService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    .line 27
    sget-object v0, Lcom/transsion/camera/persistent/CameraAppService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraAppService onBind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/transsion/camera/utils/StatusBarUtils;->enable()V

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "onBind on CameraAppService"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/UnderwaterUtils;->writeUnderwaterSetting(Landroid/content/Context;ILjava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    if-eqz p1, :cond_39

    if-eqz v0, :cond_34

    .line 35
    const-string v1, "isFirstConnect"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->onAppServiceConnected(Z)V

    .line 39
    :cond_34
    invoke-super {p0, p1}, Landroid/service/media/CameraPrewarmService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_39
    if-eqz v0, :cond_3e

    .line 42
    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetCameraLaunchStartTime()V

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCooldown(Z)V
    .registers 2

    return-void
.end method

.method public onCreate()V
    .registers 2

    .line 50
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 51
    sget-object p0, Lcom/transsion/camera/persistent/CameraAppService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "The service of keeping alive call onCreate."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPrewarm()V
    .registers 1

    return-void
.end method
