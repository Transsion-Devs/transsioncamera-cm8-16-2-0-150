.class abstract Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RangeConverterState"
.end annotation


# instance fields
.field protected final mMax:I

.field protected final mMin:I

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V
    .registers 4

    .line 1904
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1905
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->mMin:I

    .line 1906
    iput p3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->mMax:I

    return-void
.end method


# virtual methods
.method public currentRange(I)Z
    .registers 3

    .line 1952
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->mMin:I

    if-lt p1, v0, :cond_a

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->mMax:I

    if-ge p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method final enter(I)Z
    .registers 5

    .line 1910
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v0

    if-ne v0, p0, :cond_21

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$minThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    .line 1911
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    const-string v2, "key_zoom_ui_state"

    if-nez v1, :cond_5c

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-eqz v1, :cond_2e

    goto :goto_5c

    .line 1920
    :cond_2e
    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_3b

    .line 1921
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v1, "slip_ide"

    .line 1922
    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1924
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V

    .line 1925
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RangeConverterState enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1926
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->onEnter(I)V

    goto :goto_88

    .line 1912
    :cond_5c
    :goto_5c
    iget-object p1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_69

    .line 1913
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v0, "slip_sliping"

    .line 1914
    invoke-virtual {p1, v2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1916
    :cond_69
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    move-result-object p1

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1917
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    move-result-object p1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1918
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "camera is switching notify it"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_88
    const/4 p0, 0x1

    return p0
.end method

.method protected onEnter(I)V
    .registers 5

    .line 1934
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_11

    .line 1935
    const-string v1, "key_when_wide_main_changed"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "wide_camera_selected_value"

    .line 1936
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1938
    :cond_11
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->progressToValue(I)I

    move-result v0

    .line 1939
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-boolean v2, v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-eqz v2, :cond_51

    .line 1940
    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1941
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->progressToValue(I)I

    move-result v0

    goto :goto_51

    .line 1942
    :cond_2c
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsBase()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1943
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->progressToValue(I)I

    move-result v0

    goto :goto_51

    .line 1944
    :cond_3f
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsTele()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1945
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->progressToValue(I)I

    move-result v0

    .line 1948
    :cond_51
    :goto_51
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    return-void
.end method

.method abstract progressToValue(I)I
.end method

.method abstract valueToProgress(I)I
.end method
