.class abstract Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RangeConverterState"
.end annotation


# instance fields
.field protected final mMax:I

.field protected final mMin:I

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V
    .registers 4

    .line 2550
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2551
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->mMin:I

    .line 2552
    iput p3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->mMax:I

    return-void
.end method


# virtual methods
.method public currentRange(I)Z
    .registers 3

    .line 2594
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->mMin:I

    if-lt p1, v0, :cond_a

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->mMax:I

    if-ge p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method final enter(IZ)Z
    .registers 6

    .line 2556
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    if-ne v0, p0, :cond_21

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$minThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    .line 2557
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    const-string v2, "key_zoom_ui_state"

    if-nez v1, :cond_64

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-eqz v1, :cond_2e

    goto :goto_64

    .line 2564
    :cond_2e
    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_3b

    .line 2565
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v1, "slip_ide"

    .line 2566
    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2568
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V

    .line 2569
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RangeConverterState enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2570
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->onEnter(IZ)V

    goto :goto_a7

    .line 2558
    :cond_64
    :goto_64
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_71

    .line 2559
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string p2, "slip_sliping"

    .line 2560
    invoke-virtual {p1, v2, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2562
    :cond_71
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "camera is switching notify it mIsCameraSwitching:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsCapturing:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mRangeConverter:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_a7
    const/4 p0, 0x1

    return p0
.end method

.method protected onEnter(IZ)V
    .registers 6

    .line 2578
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result v0

    .line 2579
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    iget-boolean v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v2, :cond_41

    .line 2580
    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsWide()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 2581
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result v0

    goto :goto_41

    .line 2582
    :cond_1c
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsBase()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2583
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result v0

    goto :goto_41

    .line 2584
    :cond_2f
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsTele()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2585
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result v0

    .line 2588
    :cond_41
    :goto_41
    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->updateNextSwitchType(IZ)V

    return-void
.end method

.method abstract progressToValue(IZ)I
.end method

.method abstract updateNextSwitchType(IZ)V
.end method

.method abstract valueToProgress(I)I
.end method
