.class Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$R--AIqrbnUswwLDhtVbeXL_K2CM(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->lambda$onPreviewShot$0([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$l38B_k_t3s6oJ9Vx-MefxUxGmio(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->lambda$onCaptureShot$1([B)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;)V
    .registers 4

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mMainHandler:Landroid/os/Handler;

    .line 467
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    return-void
.end method

.method private synthetic lambda$onCaptureShot$1([B)V
    .registers 2

    .line 502
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;->onCaptureShot([B)V

    return-void
.end method

.method private synthetic lambda$onPreviewShot$0([B)V
    .registers 2

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;->onPreviewShot([B)V

    return-void
.end method


# virtual methods
.method public onCaptureFail()V
    .registers 3

    .line 481
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$smcheckMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;->onCaptureFail()V

    return-void

    .line 484
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCaptureShot([B)V
    .registers 4

    .line 499
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$smcheckMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 500
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;->onCaptureShot([B)V

    return-void

    .line 502
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCaptureStart()V
    .registers 3

    .line 472
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$smcheckMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;->onCaptureStart()V

    return-void

    .line 475
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPreviewShot([B)V
    .registers 4

    .line 490
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$smcheckMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 491
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;->onPreviewShot([B)V

    return-void

    .line 493
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
