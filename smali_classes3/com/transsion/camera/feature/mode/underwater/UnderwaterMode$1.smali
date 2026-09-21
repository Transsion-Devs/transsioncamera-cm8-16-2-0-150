.class Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->initUnderModeUI(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$1;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountDownCancelled()V
    .registers 1

    return-void
.end method

.method public onCountDownFinished()V
    .registers 3

    .line 164
    invoke-static {}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "playDrainageSound after onCountDownFinished"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode$1;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->mUnderwaterUI:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;->-$$Nest$fgetmDrainageSoundCallback(Lcom/transsion/camera/feature/mode/underwater/UnderwaterMode;)Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

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
