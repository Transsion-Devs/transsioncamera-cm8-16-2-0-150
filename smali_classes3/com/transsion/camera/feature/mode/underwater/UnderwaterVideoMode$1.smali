.class Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V
    .registers 2

    .line 410
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountDownCancelled()V
    .registers 1

    return-void
.end method

.method public onCountDownFinished()V
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->-$$Nest$fputmStopByLongPressedPower(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;Z)V

    .line 425
    invoke-static {}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "playDrainageSound after onCountDownFinished"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    const/4 v1, 0x0

    const/16 v2, 0x19

    # invokes: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(II)Z
    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$001(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;II)Z

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->-$$Nest$fgetmDrainageSoundCallback(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->playDrainageSound(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method public onCountDownFinishedPrepare()V
    .registers 1

    return-void
.end method

.method public onCountDownStarted()V
    .registers 1

    return-void
.end method
