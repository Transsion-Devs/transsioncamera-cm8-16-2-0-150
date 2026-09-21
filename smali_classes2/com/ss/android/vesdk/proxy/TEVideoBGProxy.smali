.class public Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/proxy/TEFuncProxy;
.implements Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;
.implements Lcom/ss/android/medialib/presenter/ITEVideoController;


# static fields
.field private static final TAG:Ljava/lang/String; = "TEVideoBGProxy"


# instance fields
.field private aTrack:I

.field private audioPath:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private mEnableEffCtrl:Z

.field private mHasStartRecord:Z

.field private mLastRecordTime:J

.field private mRecordTimeQueue:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mVStreamFilterIndex:I

.field private onDuetProcessListener:Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;

.field private onVideoEOFListener:Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;

.field private recorder:Lcom/ss/android/vesdk/TERecorder;

.field private speed:F

.field private vTrack:I

.field private videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->speed:F

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    .line 25
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    .line 26
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mVStreamFilterIndex:I

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mHasStartRecord:Z

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mLastRecordTime:J

    .line 29
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mRecordTimeQueue:Ljava/util/Stack;

    .line 35
    iput-object p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    .line 36
    iput-object p2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->key:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->videoPath:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->audioPath:Ljava/lang/String;

    .line 39
    iput-boolean v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mHasStartRecord:Z

    .line 40
    iput-boolean v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mEnableEffCtrl:Z

    return-void
.end method

.method private addAudioTrack(Ljava/lang/String;)V
    .registers 6

    .line 54
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 58
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    sget-object v0, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->External:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    .line 59
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, v1}, Lcom/ss/android/vesdk/TERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;Z)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    .line 62
    iget-object p0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->seekTrack(IIJ)I

    return-void
.end method

.method private addVideoTrack(Ljava/lang/String;)V
    .registers 6

    .line 66
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 67
    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v1, -0x1

    .line 70
    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 71
    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setLayer(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    sget-object v2, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->External:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    .line 72
    invoke-virtual {p1, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    .line 74
    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v2, v0, p1, v1}, Lcom/ss/android/vesdk/TERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;Z)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    .line 75
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->seekTrack(IIJ)I

    .line 76
    iget p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->setFilterForVideoTrack(I)V

    return-void
.end method

.method private clearAllTrack()V
    .registers 6

    .line 224
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ltz v0, :cond_14

    .line 225
    iget-object v3, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v3, v0, v2}, Lcom/ss/android/vesdk/TERecorder;->pausePlayTrack(II)I

    .line 226
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v3, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    invoke-virtual {v0, v2, v3, v2}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(IIZ)I

    .line 227
    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    .line 229
    :cond_14
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    if-ltz v0, :cond_29

    .line 230
    iget-object v3, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/ss/android/vesdk/TERecorder;->pausePlayTrack(II)I

    .line 231
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v3, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    invoke-virtual {v0, v4, v3, v2}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(IIZ)I

    .line 232
    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    .line 233
    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mVStreamFilterIndex:I

    :cond_29
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 342
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setFilterForCameraTrack(I)V
    .registers 2

    return-void
.end method

.method private setFilterForVideoTrack(I)V
    .registers 8

    .line 95
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;-><init>()V

    const/4 v0, 0x2

    or-int/lit8 v0, v0, 0x4

    .line 98
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;->streamFlags:I

    .line 99
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->key:Ljava/lang/String;

    iput-object v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;->extraString:Ljava/lang/String;

    .line 100
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mVStreamFilterIndex:I

    if-ltz v0, :cond_1e

    .line 101
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object p1

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mVStreamFilterIndex:I

    invoke-virtual {p1, p0, v3}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    return-void

    .line 103
    :cond_1e
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mVStreamFilterIndex:I

    return-void
.end method

.method private declared-synchronized setup()V
    .registers 6

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->audioPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->addAudioTrack(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->addVideoTrack(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->updateCameraTrack()V

    .line 47
    const-string v0, "TEVideoBGProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setup v("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), a("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    iget v2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->alignTo(IIII)I

    move-result v0

    .line 49
    const-string v1, "TEVideoBGProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alignTo ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->start()V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    .line 51
    monitor-exit p0

    return-void

    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0
.end method


# virtual methods
.method public declared-synchronized changeVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->key:Ljava/lang/String;

    if-eq v0, p1, :cond_10

    if-eqz v0, :cond_29

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_6b

    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->videoPath:Ljava/lang/String;

    if-eq v0, p2, :cond_1c

    if-eqz v0, :cond_29

    .line 207
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_1c
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->audioPath:Ljava/lang/String;

    if-eq v0, p3, :cond_69

    if-eqz v0, :cond_29

    .line 208
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_69

    .line 211
    :cond_29
    const-string v0, "TEVideoBGProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVideo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", vPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", aPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mRecordTimeQueue:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mHasStartRecord:Z

    .line 214
    invoke-direct {p0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->clearAllTrack()V

    .line 215
    iput-object p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->key:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->videoPath:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->audioPath:Ljava/lang/String;

    if-eqz p2, :cond_67

    if-eqz p3, :cond_67

    .line 219
    invoke-direct {p0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->setup()V
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_e

    .line 221
    :cond_67
    monitor-exit p0

    return-void

    .line 209
    :cond_69
    :goto_69
    monitor-exit p0

    return-void

    :goto_6b
    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_e

    throw p1
.end method

.method public declared-synchronized deleteLastFrag()V
    .registers 3

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mRecordTimeQueue:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mRecordTimeQueue:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_11
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_19

    :catchall_f
    move-exception v0

    goto :goto_27

    .line 123
    :catch_11
    :try_start_11
    const-string v0, "TEVideoBGProxy"

    const-string v1, "Seek to 0"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_20

    .line 125
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_22

    :cond_20
    const-wide/16 v0, 0x0

    :goto_22
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->seek(J)V
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_f

    .line 126
    monitor-exit p0

    return-void

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_f

    throw v0
.end method

.method public onCreate()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/TERecorder;->addRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V

    .line 113
    invoke-direct {p0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->setup()V

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .registers 2

    monitor-enter p0

    .line 143
    :try_start_1
    invoke-direct {p0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->clearAllTrack()V

    .line 144
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/TERecorder;->removeRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 145
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onHardEncoderInit(Z)V
    .registers 2

    return-void
.end method

.method public onInfo(IILjava/lang/String;)V
    .registers 7

    .line 242
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_MULTIPLE_TRACK_EOF:I

    if-ne p1, v0, :cond_65

    const/high16 p1, -0x80000000

    and-int v0, p2, p1

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    const v0, 0x7fffffff

    and-int/2addr p2, v0

    .line 247
    :try_start_11
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_1b

    :catch_16
    move-exception p3

    .line 249
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p3, -0x1

    .line 251
    :goto_1b
    monitor-enter p0

    if-ltz p3, :cond_61

    .line 252
    :try_start_1e
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    if-ne v0, p3, :cond_61

    .line 253
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->onDuetProcessListener:Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;

    if-eqz v0, :cond_2d

    int-to-long v1, p2

    .line 254
    invoke-interface {v0, v1, v2, p1}, Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;->onProcess(JZ)V

    goto :goto_2d

    :catchall_2b
    move-exception p1

    goto :goto_63

    :cond_2d
    :goto_2d
    if-eqz p1, :cond_61

    .line 257
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->onVideoEOFListener:Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;

    if-eqz v0, :cond_36

    .line 258
    invoke-interface {v0}, Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;->onEOF()V

    :cond_36
    const-wide/16 v0, 0x0

    .line 260
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->seek(J)V

    .line 261
    const-string v0, "TEVideoBGProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeInMS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", eof="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", videoIndex="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_61
    monitor-exit p0

    goto :goto_65

    :goto_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_1e .. :try_end_64} :catchall_2b

    throw p1

    :cond_65
    :goto_65
    return-void
.end method

.method public onNativeInit(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public declared-synchronized pause()V
    .registers 4

    monitor-enter p0

    .line 311
    :try_start_1
    const-string v0, "TEVideoBGProxy"

    const-string v1, "pause"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    if-ltz v0, :cond_15

    .line 313
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/vesdk/TERecorder;->pausePlayTrack(II)I

    goto :goto_1f

    :catchall_13
    move-exception v0

    goto :goto_21

    .line 314
    :cond_15
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    if-ltz v0, :cond_1f

    .line 315
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/vesdk/TERecorder;->pausePlayTrack(II)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_13

    .line 317
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_13

    throw v0
.end method

.method public declared-synchronized removeRecordBGM(I)I
    .registers 5

    monitor-enter p0

    .line 167
    :try_start_1
    const-string v0, "TEVideoBGProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeRecordBGM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1a

    .line 168
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public declared-synchronized restart()V
    .registers 3

    monitor-enter p0

    .line 304
    :try_start_1
    const-string v0, "TEVideoBGProxy"

    const-string v1, "restart"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 305
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->seek(J)V

    .line 306
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->start()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 307
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public declared-synchronized seek(J)V
    .registers 6

    monitor-enter p0

    .line 321
    :try_start_1
    const-string v0, "TEVideoBGProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    if-ltz v0, :cond_24

    .line 323
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p1, p2}, Lcom/ss/android/vesdk/TERecorder;->seekTrack(IIJ)I

    goto :goto_2e

    :catchall_22
    move-exception p1

    goto :goto_30

    .line 324
    :cond_24
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    if-ltz v0, :cond_2e

    .line 325
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1, p2}, Lcom/ss/android/vesdk/TERecorder;->seekTrack(IIJ)I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_22

    .line 327
    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_22

    throw p1
.end method

.method public declared-synchronized setEnableEffCtrl(Z)V
    .registers 5

    monitor-enter p0

    .line 288
    :try_start_1
    iput-boolean p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mEnableEffCtrl:Z

    .line 289
    const-string v0, "TEVideoBGProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableEffCtrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 290
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public declared-synchronized setOnDuetProcessListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;)V
    .registers 3

    monitor-enter p0

    .line 337
    :try_start_1
    iput-object p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->onDuetProcessListener:Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;

    .line 338
    const-string p1, "TEVideoBGProxy"

    const-string v0, "setOnDuetProcessListener"

    invoke-direct {p0, p1, v0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 339
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized setRecordBGM(Ljava/lang/String;JJII)I
    .registers 8

    monitor-enter p0

    .line 172
    :try_start_1
    const-string p2, "TEVideoBGProxy"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setRecordBGM , trackIndex="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", bgmPath="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-gez p7, :cond_40

    .line 181
    iget p2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    if-gez p2, :cond_5a

    .line 182
    iget-object p2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->audioPath:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->addAudioTrack(Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget p3, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    iget p5, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/ss/android/vesdk/TERecorder;->alignTo(IIII)I

    goto :goto_5a

    :catchall_3e
    move-exception p1

    goto :goto_5c

    .line 185
    :cond_40
    iget p2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    if-ltz p2, :cond_5a

    .line 187
    iget-object p3, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p3, p2, p1}, Lcom/ss/android/vesdk/TERecorder;->pausePlayTrack(II)I

    .line 188
    iget-object p2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget p3, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    invoke-virtual {p2, p1, p3, p1}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(IIZ)I

    const/4 p2, -0x1

    .line 189
    iput p2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    .line 190
    iget-object p2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget p3, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    invoke-virtual {p2, p3, p4, p1, p4}, Lcom/ss/android/vesdk/TERecorder;->alignTo(IIII)I
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_3e

    .line 192
    :cond_5a
    :goto_5a
    monitor-exit p0

    return p4

    :goto_5c
    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_3e

    throw p1
.end method

.method public declared-synchronized setVEOnVideoEOFListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;)V
    .registers 3

    monitor-enter p0

    .line 331
    :try_start_1
    iput-object p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->onVideoEOFListener:Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;

    .line 332
    const-string p1, "TEVideoBGProxy"

    const-string v0, "setVEOnVideoEOFListener"

    invoke-direct {p0, p1, v0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 333
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized start()V
    .registers 4

    monitor-enter p0

    .line 294
    :try_start_1
    const-string v0, "TEVideoBGProxy"

    const-string v1, "start"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    if-ltz v0, :cond_15

    .line 296
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/vesdk/TERecorder;->startPlayTrack(II)I

    goto :goto_1f

    :catchall_13
    move-exception v0

    goto :goto_21

    .line 297
    :cond_15
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    if-ltz v0, :cond_1f

    .line 298
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/vesdk/TERecorder;->startPlayTrack(II)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_13

    .line 300
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_13

    throw v0
.end method

.method public declared-synchronized startRecord(F)V
    .registers 4

    monitor-enter p0

    .line 149
    :try_start_1
    iget-boolean p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mHasStartRecord:Z

    if-nez p1, :cond_10

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mHasStartRecord:Z

    const-wide/16 v0, 0x0

    .line 151
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->seek(J)V

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_1d

    .line 153
    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->start()V

    .line 154
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorder;->getEndFrameTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mLastRecordTime:J
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_e

    .line 155
    monitor-exit p0

    return-void

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_e

    throw p1
.end method

.method public declared-synchronized stopRecord()V
    .registers 6

    monitor-enter p0

    .line 159
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->pause()V

    .line 160
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mRecordTimeQueue:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 161
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mRecordTimeQueue:Ljava/util/Stack;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_2e

    .line 163
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mRecordTimeQueue:Ljava/util/Stack;

    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorder;->getEndFrameTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mLastRecordTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_18

    .line 164
    monitor-exit p0

    return-void

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_18

    throw v0
.end method

.method public declared-synchronized tryRestore()V
    .registers 3

    monitor-enter p0

    .line 130
    :try_start_1
    const-string v0, "TEVideoBGProxy"

    const-string v1, "tryRestore"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->mHasStartRecord:Z

    .line 132
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    if-ltz v0, :cond_24

    .line 133
    new-instance v0, Lcom/ss/android/vesdk/VEVolumeParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEVolumeParam;-><init>()V

    .line 134
    iget v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    iput v1, v0, Lcom/ss/android/vesdk/VEVolumeParam;->trackIndex:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 135
    iput v1, v0, Lcom/ss/android/vesdk/VEVolumeParam;->bgmPlayVolume:F

    .line 136
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/TERecorder;->setVolume(Lcom/ss/android/vesdk/VEVolumeParam;)V

    goto :goto_24

    :catchall_22
    move-exception v0

    goto :goto_29

    .line 138
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->start()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_22

    .line 139
    monitor-exit p0

    return-void

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_22

    throw v0
.end method

.method protected updateCameraTrack()V
    .registers 5

    .line 80
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    const-string v1, "camera_path"

    .line 81
    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    const v2, 0x7fffffff

    .line 84
    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setLayer(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    sget-object v2, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->HOST:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    .line 88
    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v1, v0, v3}, Lcom/ss/android/vesdk/TERecorder;->updateTrack(IILcom/ss/android/ttve/model/VETrackParams;Z)I

    .line 91
    invoke-direct {p0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->setFilterForCameraTrack(I)V

    return-void
.end method

.method public declared-synchronized updateSpeed(F)V
    .registers 7

    monitor-enter p0

    .line 196
    :try_start_1
    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->speed:F

    .line 197
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->aTrack:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_14

    .line 198
    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v3, 0x1

    div-float v4, v1, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/ss/android/vesdk/TERecorder;->setTrackSpeed(IIF)I

    goto :goto_14

    :catchall_12
    move-exception p1

    goto :goto_21

    .line 200
    :cond_14
    :goto_14
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->vTrack:I

    if-ltz v0, :cond_1f

    .line 201
    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEVideoBGProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v3, 0x0

    div-float/2addr v1, p1

    invoke-virtual {v2, v0, v3, v1}, Lcom/ss/android/vesdk/TERecorder;->setTrackSpeed(IIF)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_12

    .line 203
    :cond_1f
    monitor-exit p0

    return-void

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_12

    throw p1
.end method
