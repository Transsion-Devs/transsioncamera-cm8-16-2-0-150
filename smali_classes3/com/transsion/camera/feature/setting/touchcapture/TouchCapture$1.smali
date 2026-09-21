.class Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture$1;->this$0:Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture$1;->this$0:Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->-$$Nest$fgetmRestored(Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture$1;->this$0:Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->-$$Nest$fgetmIsModeSupportOriginal(Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->-$$Nest$fputmIsModeSupport(Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;Z)V

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture$1;->this$0:Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->-$$Nest$msyncRemoteCaptureFragment(Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;)V

    :cond_16
    return-void
.end method

.method public onPreviewStopped()V
    .registers 1

    return-void
.end method
