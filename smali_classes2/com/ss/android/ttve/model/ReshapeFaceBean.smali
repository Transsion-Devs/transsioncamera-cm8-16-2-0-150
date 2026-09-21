.class public Lcom/ss/android/ttve/model/ReshapeFaceBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCheekIntensity:F

.field private mEyeIntensity:F

.field private mIntensityDict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mResPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/ss/android/ttve/model/ReshapeFaceBean;-><init>(Ljava/lang/String;FF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mResPath:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mEyeIntensity:F

    .line 22
    iput p3, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mCheekIntensity:F

    return-void
.end method


# virtual methods
.method public getCheekIntensity()F
    .registers 1

    .line 42
    iget p0, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mCheekIntensity:F

    return p0
.end method

.method public getEyeIntensity()F
    .registers 1

    .line 34
    iget p0, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mEyeIntensity:F

    return p0
.end method

.method public getIntensityDict()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mIntensityDict:Ljava/util/Map;

    return-object p0
.end method

.method public getResPath()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mResPath:Ljava/lang/String;

    return-object p0
.end method

.method public setCheekIntensity(F)V
    .registers 2

    .line 46
    iput p1, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mCheekIntensity:F

    return-void
.end method

.method public setEyeIntensity(F)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mEyeIntensity:F

    return-void
.end method

.method public setIntensityDict(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mIntensityDict:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 51
    iput-object p1, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mIntensityDict:Ljava/util/Map;

    return-void

    .line 54
    :cond_7
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setResPath(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mResPath:Ljava/lang/String;

    return-void
.end method

.method public setReshapeIntensity(IF)V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mIntensityDict:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mIntensityDict:Ljava/util/Map;

    .line 65
    :cond_b
    iget-object p0, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mIntensityDict:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
