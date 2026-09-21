.class public final Lcom/volcengine/ck/highlight/data/HLScore;
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
            "Lcom/volcengine/ck/highlight/data/HLScore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final faceScore:F

.field private final meaninglessScore:F

.field private final qualityScore:F

.field private final sharpnessScore:F

.field private final totalScore:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/highlight/data/HLScore$Creator;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/data/HLScore$Creator;-><init>()V

    sput-object v0, Lcom/volcengine/ck/highlight/data/HLScore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .registers 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->totalScore:F

    .line 54
    iput p2, p0, Lcom/volcengine/ck/highlight/data/HLScore;->faceScore:F

    .line 55
    iput p3, p0, Lcom/volcengine/ck/highlight/data/HLScore;->qualityScore:F

    .line 56
    iput p4, p0, Lcom/volcengine/ck/highlight/data/HLScore;->sharpnessScore:F

    .line 57
    iput p5, p0, Lcom/volcengine/ck/highlight/data/HLScore;->meaninglessScore:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/highlight/data/HLScore;FFFFFILjava/lang/Object;)Lcom/volcengine/ck/highlight/data/HLScore;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget p1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->totalScore:F

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget p2, p0, Lcom/volcengine/ck/highlight/data/HLScore;->faceScore:F

    :cond_c
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    iget p3, p0, Lcom/volcengine/ck/highlight/data/HLScore;->qualityScore:F

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_18

    iget p4, p0, Lcom/volcengine/ck/highlight/data/HLScore;->sharpnessScore:F

    :cond_18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    iget p5, p0, Lcom/volcengine/ck/highlight/data/HLScore;->meaninglessScore:F

    :cond_1e
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/volcengine/ck/highlight/data/HLScore;->copy(FFFFF)Lcom/volcengine/ck/highlight/data/HLScore;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->totalScore:F

    return p0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->faceScore:F

    return p0
.end method

.method public final component3()F
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->qualityScore:F

    return p0
.end method

.method public final component4()F
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->sharpnessScore:F

    return p0
.end method

.method public final component5()F
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->meaninglessScore:F

    return p0
.end method

.method public final copy(FFFFF)Lcom/volcengine/ck/highlight/data/HLScore;
    .registers 6

    new-instance p0, Lcom/volcengine/ck/highlight/data/HLScore;

    invoke-direct/range {p0 .. p5}, Lcom/volcengine/ck/highlight/data/HLScore;-><init>(FFFFF)V

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/volcengine/ck/highlight/data/HLScore;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/highlight/data/HLScore;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->totalScore:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/volcengine/ck/highlight/data/HLScore;->totalScore:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->faceScore:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/volcengine/ck/highlight/data/HLScore;->faceScore:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->qualityScore:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/volcengine/ck/highlight/data/HLScore;->qualityScore:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v2

    :cond_45
    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->sharpnessScore:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/volcengine/ck/highlight/data/HLScore;->sharpnessScore:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    return v2

    :cond_58
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->meaninglessScore:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/volcengine/ck/highlight/data/HLScore;->meaninglessScore:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    return v2

    :cond_6b
    return v0
.end method

.method public final getFaceScore()F
    .registers 1

    .line 54
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->faceScore:F

    return p0
.end method

.method public final getMeaninglessScore()F
    .registers 1

    .line 57
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->meaninglessScore:F

    return p0
.end method

.method public final getQualityScore()F
    .registers 1

    .line 55
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->qualityScore:F

    return p0
.end method

.method public final getSharpnessScore()F
    .registers 1

    .line 56
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->sharpnessScore:F

    return p0
.end method

.method public final getTotalScore()F
    .registers 1

    .line 53
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->totalScore:F

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->totalScore:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->faceScore:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->qualityScore:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->sharpnessScore:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->meaninglessScore:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HLScore(totalScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->totalScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", faceScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->faceScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", qualityScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->qualityScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sharpnessScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLScore;->sharpnessScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", meaninglessScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->meaninglessScore:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/volcengine/ck/highlight/data/HLScore;->totalScore:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/volcengine/ck/highlight/data/HLScore;->faceScore:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/volcengine/ck/highlight/data/HLScore;->qualityScore:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/volcengine/ck/highlight/data/HLScore;->sharpnessScore:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLScore;->meaninglessScore:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
