.class public final Lcom/volcengine/ck/highlight/data/HLExtractorResult;
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
            "Lcom/volcengine/ck/highlight/data/HLExtractorResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final averageScore:F

.field private final endTime:I

.field private final startTime:I

.field private final weight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/highlight/data/HLExtractorResult$Creator;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/data/HLExtractorResult$Creator;-><init>()V

    sput-object v0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->startTime:I

    .line 14
    iput p2, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->endTime:I

    .line 15
    iput p3, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->weight:I

    .line 19
    iput p4, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->averageScore:F

    return-void
.end method

.method public synthetic constructor <init>(IIIFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_5

    const/4 p3, 0x1

    .line 12
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;-><init>(IIIF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/highlight/data/HLExtractorResult;IIIFILjava/lang/Object;)Lcom/volcengine/ck/highlight/data/HLExtractorResult;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->startTime:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->endTime:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->weight:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->averageScore:F

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->copy(IIIF)Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->startTime:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->endTime:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->weight:I

    return p0
.end method

.method public final component4()F
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->averageScore:F

    return p0
.end method

.method public final copy(IIIF)Lcom/volcengine/ck/highlight/data/HLExtractorResult;
    .registers 5

    new-instance p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;-><init>(IIIF)V

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
    instance-of v1, p1, Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->startTime:I

    iget v3, p1, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->startTime:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->endTime:I

    iget v3, p1, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->endTime:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->weight:I

    iget v3, p1, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->weight:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->averageScore:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->averageScore:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public final getAverageScore()F
    .registers 1

    .line 19
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->averageScore:F

    return p0
.end method

.method public final getEndTime()I
    .registers 1

    .line 14
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->endTime:I

    return p0
.end method

.method public final getScore()F
    .registers 2

    .line 21
    iget v0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->averageScore:F

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->weight:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public final getStartTime()I
    .registers 1

    .line 13
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->startTime:I

    return p0
.end method

.method public final getWeight()I
    .registers 1

    .line 15
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->weight:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->startTime:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->endTime:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->weight:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->averageScore:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HLExtractorResult(startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", averageScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->averageScore:F

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

    iget p2, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->startTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->endTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->weight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->averageScore:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
