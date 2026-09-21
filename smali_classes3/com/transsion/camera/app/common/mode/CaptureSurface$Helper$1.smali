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

    .line 349
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    const/16 v1, -0x10

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setThreadPriority(I)V

    .line 353
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

    .line 354
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

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->onImageAvailable(Landroid/media/ImageReader;)V

    .line 356
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper$1;->this$0:Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setThreadPriority(I)V

    return-void
.end method
