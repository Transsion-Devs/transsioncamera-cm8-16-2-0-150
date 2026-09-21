.class public Lcom/ss/android/vesdk/audio/TEAudioTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TEAudioTrack"


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBufferSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 10

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "TEAudioTrack"

    const-string v1, "new()"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    const/4 v1, 0x2

    .line 25
    invoke-static {p1, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mBufferSize:I

    .line 26
    new-instance v1, Landroid/media/AudioTrack;

    iget v6, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mBufferSize:I

    const/4 v7, 0x1

    const/4 v2, 0x3

    const/16 v4, 0xc

    const/4 v5, 0x2

    move v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    return-void
.end method


# virtual methods
.method public getMinBufferSize()I
    .registers 1

    .line 77
    iget p0, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mBufferSize:I

    return p0
.end method

.method public pause()I
    .registers 3

    .line 55
    const-string v0, "TEAudioTrack"

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 p0, -0x1

    return p0

    .line 60
    :cond_12
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .registers 3

    .line 66
    const-string v0, "TEAudioTrack"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V

    return-void
.end method

.method public setVolume(F)I
    .registers 2

    .line 82
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    move-result p0

    return p0
.end method

.method public start()I
    .registers 3

    .line 32
    const-string v0, "TEAudioTrack"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 p0, -0x1

    return p0

    .line 37
    :cond_12
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    const/4 p0, 0x0

    return p0
.end method

.method public stop()I
    .registers 3

    .line 43
    const-string v0, "TEAudioTrack"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 p0, -0x1

    return p0

    .line 48
    :cond_12
    iget-object v0, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 49
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    const/4 p0, 0x0

    return p0
.end method

.method public write([BI)I
    .registers 4

    .line 72
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/TEAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p0

    return p0
.end method
