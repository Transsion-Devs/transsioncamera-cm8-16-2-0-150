.class public Lcom/transsion/camera/feature/setting/asd/AsdResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAlgorithmResult:I

.field private final mEffectResult:I

.field private final mHumanResult:I

.field private final mVersion:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mAlgorithmResult:I

    .line 17
    iput p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mEffectResult:I

    .line 18
    iput p3, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mHumanResult:I

    .line 19
    iput p4, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mVersion:I

    return-void
.end method


# virtual methods
.method public getAlgorithmResult()I
    .registers 1

    .line 29
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mAlgorithmResult:I

    return p0
.end method

.method public getEffectResult()I
    .registers 1

    .line 33
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mEffectResult:I

    return p0
.end method

.method public getHumanResult()I
    .registers 3

    .line 37
    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mVersion:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/4 p0, -0x1

    return p0

    .line 40
    :cond_7
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mHumanResult:I

    return p0
.end method

.method public getVersion()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mVersion:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mAlgorithmResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mEffectResult:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mHumanResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdResult;->mVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
