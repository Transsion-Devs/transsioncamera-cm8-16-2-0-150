.class public Lcom/amazing/media/AudioPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/amazing/annotation/EffectKeep;
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 20
    iput-object p1, p0, Lcom/amazing/media/AudioPlayer;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    .line 86
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 87
    iget-object v0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_f
    return-void
.end method

.method public isPlaying()Z
    .registers 1
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 1
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation

    .line 66
    iget-object p0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public play()V
    .registers 2
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 57
    invoke-virtual {p0}, Lcom/amazing/media/AudioPlayer;->prepare()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 59
    iget-object p0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_10
    return-void
.end method

.method public prepare()Z
    .registers 3
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/amazing/media/AudioPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 30
    iget-object p0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public resume()V
    .registers 1
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public setLoop(Z)V
    .registers 2
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public stop()V
    .registers 1
    .annotation build Lcom/amazing/annotation/EffectKeep;
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/amazing/media/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method
