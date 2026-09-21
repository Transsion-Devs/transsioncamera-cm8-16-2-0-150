.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;
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

    .line 951
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPressed()V
    .registers 3

    .line 959
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsModeSwitching(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 960
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onLongPressed, return for mode switching"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 963
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmIsPaused(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 964
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onLongPressed, return for paused"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 967
    :cond_24
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onLongPressed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 968
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mswitchToViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    return-void
.end method

.method public onZoomRatioChanged(I)V
    .registers 2

    .line 954
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mdoOnZoomRatioChanged(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    return-void
.end method
