.class public Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFaceCount:I

.field public mMaxFaceProportion:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mFaceCount:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mMaxFaceProportion:F

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mFaceCount:I

    .line 29
    iput p2, p0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mMaxFaceProportion:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameFace{mFaceCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mFaceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxFaceProportion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mMaxFaceProportion:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
