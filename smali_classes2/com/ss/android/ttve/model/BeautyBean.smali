.class public Lcom/ss/android/ttve/model/BeautyBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBeautyFaceType:I

.field private mBrightenIntensity:F

.field private mResPath:Ljava/lang/String;

.field private mSmoothIntensity:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 10
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v1}, Lcom/ss/android/ttve/model/BeautyBean;-><init>(ILjava/lang/String;FF)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;FF)V
    .registers 5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/ss/android/ttve/model/BeautyBean;->mBeautyFaceType:I

    .line 15
    iput-object p2, p0, Lcom/ss/android/ttve/model/BeautyBean;->mResPath:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/ss/android/ttve/model/BeautyBean;->mSmoothIntensity:F

    .line 17
    iput p4, p0, Lcom/ss/android/ttve/model/BeautyBean;->mBrightenIntensity:F

    return-void
.end method


# virtual methods
.method public getBrightenIntensity()F
    .registers 1

    .line 38
    iget p0, p0, Lcom/ss/android/ttve/model/BeautyBean;->mBrightenIntensity:F

    return p0
.end method

.method public getResPath()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/ss/android/ttve/model/BeautyBean;->mResPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSmoothIntensity()F
    .registers 1

    .line 30
    iget p0, p0, Lcom/ss/android/ttve/model/BeautyBean;->mSmoothIntensity:F

    return p0
.end method

.method public getType()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/ss/android/ttve/model/BeautyBean;->mBeautyFaceType:I

    return p0
.end method

.method public setResPath(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/ss/android/ttve/model/BeautyBean;->mResPath:Ljava/lang/String;

    return-void
.end method

.method public setSmoothIntensity(F)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/ss/android/ttve/model/BeautyBean;->mSmoothIntensity:F

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/ss/android/ttve/model/BeautyBean;->mBeautyFaceType:I

    return-void
.end method

.method public setbrightenIntensity(F)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/ss/android/ttve/model/BeautyBean;->mBrightenIntensity:F

    return-void
.end method
