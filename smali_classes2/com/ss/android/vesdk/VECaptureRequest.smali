.class public Lcom/ss/android/vesdk/VECaptureRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;
    }
.end annotation


# static fields
.field public static final FRAME_SOURCE_CAPTURE_STREAM:I = 0x0

.field public static final FRAME_SOURCE_PREVIEW_STREAM:I = 0x1


# instance fields
.field private mBitmapCaptureCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

.field private mBitmapShotScreenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

.field private mEnableShotScreenAfterCaptureFailed:Z

.field private mEnableUpscaleShot:Z

.field private mForceUseFramePreviewSource:Z

.field private mFrameSource:I

.field private mImageDegree:I

.field private mImageHeight:I

.field private mImageWidth:I

.field private mLightSoftCallback:Lcom/ss/android/vesdk/VERecorder$ILightSoftCallback;

.field private mNeedEffectRender:Z

.field private mNeedOriginPic:Z

.field private mNeedPreviewAfterCapture:Z

.field private mNightEnhanceConfig:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

.field private mPreventRenderAfterRender:Z

.field private mVeFrameShotScreenCallback:Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mFrameSource:I

    .line 43
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mEnableShotScreenAfterCaptureFailed:Z

    .line 58
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mNeedEffectRender:Z

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mNeedOriginPic:Z

    .line 68
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mEnableUpscaleShot:Z

    .line 73
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mForceUseFramePreviewSource:Z

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mLightSoftCallback:Lcom/ss/android/vesdk/VERecorder$ILightSoftCallback;

    .line 83
    iput-object v0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mBitmapCaptureCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    .line 88
    iput-object v0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mBitmapShotScreenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    .line 93
    iput-object v0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mVeFrameShotScreenCallback:Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;

    .line 98
    iput-object v0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mNightEnhanceConfig:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    return-void
.end method


# virtual methods
.method public getBitmapCaptureCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mBitmapCaptureCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    return-object p0
.end method

.method public getBitmapShotScreenCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mBitmapShotScreenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    return-object p0
.end method

.method public getFrameSource()I
    .registers 1

    .line 165
    iget p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mFrameSource:I

    return p0
.end method

.method public getImageDegree()I
    .registers 1

    .line 113
    iget p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mImageDegree:I

    return p0
.end method

.method public getImageHeight()I
    .registers 1

    .line 145
    iget p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mImageHeight:I

    return p0
.end method

.method public getImageWidth()I
    .registers 1

    .line 129
    iget p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mImageWidth:I

    return p0
.end method

.method public getLightSoftCallback()Lcom/ss/android/vesdk/VERecorder$ILightSoftCallback;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mLightSoftCallback:Lcom/ss/android/vesdk/VERecorder$ILightSoftCallback;

    return-object p0
.end method

.method public getNightEnhanceConfig()Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;
    .registers 1

    .line 333
    iget-object p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mNightEnhanceConfig:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    return-object p0
.end method

.method public getVeFrameShotScreenCallback()Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;
    .registers 1

    .line 309
    iget-object p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mVeFrameShotScreenCallback:Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;

    return-object p0
.end method

.method public isEnableShotScreenAfterCaptureFailed()Z
    .registers 1

    .line 345
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mEnableShotScreenAfterCaptureFailed:Z

    return p0
.end method

.method public isEnableUpscaleShot()Z
    .registers 1

    .line 245
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mEnableUpscaleShot:Z

    return p0
.end method

.method public isForceUseFramePreviewSource()Z
    .registers 1

    .line 325
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mForceUseFramePreviewSource:Z

    return p0
.end method

.method public isNeedEffectRender()Z
    .registers 1

    .line 213
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mNeedEffectRender:Z

    return p0
.end method

.method public isNeedOriginPic()Z
    .registers 1

    .line 229
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mNeedOriginPic:Z

    return p0
.end method

.method public isNeedPreviewAfterCapture()Z
    .registers 1

    .line 181
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mNeedPreviewAfterCapture:Z

    return p0
.end method

.method public isPreventRenderAfterRender()Z
    .registers 1

    .line 197
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mPreventRenderAfterRender:Z

    return p0
.end method

.method public setBitmapCaptureCallback(Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mBitmapCaptureCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    return-void
.end method

.method public setBitmapShotScreenCallback(Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mBitmapShotScreenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    return-void
.end method

.method public setEnableShotScreenAfterCaptureFailed(Z)V
    .registers 2

    .line 349
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mEnableShotScreenAfterCaptureFailed:Z

    return-void
.end method

.method public setEnableUpscaleShot(Z)V
    .registers 2

    .line 237
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mEnableUpscaleShot:Z

    return-void
.end method

.method public setForceUseFramePreviewSource(Z)V
    .registers 2

    .line 317
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mForceUseFramePreviewSource:Z

    return-void
.end method

.method public setFrameSource(I)V
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 155
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "unknown source..."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_e
    :goto_e
    iput p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mFrameSource:I

    return-void
.end method

.method public setImageDegree(I)V
    .registers 2

    .line 105
    iput p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mImageDegree:I

    return-void
.end method

.method public setImageHeight(I)V
    .registers 2

    .line 137
    iput p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mImageHeight:I

    return-void
.end method

.method public setImageWidth(I)V
    .registers 2

    .line 121
    iput p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mImageWidth:I

    return-void
.end method

.method public setLightSoftCallback(Lcom/ss/android/vesdk/VERecorder$ILightSoftCallback;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mLightSoftCallback:Lcom/ss/android/vesdk/VERecorder$ILightSoftCallback;

    return-void
.end method

.method public setNeedEffectRender(Z)V
    .registers 2

    .line 205
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mNeedEffectRender:Z

    return-void
.end method

.method public setNeedOriginPic(Z)V
    .registers 2

    .line 221
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mNeedOriginPic:Z

    return-void
.end method

.method public setNeedPreviewAfterCapture(Z)V
    .registers 2

    .line 173
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mNeedPreviewAfterCapture:Z

    return-void
.end method

.method public setNightEnhanceConfig(Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mNightEnhanceConfig:Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;

    return-void
.end method

.method public setPreventRenderAfterRender(Z)V
    .registers 2

    .line 189
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mPreventRenderAfterRender:Z

    return-void
.end method

.method public setVeFrameShotScreenCallback(Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/ss/android/vesdk/VECaptureRequest;->mVeFrameShotScreenCallback:Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;

    return-void
.end method
