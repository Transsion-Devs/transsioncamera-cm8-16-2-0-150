.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;,
        Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract pausePlay()V
.end method

.method public abstract playVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Landroid/content/res/AssetFileDescriptor;ZIIZZ)V
.end method

.method public abstract playVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Ljava/lang/String;ZIIZZ)V
.end method

.method public abstract resumePlay()V
.end method

.method public abstract seekTo(II)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract stopPlay()V
.end method
