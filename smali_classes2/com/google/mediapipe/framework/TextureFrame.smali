.class public interface abstract Lcom/google/mediapipe/framework/TextureFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/framework/TextureReleaseCallback;


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getTextureName()I
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getWidth()I
.end method

.method public abstract release()V
.end method

.method public abstract release(Lcom/google/mediapipe/framework/GlSyncToken;)V
.end method

.method public retain()V
    .registers 1

    .line 74
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public supportsRetain()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
