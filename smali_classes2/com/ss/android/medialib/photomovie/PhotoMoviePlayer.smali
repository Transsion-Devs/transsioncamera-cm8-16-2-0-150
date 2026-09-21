.class public Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer$Orientation;,
        Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer$Mode;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 29
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadOldEditor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeCreatePlayer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    .line 58
    iput-object p1, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->context:Landroid/content/Context;

    return-void
.end method

.method private native nativeCreatePlayer()J
.end method

.method private native nativeGetDuration(J)J
.end method

.method private native nativeOnSizeChanged(JII)V
.end method

.method private native nativePause(J)I
.end method

.method private native nativePlayCover(JII)V
.end method

.method private native nativePrepare(J[Ljava/lang/String;Ljava/lang/String;IIIII)I
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeReset(J)I
.end method

.method private native nativeResume(J)I
.end method

.method private native nativeSeekTo(JJ)V
.end method

.method private native nativeSetFilter(JLjava/lang/String;Ljava/lang/String;F)V
.end method

.method private native nativeSetLoop(JZ)V
.end method

.method private native nativeSetOrientation(JI)V
.end method

.method private native nativeStart(JLandroid/view/Surface;II)I
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeSwitchPlayMode(JI)V
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    .line 246
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeGetDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public onSurfaceSizeChanged(II)V
    .registers 5

    .line 154
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeOnSizeChanged(JII)V

    return-void
.end method

.method public pause()I
    .registers 3

    .line 178
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativePause(J)I

    move-result p0

    return p0
.end method

.method public playCover(II)V
    .registers 5

    .line 238
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativePlayCover(JII)V

    return-void
.end method

.method public prepare(Ljava/util/List;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 68
    monitor-enter p0

    const/4 v0, 0x0

    .line 69
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->prepare(Ljava/util/List;Ljava/lang/String;Lcom/ss/android/medialib/photomovie/TransitionParams;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_8
    move-exception p1

    .line 70
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public prepare(Ljava/util/List;Ljava/lang/String;Lcom/ss/android/medialib/photomovie/TransitionParams;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ss/android/medialib/photomovie/TransitionParams;",
            ")I"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 94
    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-nez p3, :cond_1b

    .line 96
    new-instance p3, Lcom/ss/android/medialib/photomovie/TransitionParams;

    invoke-direct {p3}, Lcom/ss/android/medialib/photomovie/TransitionParams;-><init>()V

    const/4 p1, 0x1

    .line 97
    iput p1, p3, Lcom/ss/android/medialib/photomovie/TransitionParams;->id:I

    const/16 p1, 0x9c4

    .line 98
    iput p1, p3, Lcom/ss/android/medialib/photomovie/TransitionParams;->photoTime:I

    const/16 p1, 0x1f4

    .line 99
    iput p1, p3, Lcom/ss/android/medialib/photomovie/TransitionParams;->transitionTime:I

    .line 101
    :cond_1b
    monitor-enter p0

    .line 102
    :try_start_1c
    iget-object p1, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ss/android/medialib/utils/Utils;->getSystemAudioInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p1

    .line 103
    iget-wide v2, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p3, Lcom/ss/android/medialib/photomovie/TransitionParams;->id:I

    iget v9, p3, Lcom/ss/android/medialib/photomovie/TransitionParams;->photoTime:I

    iget v10, p3, Lcom/ss/android/medialib/photomovie/TransitionParams;->transitionTime:I
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_73

    move-object v1, p0

    move-object v5, p2

    :try_start_3c
    invoke-direct/range {v1 .. v10}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativePrepare(J[Ljava/lang/String;Ljava/lang/String;IIIII)I

    move-result p0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_69

    .line 105
    :try_start_40
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    const-string p2, "imageArray"

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string p2, "audioPath"

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string p2, "transitionParams"

    invoke-virtual {p3}, Lcom/ss/android/medialib/photomovie/TransitionParams;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string p2, "resultCode"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    const-string p2, "vesdk_event_photo_movie_init"

    const-string p3, "behavior"

    invoke-static {p2, p1, p3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_68} :catch_6c
    .catchall {:try_start_40 .. :try_end_68} :catchall_69

    goto :goto_71

    :catchall_69
    move-exception v0

    :goto_6a
    move-object p0, v0

    goto :goto_76

    :catch_6c
    move-exception v0

    move-object p1, v0

    .line 112
    :try_start_6e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    :goto_71
    monitor-exit v1

    return p0

    :catchall_73
    move-exception v0

    move-object v1, p0

    goto :goto_6a

    .line 115
    :goto_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_69

    throw p0
.end method

.method public prepare([Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 80
    monitor-enter p0

    .line 81
    :try_start_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->prepare(Ljava/util/List;Ljava/lang/String;Lcom/ss/android/medialib/photomovie/TransitionParams;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    .line 82
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public release()V
    .registers 3

    .line 195
    invoke-virtual {p0}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->stop()V

    .line 196
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeRelease(J)V

    const-wide/16 v0, 0x0

    .line 197
    iput-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    return-void
.end method

.method public reset()I
    .registers 3

    .line 170
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeReset(J)I

    move-result p0

    return p0
.end method

.method public resume()I
    .registers 3

    .line 162
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeResume(J)I

    move-result p0

    return p0
.end method

.method public seekTo(J)V
    .registers 5

    .line 229
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeSeekTo(JJ)V

    return-void
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 10

    .line 131
    iget-wide v1, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeSetFilter(JLjava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public setFilterPath(Ljava/lang/String;)V
    .registers 8

    .line 123
    iget-wide v1, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeSetFilter(JLjava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public setLoop(Z)V
    .registers 4

    .line 205
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeSetLoop(JZ)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 4

    .line 213
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeSetOrientation(JI)V

    return-void
.end method

.method public start(Landroid/view/Surface;II)I
    .registers 11

    .line 142
    monitor-enter p0

    .line 143
    :try_start_1
    iget-wide v2, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeStart(JLandroid/view/Surface;II)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_d
    move-exception v0

    :goto_e
    move-object p0, v0

    goto :goto_13

    :catchall_10
    move-exception v0

    move-object v1, p0

    goto :goto_e

    .line 144
    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_d

    throw p0
.end method

.method public stop()V
    .registers 3

    .line 186
    monitor-enter p0

    .line 187
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeStop(J)V

    .line 188
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public switchPlayMode(I)V
    .registers 4

    .line 221
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;->nativeSwitchPlayMode(JI)V

    return-void
.end method
