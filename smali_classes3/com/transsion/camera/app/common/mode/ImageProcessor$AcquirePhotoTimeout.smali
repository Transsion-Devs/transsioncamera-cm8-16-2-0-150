.class public Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AcquirePhotoTimeout"
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mPhotoTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1054
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AcquirePhotoTimeout"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/dfx/inter/IExDetection;->getDfxHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1065
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/dfx/inter/IExDetection;->getDfxHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/utils/dfx/inter/IExInjection;->getPhotoTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_21
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 1059
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;-><init>()V

    .line 1060
    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;->mPhotoTimestamp:J

    return-void
.end method


# virtual methods
.method public getPhotoTimestamp()J
    .registers 3

    .line 1083
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;->mPhotoTimestamp:J

    return-wide v0
.end method

.method public removeTimeoutCallbacks()V
    .registers 2

    .line 1077
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/dfx/inter/IExDetection;->getDfxHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1078
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/dfx/inter/IExDetection;->getDfxHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_15
    return-void
.end method

.method public run()V
    .registers 5

    .line 1071
    sget-object v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DFX][AcquirePhotoTimeout]Trigger timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;->mPhotoTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1072
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V

    .line 1073
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->onCamError(I)V

    return-void
.end method
