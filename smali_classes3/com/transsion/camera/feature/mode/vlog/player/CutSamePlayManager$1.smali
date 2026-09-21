.class Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cutsame/solution/player/PlayerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->-$$Nest$fgetmPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->-$$Nest$fgetmPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;->onChanged(I)V

    :cond_11
    return-void
.end method

.method public onFirstFrameRendered()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->-$$Nest$fgetmPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->-$$Nest$fgetmPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;->onFirstFrameRendered()V

    :cond_11
    return-void
.end method

.method public onPlayEof()V
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->-$$Nest$fgetmPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->-$$Nest$fgetmPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;->onPlayEof()V

    :cond_11
    return-void
.end method

.method public onPlayError(ILjava/lang/String;)V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->-$$Nest$fgetmPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->-$$Nest$fgetmPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;->onPlayError(ILjava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onPlayProgress(J)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->-$$Nest$fgetmPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->-$$Nest$fgetmPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;->onPlayProgress(J)V

    :cond_11
    return-void
.end method
