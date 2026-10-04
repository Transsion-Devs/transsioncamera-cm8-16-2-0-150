.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 2

    .line 1016
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(I)V
    .registers 5

    .line 1019
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged, scrollState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mIsTickRingScrolling\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsTickRingScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsShoulderButtonSwiped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsShoulderButtonSwiped(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_74

    .line 1020
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsShoulderButtonSwiped(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p1

    if-nez p1, :cond_74

    .line 1021
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsTickRingScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 1022
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fputmIsTickRingScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V

    .line 1023
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mnotifyZoomAction(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1025
    :cond_53
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mhideTickRingDelayed(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    .line 1026
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p1

    if-eqz p1, :cond_a7

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p1

    if-nez p1, :cond_a7

    .line 1027
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    return-void

    .line 1032
    :cond_74
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fputmIsTickRingScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V

    .line 1033
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    move-result-object p1

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1034
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v0, 0x17

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mnotifyZoomAction(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    .line 1035
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p1

    if-eqz p1, :cond_a7

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result p1

    if-nez p1, :cond_a7

    .line 1036
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_a7
    return-void
.end method

.method public onZoomRatioChanged(I)V
    .registers 3

    .line 1042
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$misInstantZoomSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1043
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmInstantBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->updateZoomRatioDelayed(I)V

    .line 1045
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mdoOnZoomRatioChanged(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;II)V

    return-void
.end method

.method public onZoomTickRingTouchDown(I)V
    .registers 6

    .line 1050
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZoomTickRingTouchDown] downRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsTickRingScrolling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsTickRingScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 1052
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsTickRingScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    const-string v1, "key_click_down_zoom_ratio"

    const-string v2, "key_zoom_type_for_touch"

    if-nez v0, :cond_63

    .line 1053
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const/4 v3, 0x5

    .line 1054
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1055
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const/4 v0, 0x0

    .line 1056
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1058
    :cond_63
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    .line 1059
    const-string v0, "0"

    invoke-virtual {p1, v2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1060
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 1061
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7f
    return-void
.end method
