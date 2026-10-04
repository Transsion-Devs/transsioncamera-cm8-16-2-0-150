.class Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 6

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    const/16 v1, -0x10

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setThreadPriority(I)V

    .line 363
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] onImageAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImageAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isCaptureVipThreadSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->-$$Nest$fgetmIsContinuousShot(Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;)Z

    move-result v0

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    move v0, v1

    :goto_4f
    if-eqz v0, :cond_5c

    .line 368
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setVipCaptureTranSched(I)V

    .line 370
    :cond_5c
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->onImageAvailable(Landroid/media/ImageReader;)V

    if-eqz v0, :cond_6e

    .line 372
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelVipCaptureTranSched(I)V

    .line 374
    :cond_6e
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setThreadPriority(I)V

    return-void
.end method
