.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;,
        Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;
    }
.end annotation


# virtual methods
.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setDataSource(Landroid/content/res/AssetFileDescriptor;)V
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setPlayerListener(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;)V
.end method

.method public abstract setProgressListener(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;)V
.end method

.method public abstract setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
