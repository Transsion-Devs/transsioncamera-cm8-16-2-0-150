.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V
    .registers 2

    .line 586
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 588
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "pauseResumeRecording"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 589
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->-$$Nest$fgetmVideoUI(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getRecordingTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_28

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->-$$Nest$fgetmVideoUI(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->isRecordPausing()Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_39

    .line 592
    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->-$$Nest$fgetmDualVideoRecorder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->-$$Nest$fgetmDualVideoRecorder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->pauseOrResume()V

    :cond_39
    :goto_39
    return-void
.end method
