.class public final Lcom/volcengine/ck/moment/base/CKMomentAssetScore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/volcengine/ck/moment/base/CKMomentAssetScore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final meaninglessScore:F

.field private final ptsMs:J

.field private final score:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore$Creator;

    invoke-direct {v0}, Lcom/volcengine/ck/moment/base/CKMomentAssetScore$Creator;-><init>()V

    sput-object v0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JFF)V
    .registers 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->ptsMs:J

    .line 25
    iput p3, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->score:F

    .line 26
    iput p4, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->meaninglessScore:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/moment/base/CKMomentAssetScore;JFFILjava/lang/Object;)Lcom/volcengine/ck/moment/base/CKMomentAssetScore;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-wide p1, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->ptsMs:J

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p3, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->score:F

    :cond_c
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_12

    iget p4, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->meaninglessScore:F

    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->copy(JFF)Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->ptsMs:J

    return-wide v0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->score:F

    return p0
.end method

.method public final component3()F
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->meaninglessScore:F

    return p0
.end method

.method public final copy(JFF)Lcom/volcengine/ck/moment/base/CKMomentAssetScore;
    .registers 5

    new-instance p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;-><init>(JFF)V

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;

    iget-wide v3, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->ptsMs:J

    iget-wide v5, p1, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->ptsMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->score:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->score:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->meaninglessScore:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->meaninglessScore:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    return v2

    :cond_3b
    return v0
.end method

.method public final getMeaninglessScore()F
    .registers 1

    .line 26
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->meaninglessScore:F

    return p0
.end method

.method public final getPtsMs()J
    .registers 3

    .line 24
    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->ptsMs:J

    return-wide v0
.end method

.method public final getScore()F
    .registers 1

    .line 25
    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->score:F

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->ptsMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->score:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->meaninglessScore:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CKMomentAssetScore(ptsMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->ptsMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", meaninglessScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->meaninglessScore:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->ptsMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->score:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Lcom/volcengine/ck/moment/base/CKMomentAssetScore;->meaninglessScore:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
