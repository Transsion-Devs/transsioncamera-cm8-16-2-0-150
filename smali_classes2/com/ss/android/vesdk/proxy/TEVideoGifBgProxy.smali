.class public Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/proxy/TEFuncProxy;
.implements Lcom/ss/android/medialib/presenter/ITEVideoController;


# static fields
.field private static final TAG:Ljava/lang/String; = "TEVideoGifBgProxy"


# instance fields
.field private gifPath:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private mHasStartRecord:Z

.field private mVStreamFilterIndex:I

.field private recorder:Lcom/ss/android/vesdk/TERecorder;

.field private vTrack:I


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->vTrack:I

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->mHasStartRecord:Z

    .line 18
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->mVStreamFilterIndex:I

    .line 21
    iput-object p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    .line 22
    iput-object p2, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->key:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->gifPath:Ljava/lang/String;

    return-void
.end method

.method private addVideoTrack(Ljava/lang/String;)V
    .registers 6

    .line 87
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 88
    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 89
    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v1, -0x1

    .line 91
    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 92
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const v1, 0x7fffffff

    .line 93
    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setLayer(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    sget-object v2, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->External:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    .line 95
    invoke-virtual {p1, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    .line 97
    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v2, v0, p1, v1}, Lcom/ss/android/vesdk/TERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;Z)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->vTrack:I

    .line 98
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->seekTrack(IIJ)I

    .line 99
    iget p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->vTrack:I

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->setFilterForVideoTrack(I)V

    return-void
.end method

.method private clearAllTrack()V
    .registers 5

    .line 79
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->vTrack:I

    if-ltz v0, :cond_10

    .line 80
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(IIZ)I

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->vTrack:I

    .line 82
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->mVStreamFilterIndex:I

    :cond_10
    return-void
.end method

.method private setFilterForVideoTrack(I)V
    .registers 8

    .line 103
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;-><init>()V

    const/4 v0, 0x2

    or-int/lit8 v0, v0, 0x4

    .line 106
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;->streamFlags:I

    .line 107
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->key:Ljava/lang/String;

    iput-object v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;->extraString:Ljava/lang/String;

    .line 108
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->mVStreamFilterIndex:I

    if-ltz v0, :cond_1e

    .line 109
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object p1

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->mVStreamFilterIndex:I

    invoke-virtual {p1, p0, v3}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    return-void

    .line 111
    :cond_1e
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->mVStreamFilterIndex:I

    return-void
.end method

.method private declared-synchronized setup()V
    .registers 4

    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->gifPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->addVideoTrack(Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->mHasStartRecord:Z

    if-nez v0, :cond_18

    .line 73
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->vTrack:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/ss/android/vesdk/TERecorder;->alignTo(IIII)I

    .line 74
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->start()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    goto :goto_18

    :catchall_16
    move-exception v0

    goto :goto_1a

    .line 76
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_16

    throw v0
.end method


# virtual methods
.method public changeGif(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->clearAllTrack()V

    .line 63
    iput-object p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->key:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->gifPath:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->setup()V

    return-void
.end method

.method public deleteLastFrag()V
    .registers 1

    return-void
.end method

.method public onCreate()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->setup()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->clearAllTrack()V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->vTrack:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ss/android/vesdk/TERecorder;->pausePlayTrack(II)I

    return-void
.end method

.method public restart()V
    .registers 3

    .line 133
    const-string v0, "TEVideoGifBgProxy"

    const-string v1, "restart"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->seek(J)V

    .line 135
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->start()V

    return-void
.end method

.method public seek(J)V
    .registers 5

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEVideoGifBgProxy"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->vTrack:I

    if-ltz v0, :cond_20

    .line 147
    iget-object p0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/TERecorder;->seekTrack(IIJ)I

    :cond_20
    return-void
.end method

.method public setEnableEffCtrl(Z)V
    .registers 2

    return-void
.end method

.method public setOnDuetProcessListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;)V
    .registers 2

    return-void
.end method

.method public setVEOnVideoEOFListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;)V
    .registers 2

    return-void
.end method

.method public start()V
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start play track "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->vTrack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEVideoGifBgProxy"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->vTrack:I

    if-ltz v0, :cond_22

    .line 127
    iget-object p0, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/TERecorder;->startPlayTrack(II)I

    :cond_22
    return-void
.end method

.method public startRecord(F)V
    .registers 4

    .line 48
    iget-boolean p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->mHasStartRecord:Z

    if-nez p1, :cond_c

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->mHasStartRecord:Z

    const-wide/16 v0, 0x0

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->seek(J)V

    .line 52
    :cond_c
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->start()V

    return-void
.end method

.method public stopRecord()V
    .registers 1

    .line 57
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEVideoGifBgProxy;->pause()V

    return-void
.end method

.method public tryRestore()V
    .registers 1

    return-void
.end method
