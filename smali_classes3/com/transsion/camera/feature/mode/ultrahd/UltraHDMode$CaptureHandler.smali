.class final Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureHandler"
.end annotation


# instance fields
.field private mAppUIRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/common/IAppUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 426
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 427
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;->mAppUIRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 432
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;->mAppUIRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_17

    .line 435
    invoke-static {}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "appUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 438
    :cond_17
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v1, 0x2

    if-eq p1, v1, :cond_20

    goto :goto_34

    :cond_20
    const/4 p1, -0x1

    const/4 v1, 0x0

    .line 441
    invoke-interface {p0, v0, p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    const/16 p1, 0x9c

    .line 442
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 443
    invoke-static {}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$sfgetmSaveHighQualityJpegDone()Z

    move-result p1

    if-nez p1, :cond_34

    const/4 p1, 0x0

    .line 444
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->setShutterEnabled(Z)V

    :cond_34
    :goto_34
    return-void
.end method
