.class public Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/ITEParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/faceinfo/VEFaceDetect$FaceExtInfo;,
        Lcom/ss/android/vesdk/faceinfo/VEFaceDetect$ActionType;
    }
.end annotation


# static fields
.field private static final FACE_KEY_POINT_NUM:I = 0x6a


# instance fields
.field private action:I

.field private eyeDistance:F

.field private faceExtInfo:Lcom/ss/android/vesdk/faceinfo/VEFaceDetect$FaceExtInfo;

.field private faceID:I

.field private parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

.field private pitch:F

.field private pointVisibility:[F

.field private points:[Landroid/graphics/PointF;

.field private rect:Landroid/graphics/Rect;

.field private roll:F

.field private score:F

.field private trackCount:I

.field private yaw:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 1

    .line 293
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->action:I

    return p0
.end method

.method public getEyeDistance()F
    .registers 1

    .line 261
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->eyeDistance:F

    return p0
.end method

.method public getFaceExtInfo()Lcom/ss/android/vesdk/faceinfo/VEFaceDetect$FaceExtInfo;
    .registers 1

    .line 325
    iget-object p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->faceExtInfo:Lcom/ss/android/vesdk/faceinfo/VEFaceDetect$FaceExtInfo;

    return-object p0
.end method

.method public getFaceID()I
    .registers 1

    .line 277
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->faceID:I

    return p0
.end method

.method public getPitch()F
    .registers 1

    .line 229
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->pitch:F

    return p0
.end method

.method public getPointVisibility()[F
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->pointVisibility:[F

    return-object p0
.end method

.method public getPoints()[Landroid/graphics/PointF;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->points:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->rect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRoll()F
    .registers 1

    .line 245
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->roll:F

    return p0
.end method

.method public getScore()F
    .registers 1

    .line 181
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->score:F

    return p0
.end method

.method public getTrackCount()I
    .registers 1

    .line 309
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->trackCount:I

    return p0
.end method

.method public getYaw()F
    .registers 1

    .line 213
    iget p0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->yaw:F

    return p0
.end method

.method public readFromParcel()V
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    if-nez v0, :cond_5

    return-void

    .line 26
    :cond_5
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;->readRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->rect:Landroid/graphics/Rect;

    .line 27
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->score:F

    .line 28
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;->readPointFArray(I)[Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->points:[Landroid/graphics/PointF;

    .line 29
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;->readFloatArray(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->pointVisibility:[F

    .line 30
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->yaw:F

    .line 31
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->pitch:F

    .line 32
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->roll:F

    .line 33
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->eyeDistance:F

    .line 34
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->faceID:I

    .line 35
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->action:I

    .line 36
    iget-object v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->trackCount:I

    return-void
.end method

.method public setAction(I)V
    .registers 2

    .line 301
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->action:I

    return-void
.end method

.method public setEyeDistance(F)V
    .registers 2

    .line 269
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->eyeDistance:F

    return-void
.end method

.method public setFaceExtInfo(Lcom/ss/android/vesdk/faceinfo/VEFaceDetect$FaceExtInfo;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->faceExtInfo:Lcom/ss/android/vesdk/faceinfo/VEFaceDetect$FaceExtInfo;

    return-void
.end method

.method public setFaceID(I)V
    .registers 2

    .line 285
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->faceID:I

    return-void
.end method

.method public setParcelWrapper(Lcom/ss/android/ttve/nativePort/TEParcelWrapper;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->parcelWrapper:Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    return-void
.end method

.method public setPitch(F)V
    .registers 2

    .line 237
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->pitch:F

    return-void
.end method

.method public setPointVisibility([F)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->pointVisibility:[F

    return-void
.end method

.method public setPoints([Landroid/graphics/PointF;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->points:[Landroid/graphics/PointF;

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public setRoll(F)V
    .registers 2

    .line 253
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->roll:F

    return-void
.end method

.method public setScore(F)V
    .registers 2

    .line 189
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->score:F

    return-void
.end method

.method public setTrackCount(I)V
    .registers 2

    .line 317
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->trackCount:I

    return-void
.end method

.method public setYaw(F)V
    .registers 2

    .line 221
    iput p1, p0, Lcom/ss/android/vesdk/faceinfo/VEFaceDetect;->yaw:F

    return-void
.end method
