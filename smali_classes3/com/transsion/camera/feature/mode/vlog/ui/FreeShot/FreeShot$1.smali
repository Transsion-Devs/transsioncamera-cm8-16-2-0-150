.class Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V
    .registers 2

    .line 574
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecorderFail(I)V
    .registers 10

    .line 613
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segment record, onRecorderFail, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 614
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$monRecordFinished(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;ZLjava/lang/String;JLjava/util/List;I)V

    return-void
.end method

.method public onRecorderPrepareAbort()V
    .registers 10

    .line 619
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment record, onRecorderPrepareAbort"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 620
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$monRecordFinished(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;ZLjava/lang/String;JLjava/util/List;I)V

    return-void
.end method

.method public onRecorderPreparing()V
    .registers 4

    .line 577
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment record, onRecorderPreparing"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$fgetmOperationControl(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$fgetmVlogVideoUI(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->showRecordingUI(J)V

    .line 580
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$fgetmFreeFillUI(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setRecording(ZZ)V

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$mshowSegmentRecordingGuide(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;Z)V

    return-void
.end method

.method public onRecorderStarted()V
    .registers 3

    .line 586
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment record, onRecorderStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$fputmIsRecording(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;Z)V

    .line 588
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$fgetmVlogVideoUI(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->startRecordingTime()V

    return-void
.end method

.method public onRecorderStopped(Ljava/lang/String;JLjava/util/List;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;I)V"
        }
    .end annotation

    .line 607
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segment record, onRecorderStopped videoPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hlResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", videoDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    const/4 v3, 0x0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move v8, p5

    invoke-static/range {v2 .. v8}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$monRecordFinished(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;ZLjava/lang/String;JLjava/util/List;I)V

    return-void
.end method

.method public onRecorderStopping()V
    .registers 3

    .line 593
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment record, onRecorderStopping"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$fgetmOperationControl(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    move-result-object v0

    const/16 v1, 0x2713

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 595
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$fgetmVlogVideoUI(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->hideRecordingUI()V

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$mclearAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V

    .line 597
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$mclearAlwaysHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V

    return-void
.end method

.method public onStartRecognize()V
    .registers 2

    .line 602
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "segment record, onStartRecognize"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
