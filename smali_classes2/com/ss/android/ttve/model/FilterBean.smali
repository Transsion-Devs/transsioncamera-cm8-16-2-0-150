.class public Lcom/ss/android/ttve/model/FilterBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIntensity:F

.field private mLeftResPath:Ljava/lang/String;

.field private mPosition:F

.field private mRightIntensity:F

.field private mRightResPath:Ljava/lang/String;

.field private mUseEffectV3:Z

.field private mUseFilterResIntensity:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/model/FilterBean;-><init>(Ljava/lang/String;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .registers 4

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p1, v0, p2}, Lcom/ss/android/ttve/model/FilterBean;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FF)V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p4, p0, Lcom/ss/android/ttve/model/FilterBean;->mIntensity:F

    .line 22
    iput p4, p0, Lcom/ss/android/ttve/model/FilterBean;->mRightIntensity:F

    .line 23
    iput-object p1, p0, Lcom/ss/android/ttve/model/FilterBean;->mLeftResPath:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/ss/android/ttve/model/FilterBean;->mRightResPath:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/ss/android/ttve/model/FilterBean;->mPosition:F

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/ss/android/ttve/model/FilterBean;->mUseEffectV3:Z

    return-void
.end method


# virtual methods
.method public getIntensity()F
    .registers 1

    .line 54
    iget p0, p0, Lcom/ss/android/ttve/model/FilterBean;->mIntensity:F

    return p0
.end method

.method public getLeftResPath()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/ss/android/ttve/model/FilterBean;->mLeftResPath:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()F
    .registers 1

    .line 46
    iget p0, p0, Lcom/ss/android/ttve/model/FilterBean;->mPosition:F

    return p0
.end method

.method public getRightIntensity()F
    .registers 1

    .line 62
    iget p0, p0, Lcom/ss/android/ttve/model/FilterBean;->mRightIntensity:F

    return p0
.end method

.method public getRightResPath()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/ss/android/ttve/model/FilterBean;->mRightResPath:Ljava/lang/String;

    return-object p0
.end method

.method public ismUseEffectV3()Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/ss/android/ttve/model/FilterBean;->mUseEffectV3:Z

    return p0
.end method

.method public setIntensity(F)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/ss/android/ttve/model/FilterBean;->mIntensity:F

    return-void
.end method

.method public setLeftResPath(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/ss/android/ttve/model/FilterBean;->mLeftResPath:Ljava/lang/String;

    return-void
.end method

.method public setPosition(F)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/ss/android/ttve/model/FilterBean;->mPosition:F

    return-void
.end method

.method public setRightIntensity(F)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/ss/android/ttve/model/FilterBean;->mRightIntensity:F

    return-void
.end method

.method public setRightResPath(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/ss/android/ttve/model/FilterBean;->mRightResPath:Ljava/lang/String;

    return-void
.end method

.method public setUseFilterResIntensity(Z)V
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/ss/android/ttve/model/FilterBean;->mUseFilterResIntensity:Z

    return-void
.end method

.method public setmUseEffectV3(Z)V
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/ss/android/ttve/model/FilterBean;->mUseEffectV3:Z

    return-void
.end method

.method public useFilterResIntensity()Z
    .registers 1

    .line 70
    iget-boolean p0, p0, Lcom/ss/android/ttve/model/FilterBean;->mUseFilterResIntensity:Z

    return p0
.end method
