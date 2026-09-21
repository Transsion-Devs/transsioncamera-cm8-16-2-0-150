.class public Lcom/ss/android/medialib/model/FaceDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/model/FaceDetect$FaceExtInfo;,
        Lcom/ss/android/medialib/model/FaceDetect$ActionType;
    }
.end annotation


# instance fields
.field private action:I

.field private eyeDistance:F

.field private faceExtInfo:Lcom/ss/android/medialib/model/FaceDetect$FaceExtInfo;

.field private faceID:I

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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 1

    .line 214
    iget p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->action:I

    return p0
.end method

.method public getEyeDistance()F
    .registers 1

    .line 182
    iget p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->eyeDistance:F

    return p0
.end method

.method public getFaceExtInfo()Lcom/ss/android/medialib/model/FaceDetect$FaceExtInfo;
    .registers 1

    .line 246
    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->faceExtInfo:Lcom/ss/android/medialib/model/FaceDetect$FaceExtInfo;

    return-object p0
.end method

.method public getFaceID()I
    .registers 1

    .line 198
    iget p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->faceID:I

    return p0
.end method

.method public getPitch()F
    .registers 1

    .line 150
    iget p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->pitch:F

    return p0
.end method

.method public getPointVisibility()[F
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->pointVisibility:[F

    return-object p0
.end method

.method public getPoints()[Landroid/graphics/PointF;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->points:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->rect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRoll()F
    .registers 1

    .line 166
    iget p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->roll:F

    return p0
.end method

.method public getScore()F
    .registers 1

    .line 102
    iget p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->score:F

    return p0
.end method

.method public getTrackCount()I
    .registers 1

    .line 230
    iget p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->trackCount:I

    return p0
.end method

.method public getYaw()F
    .registers 1

    .line 134
    iget p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->yaw:F

    return p0
.end method

.method public setAction(I)V
    .registers 2

    .line 222
    iput p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->action:I

    return-void
.end method

.method public setEyeDistance(F)V
    .registers 2

    .line 190
    iput p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->eyeDistance:F

    return-void
.end method

.method public setFaceExtInfo(Lcom/ss/android/medialib/model/FaceDetect$FaceExtInfo;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->faceExtInfo:Lcom/ss/android/medialib/model/FaceDetect$FaceExtInfo;

    return-void
.end method

.method public setFaceID(I)V
    .registers 2

    .line 206
    iput p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->faceID:I

    return-void
.end method

.method public setPitch(F)V
    .registers 2

    .line 158
    iput p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->pitch:F

    return-void
.end method

.method public setPointVisibility([F)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->pointVisibility:[F

    return-void
.end method

.method public setPoints([Landroid/graphics/PointF;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->points:[Landroid/graphics/PointF;

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public setRoll(F)V
    .registers 2

    .line 174
    iput p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->roll:F

    return-void
.end method

.method public setScore(F)V
    .registers 2

    .line 110
    iput p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->score:F

    return-void
.end method

.method public setTrackCount(I)V
    .registers 2

    .line 238
    iput p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->trackCount:I

    return-void
.end method

.method public setYaw(F)V
    .registers 2

    .line 142
    iput p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->yaw:F

    return-void
.end method
