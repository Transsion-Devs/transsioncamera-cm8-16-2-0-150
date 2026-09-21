.class public Lcom/ss/android/vesdk/proxy/TEDuetProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/proxy/TEFuncProxy;
.implements Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TEDuetProxy"


# instance fields
.field aTrack:I

.field bTrack:I

.field mCamCanvasFilterIndex:I

.field mCamTransFilterIndex:I

.field mDstSize:Lcom/ss/android/vesdk/VESize;

.field private mEOFCallback:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mSrcSize:Lcom/ss/android/vesdk/VESize;

.field mVTransFilterIndex:I

.field recorder:Lcom/ss/android/vesdk/TERecorder;

.field resManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

.field settings:Lcom/ss/android/vesdk/VEDuetSettings;

.field vTrack:I


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEDuetSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mEOFCallback:Ljava/lang/Runnable;

    .line 22
    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    .line 23
    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->settings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 24
    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->resManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    .line 25
    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    .line 26
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    .line 28
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    .line 29
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    .line 30
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamCanvasFilterIndex:I

    .line 31
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    .line 32
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mVTransFilterIndex:I

    .line 33
    new-instance v0, Lcom/ss/android/vesdk/proxy/TEDuetProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/proxy/TEDuetProxy$1;-><init>(Lcom/ss/android/vesdk/proxy/TEDuetProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    .line 43
    iput-object p2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->settings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 44
    iput-object p3, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->resManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    .line 45
    new-instance p1, Lcom/ss/android/vesdk/VESize;

    iget p2, p4, Lcom/ss/android/vesdk/VESize;->width:I

    iget p3, p4, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {p1, p2, p3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    return-void
.end method

.method protected constructor <init>(Lcom/ss/android/vesdk/proxy/TEDuetProxy;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mEOFCallback:Ljava/lang/Runnable;

    .line 22
    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    .line 23
    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->settings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 24
    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->resManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    .line 25
    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    .line 26
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    .line 28
    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    .line 29
    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    .line 30
    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamCanvasFilterIndex:I

    .line 31
    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    .line 32
    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mVTransFilterIndex:I

    .line 33
    new-instance v1, Lcom/ss/android/vesdk/proxy/TEDuetProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ss/android/vesdk/proxy/TEDuetProxy$1;-><init>(Lcom/ss/android/vesdk/proxy/TEDuetProxy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3c

    .line 50
    iget-object v1, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mEOFCallback:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mEOFCallback:Ljava/lang/Runnable;

    .line 51
    monitor-enter p1

    .line 52
    :try_start_35
    iput-object v0, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mEOFCallback:Ljava/lang/Runnable;

    .line 53
    monitor-exit p1

    return-void

    :catchall_39
    move-exception p0

    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_39

    throw p0

    :cond_3c
    return-void
.end method

.method private addAudioTrack(Ljava/lang/String;)V
    .registers 4

    .line 141
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 142
    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 143
    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 145
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    sget-object v0, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->External:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    .line 146
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, v1}, Lcom/ss/android/vesdk/TERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;Z)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    return-void
.end method

.method private addVideoTrack(Ljava/lang/String;)V
    .registers 6

    .line 173
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 174
    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 175
    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v1, -0x1

    .line 177
    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 178
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->layers()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setLayer(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    sget-object v1, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->External:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    .line 179
    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    .line 181
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1, v0, p1, v2}, Lcom/ss/android/vesdk/TERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;Z)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    .line 182
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorder;->getEndFrameTime()J

    move-result-wide v1

    .line 183
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v3, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/ss/android/vesdk/TERecorder;->seekTrack(IIJ)I

    .line 184
    iget p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->setFilterForVideoTrack(I)V

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add vTrack: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", seek time="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TEDuetProxy"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setup()V
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iget v2, v1, Lcom/ss/android/vesdk/VESize;->width:I

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/TERecorder;->changeVideoOutputSize(II)V

    .line 114
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->settings:Lcom/ss/android/vesdk/VEDuetSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getDuetAudioPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->addAudioTrack(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->settings:Lcom/ss/android/vesdk/VEDuetSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getDuetVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->addVideoTrack(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->setupAlign()V

    .line 118
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEndFrameTime()J

    move-result-wide v0

    .line 119
    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v3, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/ss/android/vesdk/TERecorder;->seekTrack(IIJ)I

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add aTrack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", seek time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEDuetProxy"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->enableBackgroundTrack()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 123
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->addBackgroundTrack()V

    .line 125
    :cond_57
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->updateCameraTrack()V

    return-void
.end method


# virtual methods
.method protected addBackgroundTrack()V
    .registers 5

    .line 214
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    const-string v1, "empty_path"

    .line 215
    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    new-instance v1, Lcom/ss/android/vesdk/VESize;

    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iget v3, v2, Lcom/ss/android/vesdk/VESize;->width:I

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v1, v3, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 216
    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 218
    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    const v2, 0x7fffffff

    .line 219
    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->layers()[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setLayer(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    sget-object v2, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->HOST:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    .line 221
    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object v0

    .line 223
    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/ss/android/vesdk/TERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;Z)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add bTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TEDuetProxy"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public calBestDuetSize(IIIILcom/ss/android/vesdk/VESize;)V
    .registers 10

    mul-int/2addr p1, p2

    int-to-double p0, p1

    mul-int p2, p3, p4

    int-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    div-double/2addr p0, v0

    .line 96
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    int-to-double v0, p3

    mul-double/2addr p0, v0

    double-to-int p0, p0

    shr-int/lit8 p0, p0, 0x4

    shl-int/lit8 p0, p0, 0x4

    mul-int/2addr p4, p0

    .line 98
    div-int/2addr p4, p3

    shr-int/lit8 p1, p4, 0x4

    and-int/lit8 p2, p4, 0xf

    shr-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x4

    .line 101
    iput p0, p5, Lcom/ss/android/vesdk/VESize;->width:I

    .line 102
    iput p1, p5, Lcom/ss/android/vesdk/VESize;->height:I

    const/16 p2, 0x440

    if-le p1, p2, :cond_31

    mul-int/2addr p0, p2

    .line 106
    div-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x4

    shl-int/lit8 p0, p0, 0x4

    .line 107
    iput p0, p5, Lcom/ss/android/vesdk/VESize;->width:I

    .line 108
    iput p2, p5, Lcom/ss/android/vesdk/VESize;->height:I

    :cond_31
    return-void
.end method

.method public changeVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 234
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(IIZ)I

    .line 235
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v1, 0x0

    iget v3, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(IIZ)I

    .line 236
    invoke-direct {p0, p2}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->addAudioTrack(Ljava/lang/String;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->addVideoTrack(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->setupAlign()V

    return-void
.end method

.method public deleteLastFrag()V
    .registers 1

    return-void
.end method

.method protected enableBackgroundTrack()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    .line 59
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 60
    sget v1, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_MULTIPLE_TRACK_EOF:I

    if-ne v0, v1, :cond_44

    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const v1, 0x7fffffff

    and-int/2addr p1, v1

    if-eqz v0, :cond_44

    .line 64
    monitor-enter p0

    .line 65
    :try_start_18
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mEOFCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_22

    .line 66
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_22

    :catchall_20
    move-exception p1

    goto :goto_42

    .line 68
    :cond_22
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_20

    .line 69
    const-string p0, "TEDuetProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeInMS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", eof="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 68
    :goto_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_20

    throw p1

    :cond_44
    return-void
.end method

.method protected layers()[I
    .registers 3

    const/4 p0, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 152
    filled-new-array {v1, p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .registers 8

    .line 253
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/TERecorder;->addRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V

    .line 254
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    iget v2, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v3, v0, Lcom/ss/android/vesdk/VESize;->height:I

    div-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    move v4, v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->calBestDuetSize(IIIILcom/ss/android/vesdk/VESize;)V

    .line 255
    invoke-direct {v1}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->setup()V

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Track bg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", left="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", right="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", src size="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dst size="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TEDuetProxy"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 6

    .line 276
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    const/4 v1, -0x1

    if-ltz v0, :cond_12

    .line 277
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    iget v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEEffect;->removeTrackFilter(I)I

    .line 278
    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    .line 280
    :cond_12
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamCanvasFilterIndex:I

    if-ltz v0, :cond_23

    .line 281
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    iget v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamCanvasFilterIndex:I

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEEffect;->removeTrackFilter(I)I

    .line 282
    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamCanvasFilterIndex:I

    .line 284
    :cond_23
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(IIZ)I

    .line 285
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(IIZ)I

    .line 286
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    if-ltz v0, :cond_3e

    .line 287
    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v2, v4, v0, v3}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(IIZ)I

    .line 288
    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    .line 290
    :cond_3e
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/TERecorder;->removeRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V

    .line 292
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    iget v2, v1, Lcom/ss/android/vesdk/VESize;->width:I

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/TERecorder;->changeVideoOutputSize(II)V

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    .line 294
    monitor-enter p0

    .line 295
    :try_start_52
    iput-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mEOFCallback:Ljava/lang/Runnable;

    .line 296
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5d

    .line 297
    const-string p0, "TEDuetProxy"

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_5d
    move-exception v0

    .line 296
    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

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
    .registers 4

    .line 76
    iget-object p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public onNativeInit(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public play()V
    .registers 1

    return-void
.end method

.method public setDuetVideoCompleteCallback(Ljava/lang/Runnable;)V
    .registers 2

    .line 313
    monitor-enter p0

    .line 314
    :try_start_1
    iput-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mEOFCallback:Ljava/lang/Runnable;

    .line 315
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method protected setFilterForCameraTrack(I)V
    .registers 8

    .line 189
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;-><init>()V

    .line 190
    const-string v0, "canvas blend"

    iput-object v0, v3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 191
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->scaleFactor:F

    const/high16 v1, -0x41800000    # -0.25f

    .line 192
    iput v1, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transX:F

    .line 193
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->alpha:F

    .line 194
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    return-void
.end method

.method protected setFilterForVideoTrack(I)V
    .registers 8

    .line 160
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;-><init>()V

    .line 161
    const-string v0, "canvas blend"

    iput-object v0, v3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 162
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->scaleFactor:F

    const/high16 v1, 0x3e800000    # 0.25f

    .line 163
    iput v1, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transX:F

    .line 164
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->alpha:F

    .line 165
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mVTransFilterIndex:I

    if-ltz v0, :cond_23

    .line 166
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object p1

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mVTransFilterIndex:I

    invoke-virtual {p1, p0, v3}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    return-void

    .line 168
    :cond_23
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mVTransFilterIndex:I

    return-void
.end method

.method protected setupAlign()V
    .registers 8

    .line 129
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->alignTo(IIII)I

    move-result v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aTrack("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") alignTo camera track ret="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "TEDuetProxy"

    invoke-static {v5, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "vTrack("

    if-gez v0, :cond_51

    .line 132
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v6, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {v0, v6, v3, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->alignTo(IIII)I

    move-result v0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_51
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v4, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    iget v6, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    invoke-virtual {v0, v4, v3, v6, v2}, Lcom/ss/android/vesdk/TERecorder;->alignTo(IIII)I

    move-result v0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") alignTo aTrack("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") ret="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startRecord(F)V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 303
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Lcom/ss/android/vesdk/TERecorder;->setTrackSpeed(IIF)I

    .line 304
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/ss/android/vesdk/TERecorder;->setTrackSpeed(IIF)I

    return-void
.end method

.method public stopRecord()V
    .registers 1

    return-void
.end method

.method public tryRestore()V
    .registers 8

    .line 268
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEndFrameTime()J

    move-result-wide v0

    .line 269
    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v3, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ss/android/vesdk/TERecorder;->alignTo(IIII)I

    .line 270
    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget v3, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/ss/android/vesdk/TERecorder;->seekTrack(IIJ)I

    .line 271
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    invoke-virtual {v0, p0, v4, v4, v6}, Lcom/ss/android/vesdk/TERecorder;->alignTo(IIII)I

    return-void
.end method

.method protected updateBackgroundTrack(II)V
    .registers 5

    .line 228
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget p2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(IIZ)I

    .line 229
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->addBackgroundTrack()V

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Update bTrack: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TEDuetProxy"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateCameraTrack()V
    .registers 5

    .line 198
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    const-string v1, "camera_path"

    .line 199
    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    const v2, 0x7fffffff

    .line 202
    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSeqOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->layers()[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setLayer(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    sget-object v2, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->External:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    .line 206
    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object v0

    .line 208
    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v1, v0, v3}, Lcom/ss/android/vesdk/TERecorder;->updateTrack(IILcom/ss/android/ttve/model/VETrackParams;Z)I

    .line 209
    const-string v0, "TEDuetProxy"

    const-string v2, "update camera Track"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->setFilterForCameraTrack(I)V

    return-void
.end method
