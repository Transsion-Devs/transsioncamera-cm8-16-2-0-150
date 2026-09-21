.class public Lcom/ss/android/vesdk/proxy/TEReactProxy;
.super Lcom/ss/android/vesdk/proxy/TEDuetProxy;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field settings1:Lcom/ss/android/vesdk/VEReactSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/proxy/TEReactProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEReactSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V
    .registers 6

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;-><init>(Lcom/ss/android/vesdk/proxy/TEDuetProxy;)V

    .line 21
    iput-object p2, p0, Lcom/ss/android/vesdk/proxy/TEReactProxy;->settings1:Lcom/ss/android/vesdk/VEReactSettings;

    .line 22
    iput-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    .line 23
    iput-object p3, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->resManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    .line 24
    iput-object p4, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    .line 25
    iput-object p4, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    return-void
.end method

.method private addAudioTrack(Ljava/lang/String;)V
    .registers 6

    .line 48
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 49
    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 52
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    sget-object v0, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->External:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    .line 53
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, v1}, Lcom/ss/android/vesdk/TERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;Z)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    .line 56
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->seekTrack(IIJ)I

    .line 57
    sget-object p1, Lcom/ss/android/vesdk/proxy/TEReactProxy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add aTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addVideoTrack(Ljava/lang/String;)V
    .registers 6

    .line 61
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 62
    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 v1, -0x1

    .line 65
    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEReactProxy;->layers()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setLayer(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    sget-object v1, Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;->External:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    .line 67
    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    .line 69
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1, v0, p1, v2}, Lcom/ss/android/vesdk/TERecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;Z)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    .line 70
    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/ss/android/vesdk/TERecorder;->seekTrack(IIJ)I

    .line 71
    iget p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/proxy/TEReactProxy;->setFilterForVideoTrack(I)V

    .line 72
    sget-object p1, Lcom/ss/android/vesdk/proxy/TEReactProxy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add vTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupReact()V
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iget v2, v1, Lcom/ss/android/vesdk/VESize;->width:I

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/TERecorder;->changeVideoOutputSize(II)V

    .line 40
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEReactProxy;->settings1:Lcom/ss/android/vesdk/VEReactSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEReactSettings;->getReactAudioPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/proxy/TEReactProxy;->addAudioTrack(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEReactProxy;->settings1:Lcom/ss/android/vesdk/VEReactSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEReactSettings;->getReactVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/proxy/TEReactProxy;->addVideoTrack(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->setupAlign()V

    .line 44
    invoke-virtual {p0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->updateCameraTrack()V

    return-void
.end method


# virtual methods
.method public changeVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected layers()[I
    .registers 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 35
    filled-new-array {v1, p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/TERecorder;->addRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V

    .line 31
    invoke-direct {p0}, Lcom/ss/android/vesdk/proxy/TEReactProxy;->setupReact()V

    return-void
.end method

.method protected setFilterForCameraTrack(I)V
    .registers 8

    .line 92
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;-><init>()V

    .line 93
    const-string v0, "canvas blend"

    iput-object v0, v3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 94
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->scaleFactor:F

    const/4 v1, 0x0

    .line 95
    iput v1, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transX:F

    .line 96
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->alpha:F

    .line 97
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    if-ltz v0, :cond_23

    .line 98
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move v2, p1

    goto :goto_33

    .line 100
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

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    .line 103
    :goto_33
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;-><init>()V

    .line 104
    const-string p1, "canvas wrap"

    iput-object p1, v3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    .line 105
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iget v0, p1, Lcom/ss/android/vesdk/VESize;->width:I

    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    .line 106
    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    iput p1, v3, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    const/high16 p1, -0x10000

    .line 107
    iput p1, v3, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->color:I

    .line 108
    sget-object p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->VIDEOFRAME:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v3, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->sourceType:I

    .line 109
    iget p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamCanvasFilterIndex:I

    if-ltz p1, :cond_62

    .line 110
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object p1

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamCanvasFilterIndex:I

    invoke-virtual {p1, p0, v3}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    return-void

    .line 112
    :cond_62
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamCanvasFilterIndex:I

    return-void
.end method

.method protected setFilterForVideoTrack(I)V
    .registers 8

    .line 77
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;-><init>()V

    .line 78
    const-string v0, "canvas blend"

    iput-object v0, v3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const v0, 0x3eb33333    # 0.35f

    .line 79
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->scaleFactor:F

    const v0, -0x41947ae1    # -0.23f

    .line 80
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transX:F

    .line 81
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->alpha:F

    .line 83
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mVTransFilterIndex:I

    if-ltz v0, :cond_29

    .line 84
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object p1

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mVTransFilterIndex:I

    invoke-virtual {p1, p0, v3}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    return-void

    .line 86
    :cond_29
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
