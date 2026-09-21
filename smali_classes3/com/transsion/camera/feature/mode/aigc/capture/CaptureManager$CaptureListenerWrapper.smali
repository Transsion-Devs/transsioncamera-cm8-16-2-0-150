.class Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$DPt7JQG13icFyfAKSCUBGGZlH5M(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->lambda$onPreviewShot$0([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$FZtuVqcIOLPcS6oULA3eQDBNBME(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->lambda$onCaptureShot$1([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$fRxmr-RDh9R9TcJgZ_qkYuCLtfo(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->lambda$onCaptureEnd$2([B)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;)V
    .registers 4

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mMainHandler:Landroid/os/Handler;

    .line 453
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    return-void
.end method

.method private synthetic lambda$onCaptureEnd$2([B)V
    .registers 2

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onCaptureEnd([B)V

    return-void
.end method

.method private synthetic lambda$onCaptureShot$1([B)V
    .registers 2

    .line 488
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onCaptureShot([B)V

    return-void
.end method

.method private synthetic lambda$onPreviewShot$0([B)V
    .registers 2

    .line 479
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onPreviewShot([B)V

    return-void
.end method


# virtual methods
.method public onCaptureEnd([B)V
    .registers 4

    .line 494
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$smcheckMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onCaptureEnd([B)V

    return-void

    .line 497
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCaptureFail()V
    .registers 3

    .line 467
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$smcheckMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 468
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onCaptureFail()V

    return-void

    .line 470
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCaptureShot([B)V
    .registers 4

    .line 485
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$smcheckMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onCaptureShot([B)V

    return-void

    .line 488
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCaptureStart()V
    .registers 3

    .line 458
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$smcheckMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onCaptureStart()V

    return-void

    .line 461
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPreviewShot([B)V
    .registers 4

    .line 476
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$smcheckMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 477
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onPreviewShot([B)V

    return-void

    .line 479
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
