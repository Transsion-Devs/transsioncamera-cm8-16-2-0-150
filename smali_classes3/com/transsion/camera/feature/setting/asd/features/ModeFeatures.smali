.class public Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mASDEnhanceSupport:Z

.field private mAiRawLiteSupport:Z

.field private mFakeCameraSupport:Z

.field private mFilterSupport:Z

.field private mHighResolutionSupport:Z

.field private mLivePhotoSupport:Z

.field private mMagicSkySupport:Z

.field private mNight3DNRSupport:Z

.field private mPMasterMode:Z

.field private mPortraitEnhanceSupport:Z

.field private mSmartDenoiseSupport:Z

.field private mSuperNightLightSupport:Z

.field private mSuperNightSupport:Z

.field private mSuperResolutionSupport:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mASDEnhanceSupport:Z

    .line 10
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mFakeCameraSupport:Z

    .line 11
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSmartDenoiseSupport:Z

    .line 12
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperResolutionSupport:Z

    .line 13
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mHighResolutionSupport:Z

    .line 14
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mFilterSupport:Z

    .line 15
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mPortraitEnhanceSupport:Z

    .line 16
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperNightLightSupport:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperNightSupport:Z

    .line 18
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mAiRawLiteSupport:Z

    .line 19
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mNight3DNRSupport:Z

    .line 20
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mMagicSkySupport:Z

    .line 21
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mLivePhotoSupport:Z

    .line 22
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mPMasterMode:Z

    return-void
.end method


# virtual methods
.method public isModeSupportASDEnhance()Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mASDEnhanceSupport:Z

    return p0
.end method

.method public isModeSupportAiRawLite()Z
    .registers 1

    .line 120
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mAiRawLiteSupport:Z

    return p0
.end method

.method public isModeSupportFakeCamera()Z
    .registers 1

    .line 56
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mFakeCameraSupport:Z

    return p0
.end method

.method public isModeSupportFilter()Z
    .registers 1

    .line 88
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mFilterSupport:Z

    return p0
.end method

.method public isModeSupportHighResolution()Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mHighResolutionSupport:Z

    return p0
.end method

.method public isModeSupportLivePhoto()Z
    .registers 1

    .line 144
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mLivePhotoSupport:Z

    return p0
.end method

.method public isModeSupportMagicSky()Z
    .registers 1

    .line 136
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mMagicSkySupport:Z

    return p0
.end method

.method public isModeSupportNight3DNR()Z
    .registers 1

    .line 128
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mNight3DNRSupport:Z

    return p0
.end method

.method public isModeSupportPortraitEnhance()Z
    .registers 1

    .line 96
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mPortraitEnhanceSupport:Z

    return p0
.end method

.method public isModeSupportSmartDenoise()Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSmartDenoiseSupport:Z

    return p0
.end method

.method public isModeSupportSuperNight()Z
    .registers 1

    .line 112
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperNightSupport:Z

    return p0
.end method

.method public isModeSupportSuperNightLight()Z
    .registers 1

    .line 104
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperNightLightSupport:Z

    return p0
.end method

.method public isModeSupportSuperResolution()Z
    .registers 1

    .line 72
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperResolutionSupport:Z

    return p0
.end method

.method public isPMaterMode()Z
    .registers 1

    .line 152
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mPMasterMode:Z

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mASDEnhanceSupport:Z

    .line 29
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mFakeCameraSupport:Z

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSmartDenoiseSupport:Z

    .line 31
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperResolutionSupport:Z

    .line 32
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mHighResolutionSupport:Z

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mFilterSupport:Z

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mPortraitEnhanceSupport:Z

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperNightLightSupport:Z

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperNightSupport:Z

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mAiRawLiteSupport:Z

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mNight3DNRSupport:Z

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mMagicSkySupport:Z

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mLivePhotoSupport:Z

    return-void
.end method

.method public setModeSupportASDEnhance(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mASDEnhanceSupport:Z

    return-void
.end method

.method public setModeSupportAiRawLite(Z)V
    .registers 2

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mAiRawLiteSupport:Z

    return-void
.end method

.method public setModeSupportFakeCamera(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mFakeCameraSupport:Z

    return-void
.end method

.method public setModeSupportFilter(Z)V
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mFilterSupport:Z

    return-void
.end method

.method public setModeSupportHighResolution(Z)V
    .registers 2

    .line 76
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mHighResolutionSupport:Z

    return-void
.end method

.method public setModeSupportLivePhoto(Z)V
    .registers 2

    .line 140
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mLivePhotoSupport:Z

    return-void
.end method

.method public setModeSupportMagicSky(Z)V
    .registers 2

    .line 132
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mMagicSkySupport:Z

    return-void
.end method

.method public setModeSupportNight3DNR(Z)V
    .registers 2

    .line 124
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mNight3DNRSupport:Z

    return-void
.end method

.method public setModeSupportPortraitEnhance(Z)V
    .registers 2

    .line 92
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mPortraitEnhanceSupport:Z

    return-void
.end method

.method public setModeSupportSmartDenoise(Z)V
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSmartDenoiseSupport:Z

    return-void
.end method

.method public setModeSupportSuperNight(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperNightSupport:Z

    return-void
.end method

.method public setModeSupportSuperNightLight(Z)V
    .registers 2

    .line 100
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperNightLightSupport:Z

    return-void
.end method

.method public setModeSupportSuperResolution(Z)V
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperResolutionSupport:Z

    return-void
.end method

.method public setPMaterMode(Z)V
    .registers 2

    .line 148
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mPMasterMode:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModeFeatures{mASDEnhanceSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mASDEnhanceSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFakeCameraSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mFakeCameraSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSmartDenoiseSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSmartDenoiseSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperResolutionSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperResolutionSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHighResolutionSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mHighResolutionSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFilterSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mFilterSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPortraitEnhanceSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mPortraitEnhanceSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperNightLightSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperNightLightSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperNightSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mSuperNightSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAiRawLiteSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mAiRawLiteSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNight3DNRSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mNight3DNRSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", magicSkySupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mMagicSkySupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLivePhotoSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mLivePhotoSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPMasterMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->mPMasterMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
