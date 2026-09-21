.class public Lcom/ss/android/ttvecamera/TEFocusSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/TEFocusSettings$TEFocusNullCallback;,
        Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;,
        Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;
    }
.end annotation


# instance fields
.field private mCameraFocusArea:Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;

.field private mCameraMeteringArea:Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;

.field private mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

.field private final mDisplayDensity:F

.field private mFocusCallback:Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

.field private mFromUser:Z

.field private final mHeight:I

.field private mIsLock:Z

.field private mNeedFocus:Z

.field private mNeedMetering:Z

.field private mStartTimeMS:J

.field private final mWidth:I

.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(IIIIF)V
    .registers 8

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mNeedFocus:Z

    .line 17
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mNeedMetering:Z

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mIsLock:Z

    .line 19
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mFromUser:Z

    .line 20
    sget-object v0, Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;->VIEW:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCameraFocusArea:Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;

    .line 28
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCameraMeteringArea:Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;

    .line 30
    new-instance v1, Lcom/ss/android/ttvecamera/TEFocusSettings$TEFocusNullCallback;

    invoke-direct {v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$TEFocusNullCallback;-><init>(Lcom/ss/android/ttvecamera/TEFocusSettings$1;)V

    iput-object v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mFocusCallback:Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    .line 33
    iput p1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mWidth:I

    .line 34
    iput p2, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mHeight:I

    .line 35
    iput p3, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mX:I

    .line 36
    iput p4, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mY:I

    .line 37
    iput p5, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mDisplayDensity:F

    return-void
.end method

.method public constructor <init>(IIIIFLcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;)V
    .registers 9

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mNeedFocus:Z

    .line 17
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mNeedMetering:Z

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mIsLock:Z

    .line 19
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mFromUser:Z

    .line 20
    sget-object v0, Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;->VIEW:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCameraFocusArea:Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;

    .line 28
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCameraMeteringArea:Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;

    .line 30
    new-instance v1, Lcom/ss/android/ttvecamera/TEFocusSettings$TEFocusNullCallback;

    invoke-direct {v1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$TEFocusNullCallback;-><init>(Lcom/ss/android/ttvecamera/TEFocusSettings$1;)V

    iput-object v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mFocusCallback:Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    .line 41
    iput p1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mWidth:I

    .line 42
    iput p2, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mHeight:I

    .line 43
    iput p3, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mX:I

    .line 44
    iput p4, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mY:I

    .line 45
    iput p5, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mDisplayDensity:F

    if-eqz p6, :cond_2b

    .line 47
    iput-object p6, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mFocusCallback:Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    :cond_2b
    return-void
.end method


# virtual methods
.method public calculateFocusArea(IZ)Landroid/graphics/Rect;
    .registers 10

    .line 166
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCameraFocusArea:Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;

    if-eqz v0, :cond_1c

    .line 167
    iget v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mWidth:I

    iget v2, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mHeight:I

    iget v3, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mX:I

    iget v4, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mY:I

    move v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;->calculateArea(IIIIIZ)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Camera$Area;

    iget-object p0, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public calculateMeteringArea(IZ)Landroid/graphics/Rect;
    .registers 10

    .line 173
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCameraMeteringArea:Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;

    if-eqz v0, :cond_1c

    .line 174
    iget v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mWidth:I

    iget v2, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mHeight:I

    iget v3, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mX:I

    iget v4, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mY:I

    move v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;->calculateArea(IIIIIZ)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Camera$Area;

    iget-object p0, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraFocusArea()Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCameraFocusArea:Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;

    return-object p0
.end method

.method public getCameraMeteringArea()Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCameraMeteringArea:Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;

    return-object p0
.end method

.method public getCoordinatesMode()Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    return-object p0
.end method

.method public getDisplayDensity()F
    .registers 1

    .line 88
    iget p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mDisplayDensity:F

    return p0
.end method

.method public getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mFocusCallback:Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    return-object p0
.end method

.method public getFocusConsumingMS()I
    .registers 5

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mStartTimeMS:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 76
    iget p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 72
    iget p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mWidth:I

    return p0
.end method

.method public getX()I
    .registers 1

    .line 80
    iget p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mX:I

    return p0
.end method

.method public getY()I
    .registers 1

    .line 84
    iget p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mY:I

    return p0
.end method

.method public isFromUser()Z
    .registers 1

    .line 120
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mFromUser:Z

    return p0
.end method

.method public isLock()Z
    .registers 1

    .line 112
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mIsLock:Z

    return p0
.end method

.method public isNeedFocus()Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mNeedFocus:Z

    return p0
.end method

.method public isNeedMetering()Z
    .registers 1

    .line 100
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mNeedMetering:Z

    return p0
.end method

.method public markStartTimeMS()V
    .registers 3

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mStartTimeMS:J

    return-void
.end method

.method public setCameraFocusArea(Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCameraFocusArea:Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;

    return-void
.end method

.method public setCameraMeteringArea(Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCameraMeteringArea:Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraMeteringArea;

    return-void
.end method

.method public setCoordinatesMode(Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    return-void
.end method

.method public setFocusCallback(Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 53
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mFocusCallback:Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    return-void

    .line 55
    :cond_5
    new-instance p1, Lcom/ss/android/ttvecamera/TEFocusSettings$TEFocusNullCallback;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/ss/android/ttvecamera/TEFocusSettings$TEFocusNullCallback;-><init>(Lcom/ss/android/ttvecamera/TEFocusSettings$1;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mFocusCallback:Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    return-void
.end method

.method public setFromUser(Z)V
    .registers 2

    .line 116
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mFromUser:Z

    return-void
.end method

.method public setLock(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mIsLock:Z

    return-void
.end method

.method public setNeedFocus(Z)V
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mNeedFocus:Z

    return-void
.end method

.method public setNeedMetering(Z)V
    .registers 2

    .line 104
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mNeedMetering:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TEFocusSettings{width ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", need focus ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mNeedFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", need meter ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mNeedMetering:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lock ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mIsLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", from user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mFromUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", CoordinatesMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TEFocusSettings;->mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
