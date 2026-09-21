.class public final Lcom/volcengine/ck/highlight/data/RecognizeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private c3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private score:Lcom/volcengine/ck/highlight/data/HLScore;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLCategory;",
            ">;",
            "Lcom/volcengine/ck/highlight/data/HLScore;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->id:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->path:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->c3:Ljava/util/List;

    .line 12
    iput-object p4, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_8

    .line 11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_8
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_d

    const/4 p4, 0x0

    .line 8
    :cond_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/highlight/data/RecognizeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/highlight/data/RecognizeResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;ILjava/lang/Object;)Lcom/volcengine/ck/highlight/data/RecognizeResult;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->id:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->path:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->c3:Ljava/util/List;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/highlight/data/RecognizeResult;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;)Lcom/volcengine/ck/highlight/data/RecognizeResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLCategory;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->c3:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Lcom/volcengine/ck/highlight/data/HLScore;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;)Lcom/volcengine/ck/highlight/data/RecognizeResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLCategory;",
            ">;",
            "Lcom/volcengine/ck/highlight/data/HLScore;",
            ")",
            "Lcom/volcengine/ck/highlight/data/RecognizeResult;"
        }
    .end annotation

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c3"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/volcengine/ck/highlight/data/RecognizeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/volcengine/ck/highlight/data/RecognizeResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/highlight/data/RecognizeResult;

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/highlight/data/RecognizeResult;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/volcengine/ck/highlight/data/RecognizeResult;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->c3:Ljava/util/List;

    iget-object v3, p1, Lcom/volcengine/ck/highlight/data/RecognizeResult;->c3:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    iget-object p1, p1, Lcom/volcengine/ck/highlight/data/RecognizeResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getC3()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLCategory;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->c3:Ljava/util/List;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getScore()Lcom/volcengine/ck/highlight/data/HLScore;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->c3:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    if-nez p0, :cond_20

    const/4 p0, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/data/HLScore;->hashCode()I

    move-result p0

    :goto_24
    add-int/2addr v0, p0

    return v0
.end method

.method public final setC3(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLCategory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->c3:Ljava/util/List;

    return-void
.end method

.method public final setScore(Lcom/volcengine/ck/highlight/data/HLScore;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognizeResult(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", c3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->c3:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
