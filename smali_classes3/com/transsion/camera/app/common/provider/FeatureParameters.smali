.class public Lcom/transsion/camera/app/common/provider/FeatureParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIs5xopen:Z

.field private mIsStereoOpen:Z

.field private mScreenFormType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/transsion/camera/app/common/provider/FeatureParameters;->mScreenFormType:I

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/transsion/camera/app/common/provider/FeatureParameters;->mScreenFormType:I

    .line 18
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/provider/FeatureParameters;->mIs5xopen:Z

    return-void
.end method


# virtual methods
.method public isStereoOpen()Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/provider/FeatureParameters;->mIsStereoOpen:Z

    return p0
.end method

.method public screenFormType()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/transsion/camera/app/common/provider/FeatureParameters;->mScreenFormType:I

    return p0
.end method

.method public screenFormType(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/transsion/camera/app/common/provider/FeatureParameters;->mScreenFormType:I

    return-void
.end method

.method public setStereoOpen(Z)V
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/provider/FeatureParameters;->mIsStereoOpen:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v1, " mIs5xopen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/provider/FeatureParameters;->mIs5xopen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, " mIsStereoOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/provider/FeatureParameters;->mIsStereoOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, " mScreenFormType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/provider/FeatureParameters;->mScreenFormType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
