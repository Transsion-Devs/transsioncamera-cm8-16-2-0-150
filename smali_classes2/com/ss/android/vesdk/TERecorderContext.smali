.class public Lcom/ss/android/vesdk/TERecorderContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/TERecorderContext$MicConfig;
    }
.end annotation


# instance fields
.field audioCapturingForSomeScenes:Z

.field audioPath:Ljava/lang/String;

.field audioPathQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile curRecordStatus:I

.field enable2DEngineEffect:Z

.field enableAudioDecodeTimeOpt:Z

.field enableAudioGraphRefactor:Z

.field enableEffectAmazingEngine:Z

.field enableEncodeBinGLContextReuse:Z

.field enableFollowShotIndependentThread:Z

.field enableModelHotUpdate:Z

.field enablePassEffectWhenNoEffect:Z

.field enableRecordEffectContentHighSpeed:Z

.field enableReleaseGPUResource:Z

.field enableRenderLayer:Z

.field enableSmallWindowDoubleThreadOpt:Z

.field focusFaceDetectCount:I

.field isAudioRecordClosed:Z

.field isUseMusic:Z

.field isVideoRecordClosed:Z

.field private mEncoderFrameSizeAlignment:I

.field micConfig:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

.field needPostProcess:Z

.field preventTextureRender:Z

.field previewInitStartTime:J

.field recordContentType:I

.field recordDirPath:Ljava/lang/String;

.field recordInAsyncMode:Z

.field recordingSegmentTime:J

.field renderSize:Lcom/ss/android/vesdk/VESize;

.field speed:F

.field totalRecordingTime:J

.field useAudioGraph:Z

.field usePreSurfaceCreated:Z

.field videoPath:Ljava/lang/String;

.field videoPathQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field waitRenderScreenUntilNotify:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->videoPath:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->audioPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->curRecordStatus:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    iput v1, p0, Lcom/ss/android/vesdk/TERecorderContext;->speed:F

    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, p0, Lcom/ss/android/vesdk/TERecorderContext;->totalRecordingTime:J

    .line 23
    iput-wide v1, p0, Lcom/ss/android/vesdk/TERecorderContext;->previewInitStartTime:J

    const-wide/16 v1, -0x1

    .line 25
    iput-wide v1, p0, Lcom/ss/android/vesdk/TERecorderContext;->recordingSegmentTime:J

    .line 28
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->usePreSurfaceCreated:Z

    .line 29
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->isVideoRecordClosed:Z

    .line 30
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->isAudioRecordClosed:Z

    .line 31
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->recordInAsyncMode:Z

    .line 32
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->isUseMusic:Z

    .line 33
    sget-object v1, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;->RecordFullContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/TERecorderContext;->recordContentType:I

    .line 34
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableRecordEffectContentHighSpeed:Z

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderContext;->needPostProcess:Z

    .line 36
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableSmallWindowDoubleThreadOpt:Z

    .line 37
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableEncodeBinGLContextReuse:Z

    .line 38
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableEffectAmazingEngine:Z

    .line 39
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TERecorderContext;->enable2DEngineEffect:Z

    .line 40
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->audioCapturingForSomeScenes:Z

    .line 41
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->waitRenderScreenUntilNotify:Z

    .line 42
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableFollowShotIndependentThread:Z

    .line 43
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableAudioGraphRefactor:Z

    .line 44
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->useAudioGraph:Z

    .line 45
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableReleaseGPUResource:Z

    .line 47
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableAudioDecodeTimeOpt:Z

    .line 49
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableRenderLayer:Z

    .line 50
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableModelHotUpdate:Z

    .line 52
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enablePassEffectWhenNoEffect:Z

    .line 57
    sget-object v0, Lcom/ss/android/vesdk/TERecorderContext$MicConfig;->DEFAULT:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->micConfig:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    .line 60
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/16 v1, 0x2d0

    const/16 v2, 0x500

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->renderSize:Lcom/ss/android/vesdk/VESize;

    const/4 v0, 0x3

    .line 61
    iput v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->focusFaceDetectCount:I

    const/16 v0, 0x10

    .line 63
    iput v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->mEncoderFrameSizeAlignment:I

    return-void
.end method


# virtual methods
.method public getAudioDecodeTimeOpt()Z
    .registers 1

    .line 180
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableAudioDecodeTimeOpt:Z

    return p0
.end method

.method public getAudioPath()Ljava/lang/String;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->audioPath:Ljava/lang/String;

    return-object p0
.end method

.method public getCurRecordStatus()I
    .registers 1

    .line 70
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->curRecordStatus:I

    return p0
.end method

.method public getFocusFaceDetectCount()I
    .registers 1

    .line 114
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->focusFaceDetectCount:I

    return p0
.end method

.method public getMicConfig()Lcom/ss/android/vesdk/TERecorderContext$MicConfig;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->micConfig:Lcom/ss/android/vesdk/TERecorderContext$MicConfig;

    return-object p0
.end method

.method public getNeedPostProcess()Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->needPostProcess:Z

    return p0
.end method

.method public getPreviewInitStartTime()J
    .registers 3

    .line 78
    iget-wide v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->previewInitStartTime:J

    return-wide v0
.end method

.method public getRecordContentType()I
    .registers 1

    .line 125
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->recordContentType:I

    return p0
.end method

.method public getRecordDirPath()Ljava/lang/String;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->recordDirPath:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordingSegmentTime()J
    .registers 3

    .line 82
    iget-wide v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->recordingSegmentTime:J

    return-wide v0
.end method

.method public getRenderSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->renderSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getSpeed()F
    .registers 1

    .line 74
    iget p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->speed:F

    return p0
.end method

.method public getTotalRecordingTime()J
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->totalRecordingTime:J

    return-wide v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->videoPath:Ljava/lang/String;

    return-object p0
.end method

.method public isAudioRecordClosed()Z
    .registers 1

    .line 90
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->isAudioRecordClosed:Z

    return p0
.end method

.method public isEnable2DEngineEffect()Z
    .registers 1

    .line 156
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enable2DEngineEffect:Z

    return p0
.end method

.method public isEnableAudioGraphRefactor()Z
    .registers 1

    .line 168
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableAudioGraphRefactor:Z

    return p0
.end method

.method public isEnableEffectAmazingEngine()Z
    .registers 1

    .line 152
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableEffectAmazingEngine:Z

    return p0
.end method

.method public isEnableEncodeBinGLContextReuse()Z
    .registers 2

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableEncodeBinGLContextReuse:Z

    return v0
.end method

.method public isEnableFollowShotIndependentThread()Z
    .registers 1

    .line 160
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableFollowShotIndependentThread:Z

    return p0
.end method

.method public isEnableModelHotUpdate()Z
    .registers 1

    .line 188
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableModelHotUpdate:Z

    return p0
.end method

.method public isEnablePassEffectWhenNoEffect()Z
    .registers 1

    .line 192
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enablePassEffectWhenNoEffect:Z

    return p0
.end method

.method public isEnableRecordEffectContentHighSpeed()Z
    .registers 1

    .line 138
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableRecordEffectContentHighSpeed:Z

    return p0
.end method

.method public isEnableReleaseGPUResource()Z
    .registers 1

    .line 176
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableReleaseGPUResource:Z

    return p0
.end method

.method public isEnableRenderLayer()Z
    .registers 1

    .line 184
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableRenderLayer:Z

    return p0
.end method

.method public isEnableSmallWindowDoubleThreadOpt()Z
    .registers 4

    .line 142
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_small_window_double_thread_decode"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableSmallWindowDoubleThreadOpt:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderContext;->enableSmallWindowDoubleThreadOpt:Z

    return v0
.end method

.method public isPreventTextureRender()Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->preventTextureRender:Z

    return p0
.end method

.method public isRecordInAsyncMode()Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->recordInAsyncMode:Z

    return p0
.end method

.method public isUseAudioGraphOutput()Z
    .registers 1

    .line 172
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->useAudioGraph:Z

    return p0
.end method

.method public isUseMusic()Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->isUseMusic:Z

    return p0
.end method

.method public isUsePreSurfaceCreated()Z
    .registers 1

    .line 106
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->usePreSurfaceCreated:Z

    return p0
.end method

.method public isVideoRecordClosed()Z
    .registers 1

    .line 110
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->isVideoRecordClosed:Z

    return p0
.end method

.method public isWaitRenderScreenUntilNotify()Z
    .registers 1

    .line 164
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderContext;->waitRenderScreenUntilNotify:Z

    return p0
.end method
