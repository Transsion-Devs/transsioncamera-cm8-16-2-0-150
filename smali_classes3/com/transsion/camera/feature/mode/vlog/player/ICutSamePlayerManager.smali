.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;
    }
.end annotation


# virtual methods
.method public abstract getDuration()Ljava/lang/Long;
.end method

.method public abstract getState()Lcom/cutsame/solution/player/BasePlayer$PlayState;
.end method

.method public abstract isIdle()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract playVideo(Landroid/view/SurfaceView;Landroid/graphics/Point;Lcom/ss/android/ugc/cut_ui/MediaItem;)V
.end method

.method public abstract refreshCurrentFrame()V
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(IZ)V
.end method

.method public abstract seeking(I)V
.end method

.method public abstract setPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;)V
.end method

.method public abstract start()V
.end method
