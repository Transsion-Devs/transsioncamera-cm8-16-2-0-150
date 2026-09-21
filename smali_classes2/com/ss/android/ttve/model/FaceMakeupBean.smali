.class public Lcom/ss/android/ttve/model/FaceMakeupBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLipStickIntensity:F

.field private mNasolabialIntensity:F

.field private mPouchIntensity:F

.field private mResPath:Ljava/lang/String;

.field private mblusherIntensity:F


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/model/FaceMakeupBean;-><init>(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mResPath:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mLipStickIntensity:F

    .line 15
    iput p3, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mblusherIntensity:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFF)V
    .registers 6

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/ttve/model/FaceMakeupBean;-><init>(Ljava/lang/String;FF)V

    .line 20
    iput p4, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mNasolabialIntensity:F

    .line 21
    iput p5, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mPouchIntensity:F

    return-void
.end method


# virtual methods
.method public getBlusherIntensity()F
    .registers 1

    .line 41
    iget p0, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mblusherIntensity:F

    return p0
.end method

.method public getLipStickIntensity()F
    .registers 1

    .line 33
    iget p0, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mLipStickIntensity:F

    return p0
.end method

.method public getNasolabialIntensity()F
    .registers 1

    .line 49
    iget p0, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mNasolabialIntensity:F

    return p0
.end method

.method public getPouchIntensity()F
    .registers 1

    .line 57
    iget p0, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mPouchIntensity:F

    return p0
.end method

.method public getResPath()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mResPath:Ljava/lang/String;

    return-object p0
.end method

.method public setBlusherIntensity(F)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mblusherIntensity:F

    return-void
.end method

.method public setLipStickIntensity(F)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mLipStickIntensity:F

    return-void
.end method

.method public setNasolabialIntensity(F)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mNasolabialIntensity:F

    return-void
.end method

.method public setPouchIntensity(F)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mPouchIntensity:F

    return-void
.end method

.method public setResPath(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mResPath:Ljava/lang/String;

    return-void
.end method
