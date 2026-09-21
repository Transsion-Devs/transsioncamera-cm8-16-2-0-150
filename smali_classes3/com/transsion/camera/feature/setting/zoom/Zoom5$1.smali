.class Lcom/transsion/camera/feature/setting/zoom/Zoom5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/zoom/Zoom5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/zoom/Zoom5;)V
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 460
    invoke-static {}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom5;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->-$$Nest$fgetmIsWaitingCameraSwitch(Lcom/transsion/camera/feature/setting/zoom/Zoom5;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 462
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom5;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->-$$Nest$mnotifyPreviewState(Lcom/transsion/camera/feature/setting/zoom/Zoom5;Z)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 2

    .line 455
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom5;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->-$$Nest$mnotifyPreviewState(Lcom/transsion/camera/feature/setting/zoom/Zoom5;Z)V

    return-void
.end method
