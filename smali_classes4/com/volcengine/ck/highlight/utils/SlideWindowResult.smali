.class public final Lcom/volcengine/ck/highlight/utils/SlideWindowResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final endIndex:I

.field private final maxValue:F

.field private final startIndex:I


# direct methods
.method public constructor <init>(IIF)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->startIndex:I

    .line 42
    iput p2, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->endIndex:I

    .line 43
    iput p3, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->maxValue:F

    return-void
.end method

.method public synthetic constructor <init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_b

    move p2, v0

    .line 40
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;-><init>(IIF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/highlight/utils/SlideWindowResult;IIFILjava/lang/Object;)Lcom/volcengine/ck/highlight/utils/SlideWindowResult;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->startIndex:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->endIndex:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->maxValue:F

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->copy(IIF)Lcom/volcengine/ck/highlight/utils/SlideWindowResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->startIndex:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->endIndex:I

    return p0
.end method

.method public final component3()F
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->maxValue:F

    return p0
.end method

.method public final copy(IIF)Lcom/volcengine/ck/highlight/utils/SlideWindowResult;
    .registers 4

    new-instance p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;

    invoke-direct {p0, p1, p2, p3}, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;-><init>(IIF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;

    iget v1, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->startIndex:I

    iget v3, p1, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->startIndex:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->endIndex:I

    iget v3, p1, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->endIndex:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget p0, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->maxValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->maxValue:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getEndIndex()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->endIndex:I

    return p0
.end method

.method public final getMaxValue()F
    .registers 1

    .line 43
    iget p0, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->maxValue:F

    return p0
.end method

.method public final getStartIndex()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->startIndex:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->startIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->endIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->maxValue:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlideWindowResult(startIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->startIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;->maxValue:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
