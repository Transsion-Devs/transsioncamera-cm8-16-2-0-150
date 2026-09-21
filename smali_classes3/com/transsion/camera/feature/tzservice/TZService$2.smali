.class Lcom/transsion/camera/feature/tzservice/TZService$2;
.super Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/tzservice/TZService;->setTZCaptureCallback(Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/tzservice/TZService;

.field final synthetic val$callback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/tzservice/TZService;Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;)V
    .registers 3

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/feature/tzservice/TZService$2;->this$0:Lcom/transsion/camera/feature/tzservice/TZService;

    iput-object p2, p0, Lcom/transsion/camera/feature/tzservice/TZService$2;->val$callback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;

    invoke-direct {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 138
    const-string p0, "df8558d40314229d55e0710b707e64ad089f7f7d"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onTZCapAllDone()Z
    .registers 3

    .line 109
    const-string v0, "TZService"

    const-string v1, "onTZCapAllDone: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService$2;->val$callback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;->onCaptureAllDone()Z

    move-result p0

    return p0
.end method

.method public onTZSGetAppUserID()I
    .registers 3

    .line 121
    const-string v0, "TZService"

    const-string v1, "onTZSGetAppUserID: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService$2;->val$callback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/feature/tzservice/TZService$ICommonCallback;->getAppUserID()I

    move-result p0

    return p0
.end method

.method public onTZSGetBatteryLevel()I
    .registers 3

    .line 115
    const-string v0, "TZService"

    const-string v1, "onTZSGetBatteryLevel: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService$2;->val$callback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public onTZSGetPackageName()Ljava/lang/String;
    .registers 3

    .line 103
    const-string v0, "TZService"

    const-string v1, "onTZSGetPackageName: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService$2;->val$callback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTZSGetSystemUserID()I
    .registers 3

    .line 127
    const-string v0, "TZService"

    const-string v1, "onTZSGetSystemUserID: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService$2;->val$callback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;->getSystemUserID()I

    move-result p0

    return p0
.end method
