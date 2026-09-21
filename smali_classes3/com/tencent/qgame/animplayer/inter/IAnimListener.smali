.class public interface abstract Lcom/tencent/qgame/animplayer/inter/IAnimListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/inter/IAnimListener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onFailed(ILjava/lang/String;)V
.end method

.method public abstract onVideoComplete()V
.end method

.method public abstract onVideoConfigReady(Lcom/tencent/qgame/animplayer/AnimConfig;)Z
.end method

.method public abstract onVideoDestroy()V
.end method

.method public abstract onVideoRender(ILcom/tencent/qgame/animplayer/AnimConfig;)V
.end method

.method public abstract onVideoStart()V
.end method
