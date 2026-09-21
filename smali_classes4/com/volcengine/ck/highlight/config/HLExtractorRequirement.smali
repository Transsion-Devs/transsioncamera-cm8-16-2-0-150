.class public final Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final requireCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requireTime:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requireCategoryList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireTime:I

    .line 10
    iput-object p2, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireCategoryList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 8
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;ILjava/util/List;ILjava/lang/Object;)Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireTime:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireCategoryList:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->copy(ILjava/util/List;)Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireTime:I

    return p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireCategoryList:Ljava/util/List;

    return-object p0
.end method

.method public final copy(ILjava/util/List;)Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;"
        }
    .end annotation

    const-string p0, "requireCategoryList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;

    invoke-direct {p0, p1, p2}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;-><init>(ILjava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;

    iget v1, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireTime:I

    iget v3, p1, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireTime:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireCategoryList:Ljava/util/List;

    iget-object p1, p1, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireCategoryList:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getRequireCategoryList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireCategoryList:Ljava/util/List;

    return-object p0
.end method

.method public final getRequireTime()I
    .registers 1

    .line 9
    iget p0, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireTime:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireTime:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireCategoryList:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HLExtractorRequirement(requireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requireCategoryList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;->requireCategoryList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
