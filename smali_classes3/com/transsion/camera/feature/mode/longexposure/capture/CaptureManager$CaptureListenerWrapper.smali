.class Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;)V
    .registers 2

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    return-void
.end method


# virtual methods
.method public onCaptureCancel()V
    .registers 2

    .line 849
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureEnd()V
    .registers 2

    .line 859
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureFail()V
    .registers 2

    .line 844
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureStart()V
    .registers 2

    .line 839
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureStop()V
    .registers 2

    .line 854
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$CaptureListenerWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
