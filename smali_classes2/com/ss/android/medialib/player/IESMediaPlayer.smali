.class public Lcom/ss/android/medialib/player/IESMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mHandle:J

.field private mInfoListener:Lcom/ss/android/medialib/player/Message$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 21
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    .line 29
    iput-object p1, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->context:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeCreatePlayer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    return-void
.end method

.method private native nativeCreatePlayer()J
.end method

.method private native nativeCurrentPosition(J)J
.end method

.method private native nativeDeleteSeg(JI)I
.end method

.method private native nativeFillBackgroundColor(JI)I
.end method

.method private native nativeGetDuration(J)J
.end method

.method private native nativeGetDurations(J)[J
.end method

.method private native nativeIsMultiSpeedSupported(JI)Z
.end method

.method private native nativeIsPlaying(J)Z
.end method

.method private native nativeIsSeeking(J)Z
.end method

.method private native nativePause(J)I
.end method

.method private native nativePrepare(J[Ljava/lang/String;II)I
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeResume(J)I
.end method

.method private native nativeSeek(JJI)I
.end method

.method private native nativeSelect(JI)I
.end method

.method private native nativeSetBoundary(JIJJ)V
.end method

.method private native nativeSetLoop(JZ)V
.end method

.method private native nativeSetSegPoints(JI[J)I
.end method

.method private native nativeSetSegRotation(JII)I
.end method

.method private native nativeSetSpeed(JID)V
.end method

.method private native nativeSetVolume(JD)V
.end method

.method private native nativeStart(JLandroid/view/Surface;)I
.end method

.method private native nativeStop(J)V
.end method

.method private seek(JI)I
    .registers 10

    .line 156
    iget-wide v1, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    .line 157
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeSeek(JJI)I

    move-result p0

    return p0
.end method


# virtual methods
.method public deleteSeg(I)I
    .registers 6

    .line 293
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    if-gez p1, :cond_e

    const/4 p0, -0x2

    return p0

    .line 295
    :cond_e
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeDeleteSeg(JI)I

    move-result p0

    return p0
.end method

.method public fillBackgroundColor(I)I
    .registers 6

    .line 220
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 221
    :cond_a
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeFillBackgroundColor(JI)I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()J
    .registers 6

    .line 288
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 289
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeCurrentPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 6

    .line 263
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 264
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeGetDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurations()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    iget-wide v1, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_e

    goto :goto_24

    .line 274
    :cond_e
    invoke-direct {p0, v1, v2}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeGetDurations(J)[J

    move-result-object p0

    if-eqz p0, :cond_24

    .line 276
    array-length v1, p0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_24

    aget-wide v3, p0, v2

    .line 277
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_24
    :goto_24
    return-object v0
.end method

.method public isPlaying()Z
    .registers 5

    .line 303
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 304
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeIsPlaying(J)Z

    move-result p0

    return p0
.end method

.method public isSeeking()Z
    .registers 5

    .line 312
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 313
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeIsSeeking(J)Z

    move-result p0

    return p0
.end method

.method public isSegMultiSpeedSupported(I)Z
    .registers 6

    .line 230
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 231
    :cond_a
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeIsMultiSpeedSupported(JI)Z

    move-result p0

    return p0
.end method

.method public onInfo(II)V
    .registers 3

    .line 328
    iget-object p0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mInfoListener:Lcom/ss/android/medialib/player/Message$Listener;

    if-eqz p0, :cond_7

    .line 329
    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/player/Message$Listener;->onInfo(II)V

    :cond_7
    return-void
.end method

.method public pause()I
    .registers 5

    .line 76
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 77
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativePause(J)I

    move-result p0

    return p0
.end method

.method public prepare(Ljava/lang/String;)I
    .registers 3

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/player/IESMediaPlayer;->prepare(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public prepare(Ljava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 50
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    if-eqz p1, :cond_46

    .line 51
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_46

    .line 54
    :cond_13
    iget-object v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->context:Landroid/content/Context;

    if-eqz v0, :cond_2e

    .line 55
    invoke-static {v0}, Lcom/ss/android/medialib/utils/Utils;->getSystemAudioInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    .line 56
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 57
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    move v6, v1

    goto :goto_31

    :cond_2e
    const/4 v1, 0x0

    move v6, v1

    move v7, v6

    .line 59
    :goto_31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    .line 61
    iget-wide v3, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativePrepare(J[Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_46
    :goto_46
    const/4 p0, -0x2

    return p0
.end method

.method public release()V
    .registers 6

    .line 88
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-void

    .line 89
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeRelease(J)V

    .line 90
    iput-wide v2, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    return-void
.end method

.method public resume()I
    .registers 5

    .line 71
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 72
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeResume(J)I

    move-result p0

    return p0
.end method

.method public seek(J)I
    .registers 4

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/medialib/player/IESMediaPlayer;->seek(JI)I

    move-result p0

    return p0
.end method

.method public seekLeft(J)I
    .registers 4

    const/4 v0, -0x1

    .line 138
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/medialib/player/IESMediaPlayer;->seek(JI)I

    move-result p0

    return p0
.end method

.method public seekRight(J)I
    .registers 4

    const/4 v0, 0x1

    .line 147
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/medialib/player/IESMediaPlayer;->seek(JI)I

    move-result p0

    return p0
.end method

.method public select(I)I
    .registers 6

    .line 108
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    if-gez p1, :cond_e

    const/4 p0, -0x2

    return p0

    .line 110
    :cond_e
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeSelect(JI)I

    move-result p0

    return p0
.end method

.method public setBoundary(JJ)V
    .registers 13

    .line 166
    iget-wide v1, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_f

    const/4 v3, -0x1

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 167
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeSetBoundary(JIJJ)V

    :cond_f
    return-void
.end method

.method public setLoop(Z)V
    .registers 6

    .line 98
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 99
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeSetLoop(JZ)V

    :cond_b
    return-void
.end method

.method public setMessageListener(Lcom/ss/android/medialib/player/Message$Listener;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mInfoListener:Lcom/ss/android/medialib/player/Message$Listener;

    return-void
.end method

.method public setSegBoundary(IJJ)V
    .registers 14

    if-gez p1, :cond_3

    goto :goto_12

    .line 178
    :cond_3
    iget-wide v1, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_12

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 179
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeSetBoundary(JIJJ)V

    :cond_12
    :goto_12
    return-void
.end method

.method public setSegPoints(ILjava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/medialib/model/Point;",
            ">;)I"
        }
    .end annotation

    .line 242
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    if-eqz p2, :cond_49

    .line 243
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_49

    .line 244
    :cond_13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 245
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_42

    .line 246
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/medialib/model/Point;

    if-nez v3, :cond_31

    const-wide/16 v3, -0x1

    .line 248
    aput-wide v3, v0, v2

    add-int/lit8 v5, v2, 0x1

    .line 249
    aput-wide v3, v0, v5

    goto :goto_3f

    .line 251
    :cond_31
    invoke-virtual {v3}, Lcom/ss/android/medialib/model/Point;->getLeft()J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v4, v2, 0x1

    .line 252
    invoke-virtual {v3}, Lcom/ss/android/medialib/model/Point;->getRight()J

    move-result-wide v5

    aput-wide v5, v0, v4

    :goto_3f
    add-int/lit8 v2, v2, 0x2

    goto :goto_1e

    .line 255
    :cond_42
    iget-wide v1, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeSetSegPoints(JI[J)I

    move-result p0

    return p0

    :cond_49
    :goto_49
    const/4 p0, -0x2

    return p0
.end method

.method public setSegRotation(II)V
    .registers 7

    if-gez p1, :cond_3

    goto :goto_e

    .line 209
    :cond_3
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    .line 210
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeSetSegRotation(JII)I

    :cond_e
    :goto_e
    return-void
.end method

.method public setSegSpeed(ID)V
    .registers 10

    .line 197
    iget-wide v1, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_e

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    .line 198
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeSetSpeed(JID)V

    :cond_e
    return-void
.end method

.method public setSpeed(D)V
    .registers 4

    const/4 v0, -0x1

    .line 188
    invoke-virtual {p0, v0, p1, p2}, Lcom/ss/android/medialib/player/IESMediaPlayer;->setSegSpeed(ID)V

    return-void
.end method

.method public setVolume(D)V
    .registers 7

    .line 338
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 339
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeSetVolume(JD)V

    :cond_b
    return-void
.end method

.method public start(Landroid/view/Surface;)I
    .registers 6

    .line 66
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 67
    :cond_a
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeStart(JLandroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public stop()V
    .registers 5

    .line 81
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 82
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeStop(J)V

    :cond_b
    return-void
.end method

.method public unSelect()I
    .registers 5

    .line 119
    iget-wide v0, p0, Lcom/ss/android/medialib/player/IESMediaPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_a

    return v3

    .line 120
    :cond_a
    invoke-direct {p0, v0, v1, v3}, Lcom/ss/android/medialib/player/IESMediaPlayer;->nativeSelect(JI)I

    move-result p0

    return p0
.end method
