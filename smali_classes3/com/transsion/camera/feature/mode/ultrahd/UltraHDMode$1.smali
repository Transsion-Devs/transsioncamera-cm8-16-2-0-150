.class Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCameraOperateAction(I)V
    .registers 3

    if-eqz p1, :cond_61

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_31

    const/16 v0, 0xee

    if-eq p1, v0, :cond_d

    goto :goto_60

    .line 110
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$fgetmCaptureHandler(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    move-result-object p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->isSupport200M()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$fgetmCaptureHandler(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$fgetmCaptureHandler(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$CaptureHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 100
    :cond_31
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->getUltraHDTips()V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$mshowTip(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)V

    return-void

    .line 104
    :cond_3c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$fgetmClosestMP(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$fgetmClosestMP(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$mfindSuitableInfo(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->getUltraHDTips()V

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$mshowTip(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)V

    :cond_60
    :goto_60
    return-void

    .line 97
    :cond_61
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode$1;->this$0:Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;->-$$Nest$mhideTip(Lcom/transsion/camera/feature/mode/ultrahd/UltraHDMode;)V

    return-void
.end method
