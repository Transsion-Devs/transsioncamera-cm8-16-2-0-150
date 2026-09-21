.class final Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final cursor:I

.field private final sorting_position:I

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    const-string/jumbo v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->version:Ljava/lang/String;

    iput p2, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->cursor:I

    iput p3, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->sorting_position:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;Ljava/lang/String;IIILjava/lang/Object;)Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->version:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->cursor:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->sorting_position:I

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->copy(Ljava/lang/String;II)Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->version:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->cursor:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->sorting_position:I

    return p0
.end method

.method public final copy(Ljava/lang/String;II)Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;
    .registers 4

    const-string/jumbo p0, "version"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;-><init>(Ljava/lang/String;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_21

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->version:Ljava/lang/String;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->cursor:I

    iget v1, p1, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->cursor:I

    if-ne v0, v1, :cond_1f

    iget p0, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->sorting_position:I

    iget p1, p1, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->sorting_position:I

    if-ne p0, p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public final getCursor()I
    .registers 1

    .line 162
    iget p0, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->cursor:I

    return p0
.end method

.method public final getSorting_position()I
    .registers 1

    .line 163
    iget p0, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->sorting_position:I

    return p0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->version:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->version:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->cursor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->sorting_position:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryVersion(version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sorting_position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/ugc/effectplatform/task/FetchCategoryEffectTask$CategoryVersion;->sorting_position:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
