.class public Lcom/transsion/camera/utils/SettingInfo$CameraFace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraFace"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;
    }
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

.field private final mLeftEye:Landroid/graphics/Point;

.field private final mMouth:Landroid/graphics/Point;

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private final mRightEye:Landroid/graphics/Point;

.field private final mScore:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 9

    .line 3227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p3, v0, :cond_2c

    const/16 v0, 0x64

    if-gt p3, v0, :cond_2c

    if-gez p4, :cond_18

    const/4 v0, -0x1

    if-ne p4, v0, :cond_10

    goto :goto_18

    .line 3231
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Id out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3234
    :cond_18
    :goto_18
    iput-object p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mBounds:Landroid/graphics/Rect;

    .line 3235
    iput-object p2, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mOriginalBounds:Landroid/graphics/Rect;

    .line 3236
    iput p3, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mScore:I

    .line 3237
    iput-object p5, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mLeftEye:Landroid/graphics/Point;

    .line 3238
    iput-object p6, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mRightEye:Landroid/graphics/Point;

    .line 3239
    iput-object p7, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mMouth:Landroid/graphics/Point;

    .line 3240
    new-instance p1, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    invoke-direct {p1, p4}, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    return-void

    .line 3229
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Confidence out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAge()I
    .registers 1

    .line 3301
    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    invoke-static {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->-$$Nest$fgetmAge(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)I

    move-result p0

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 1

    .line 3269
    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getGender()I
    .registers 1

    .line 3289
    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mGender:I

    return p0
.end method

.method public getId()I
    .registers 1

    .line 3285
    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mId:I

    return p0
.end method

.method public getOriginalBounds()Landroid/graphics/Rect;
    .registers 1

    .line 3273
    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mOriginalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRace()I
    .registers 1

    .line 3297
    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mRace:I

    return p0
.end method

.method public getSkinColor()I
    .registers 1

    .line 3293
    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mSkinColor:I

    return p0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 3277
    iput-object p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    .line 3331
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mScore:I

    .line 3335
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    iget v3, v3, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    iget v4, v4, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mGender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    invoke-static {v5}, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->-$$Nest$fgetmAge(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    invoke-static {v6}, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->-$$Nest$fgetmDx(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)F

    move-result v6

    .line 3336
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    invoke-static {v7}, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->-$$Nest$fgetmDy(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 3337
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getRace()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getSkinColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mLeftEye:Landroid/graphics/Point;

    iget-object v11, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mRightEye:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mMouth:Landroid/graphics/Point;

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    .line 3331
    const-string v1, "{bounds: %s, score: %s, Face Attar info id: %d, gender: %d, age: %d, dx: %f,  dy: %f, race: %d, skinColor: %d, leftEyePosition: %s, rightEyePosition: %s, mouthPosition: %s }"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAttarFaceAttarInfo(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)V
    .registers 2

    .line 3325
    iput-object p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mFaceAttarInfo:Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    return-void
.end method
