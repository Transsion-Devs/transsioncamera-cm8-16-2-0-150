.class Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V
    .registers 2

    .line 662
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecorderFail(I)V
    .registers 12

    .line 724
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segment record, onRecorderFail, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 725
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v9}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$monRecordFinished(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;ZLjava/lang/String;Ljava/lang/String;JJI)V

    return-void
.end method

.method public onRecorderPrepareAbort()V
    .registers 12

    .line 731
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment record, onRecorderPrepareAbort"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 732
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v10}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$monRecordFinished(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;ZLjava/lang/String;Ljava/lang/String;JJI)V

    return-void
.end method

.method public onRecorderPreparing()V
    .registers 4

    .line 667
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment record, onRecorderPreparing"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mgetCurrentMediaItem(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 670
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fgetmOperationControl(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 671
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fgetmSegmentVideoUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->showOrHideCameraSwitch(Z)V

    .line 672
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fgetmSegmentFillUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->setRecording(Z)V

    .line 673
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fgetmSegmentVideoUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mgetCurrentMediaItem(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->showRecordingUI(J)V

    .line 674
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mshowSegmentRecordingGuide(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    .line 675
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fgetmHelpGuideUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->removeHelpGuide()V

    :cond_51
    return-void
.end method

.method public onRecorderStarted()V
    .registers 3

    .line 682
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment record, onRecorderStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fputmIsRecording(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Z)V

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fgetmSegmentEditUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->exit(Z)V

    .line 686
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fgetmSegmentVideoUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->startRecordingTime()V

    return-void
.end method

.method public onRecorderStopped(Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 20

    .line 704
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segment record, onRecorderStopped, portraitPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", landscapePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sourceStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p5

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v7, p3

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 707
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    move/from16 v11, p7

    invoke-static/range {v3 .. v11}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$monRecordFinished(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;ZLjava/lang/String;Ljava/lang/String;JJI)V

    return-void
.end method

.method public onRecorderStopping()V
    .registers 3

    .line 692
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment record, onRecorderStopping"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fgetmOperationControl(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    move-result-object v0

    const/16 v1, 0x2713

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fgetmSegmentVideoUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->hideRecordingUI()V

    .line 696
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mclearAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    .line 697
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mclearAlwaysHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    return-void
.end method

.method public onStartRecognize()V
    .registers 3

    .line 714
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment record, onStartRecognize"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fgetmLoadingUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 716
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fputmIsLoadingShow(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Z)V

    .line 717
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fgetmLoadingUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->startAnimation()V

    :cond_20
    return-void
.end method
