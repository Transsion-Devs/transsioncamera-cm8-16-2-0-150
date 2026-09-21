.class public Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mGender:I

.field private final mOriginalBounds:Landroid/graphics/Rect;

.field private mSkinColor:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mBounds:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {p1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mOriginalBounds:Landroid/graphics/Rect;

    .line 33
    invoke-virtual {p1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mGender:I

    .line 34
    invoke-virtual {p1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getSkinColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mSkinColor:I

    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getGender()I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mGender:I

    return p0
.end method

.method public getGenderDes()Ljava/lang/String;
    .registers 2

    .line 54
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mGender:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    .line 60
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 58
    :cond_c
    const-string p0, "female"

    return-object p0

    .line 56
    :cond_f
    const-string p0, "male"

    return-object p0
.end method

.method public getOriginalBounds()Landroid/graphics/Rect;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mOriginalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSkinColor()I
    .registers 1

    .line 69
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mSkinColor:I

    return p0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setGender(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mGender:I

    return-void
.end method

.method public setSkinColor(I)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mSkinColor:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceInfo{mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOriginalBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mGender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mGender:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSkinColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->mSkinColor:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
