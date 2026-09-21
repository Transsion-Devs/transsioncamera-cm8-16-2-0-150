.class public Lcom/ss/android/ttve/model/EffectBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mResPath:Ljava/lang/String;

.field private mStickerId:I

.field private mUseAmazing:Z

.field private mWithoutFace:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/ss/android/ttve/model/EffectBean;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/ss/android/ttve/model/EffectBean;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ss/android/ttve/model/EffectBean;->mResPath:Ljava/lang/String;

    .line 20
    iput-boolean p2, p0, Lcom/ss/android/ttve/model/EffectBean;->mWithoutFace:Z

    return-void
.end method


# virtual methods
.method public getResPath()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/ss/android/ttve/model/EffectBean;->mResPath:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerId()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/ss/android/ttve/model/EffectBean;->mStickerId:I

    return p0
.end method

.method public isWithoutFace()Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/ss/android/ttve/model/EffectBean;->mWithoutFace:Z

    return p0
.end method

.method public setResPath(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/ss/android/ttve/model/EffectBean;->mResPath:Ljava/lang/String;

    return-void
.end method

.method public setStickerId(I)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/ss/android/ttve/model/EffectBean;->mStickerId:I

    return-void
.end method

.method public setWithoutFace(Z)V
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/ss/android/ttve/model/EffectBean;->mWithoutFace:Z

    return-void
.end method
