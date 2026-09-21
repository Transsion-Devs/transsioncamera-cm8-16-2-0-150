.class final Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureHandler"
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUIRef:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 410
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureHandler"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 414
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 415
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;->mAppUIRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CommonPhotoMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 420
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;->mAppUIRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_15

    .line 423
    sget-object p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "appUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 426
    :cond_15
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2d

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_30

    if-eq p1, v2, :cond_2c

    const/4 p0, 0x3

    if-eq p1, p0, :cond_23

    return-void

    :cond_23
    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 436
    invoke-interface {v0, v3, p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 437
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->setShutterEnabled(Z)V

    return-void

    .line 433
    :cond_2c
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 428
    :cond_30
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 p0, 0x0

    .line 430
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    return-void
.end method
