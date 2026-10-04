.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;


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

    .line 978
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPressed()V
    .registers 3

    .line 992
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsModeSwitching(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 993
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onLongPressed, return for mode switching"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 996
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsPaused(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 997
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onLongPressed, return for paused"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1000
    :cond_24
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onLongPressed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1001
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mswitchToViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    return-void
.end method

.method public onZoomPointBarTouchDown(I)V
    .registers 5

    .line 1006
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZoomPointBarTouchDown] downRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1008
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_zoom_type_for_touch"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const/4 v2, 0x2

    .line 1009
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1010
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_click_down_zoom_ratio"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const/4 v1, 0x0

    .line 1011
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4c
    return-void
.end method

.method public onZoomRatioChanged(I)V
    .registers 5

    .line 981
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 982
    const-string v1, "key_smooth_zoom_ui5"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    .line 983
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isSATSupported()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I

    move-result v0

    if-eq p1, v0, :cond_3c

    .line 985
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 987
    :cond_3c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsShoulderButtonSwiped(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 v0, 0x80

    goto :goto_48

    :cond_47
    const/4 v0, 0x2

    :goto_48
    invoke-static {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mdoOnZoomRatioChanged(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;II)V

    return-void
.end method
