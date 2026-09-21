.class public Lcom/ss/android/vesdk/VEFocusSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;,
        Lcom/ss/android/vesdk/VEFocusSettings$Builder;
    }
.end annotation


# instance fields
.field private mCameraFaceFocusPoint:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

.field private mCameraFocusArea:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;

.field private mCameraMeteringArea:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;

.field private mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

.field private mDisplayDensity:F

.field private mFocusCallback:Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;

.field private mFromUser:Z

.field private mHeight:I

.field private mIsLock:Z

.field private mNeedFocus:Z

.field private mNeedMetering:Z

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(IIIIF)V
    .registers 8

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mNeedFocus:Z

    .line 23
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mNeedMetering:Z

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mIsLock:Z

    .line 33
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mFromUser:Z

    .line 37
    sget-object v0, Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;->VIEW:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCameraFocusArea:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;

    .line 40
    iput-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCameraMeteringArea:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;

    .line 41
    iput-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCameraFaceFocusPoint:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    .line 56
    iput p3, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mWidth:I

    .line 57
    iput p4, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mHeight:I

    .line 58
    iput p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mX:I

    .line 59
    iput p2, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mY:I

    .line 60
    iput p5, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mDisplayDensity:F

    return-void
.end method

.method public constructor <init>(IIIIFLcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;)V
    .registers 9

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mNeedFocus:Z

    .line 23
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mNeedMetering:Z

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mIsLock:Z

    .line 33
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mFromUser:Z

    .line 37
    sget-object v0, Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;->VIEW:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCameraFocusArea:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;

    .line 40
    iput-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCameraMeteringArea:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;

    .line 41
    iput-object v0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCameraFaceFocusPoint:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    .line 75
    iput p3, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mWidth:I

    .line 76
    iput p4, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mHeight:I

    .line 77
    iput p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mX:I

    .line 78
    iput p2, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mY:I

    .line 79
    iput p5, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mDisplayDensity:F

    .line 80
    iput-object p6, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mFocusCallback:Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/ss/android/vesdk/VEFocusSettings;Z)Z
    .registers 2

    .line 14
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mNeedFocus:Z

    return p1
.end method

.method static synthetic access$102(Lcom/ss/android/vesdk/VEFocusSettings;Z)Z
    .registers 2

    .line 14
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mNeedMetering:Z

    return p1
.end method

.method static synthetic access$202(Lcom/ss/android/vesdk/VEFocusSettings;Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;)Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCameraFocusArea:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ss/android/vesdk/VEFocusSettings;Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;)Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCameraMeteringArea:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;

    return-object p1
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/VEFocusSettings;Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;)Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCameraFaceFocusPoint:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    return-object p1
.end method

.method static synthetic access$502(Lcom/ss/android/vesdk/VEFocusSettings;Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;)Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mFocusCallback:Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;

    return-object p1
.end method

.method static synthetic access$602(Lcom/ss/android/vesdk/VEFocusSettings;Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    return-object p1
.end method


# virtual methods
.method public getCameraFaceFocusPoint()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCameraFaceFocusPoint:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFaceFocusPoint;

    return-object p0
.end method

.method public getCameraFocusArea()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCameraFocusArea:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;

    return-object p0
.end method

.method public getCameraMeteringArea()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCameraMeteringArea:Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraMeteringArea;

    return-object p0
.end method

.method public getCoordinatesMode()Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    return-object p0
.end method

.method public getDisplayDensity()F
    .registers 1

    .line 104
    iget p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mDisplayDensity:F

    return p0
.end method

.method public getFocusCallback()Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mFocusCallback:Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 92
    iget p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 88
    iget p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mWidth:I

    return p0
.end method

.method public getX()I
    .registers 1

    .line 96
    iget p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mX:I

    return p0
.end method

.method public getY()I
    .registers 1

    .line 100
    iget p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mY:I

    return p0
.end method

.method public isFromUser()Z
    .registers 1

    .line 156
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mFromUser:Z

    return p0
.end method

.method public isLock()Z
    .registers 1

    .line 144
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mIsLock:Z

    return p0
.end method

.method public isNeedFocus()Z
    .registers 1

    .line 108
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mNeedFocus:Z

    return p0
.end method

.method public isNeedMetering()Z
    .registers 1

    .line 112
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mNeedMetering:Z

    return p0
.end method

.method public setCoordinatesMode(Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mCoordinatesMode:Lcom/ss/android/ttvecamera/TEFocusSettings$CoordinatesMode;

    return-void
.end method

.method public setDisplayDensity(F)V
    .registers 2

    .line 140
    iput p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mDisplayDensity:F

    return-void
.end method

.method public setFromUser(Z)V
    .registers 2

    .line 152
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mFromUser:Z

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 128
    iput p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mHeight:I

    return-void
.end method

.method public setLock(Z)V
    .registers 2

    .line 148
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mIsLock:Z

    return-void
.end method

.method public setNeedFocus(Z)V
    .registers 2

    .line 116
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mNeedFocus:Z

    return-void
.end method

.method public setNeedMetering(Z)V
    .registers 2

    .line 120
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mNeedMetering:Z

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 124
    iput p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mWidth:I

    return-void
.end method

.method public setX(I)V
    .registers 2

    .line 132
    iput p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mX:I

    return-void
.end method

.method public setY(I)V
    .registers 2

    .line 136
    iput p1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mY:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VEFocusSettings;->mY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
