.class public final Lcom/volcengine/ck/highlight/data/HLResult;
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
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;"
        }
    .end annotation
.end field


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

.field private final ptsMs:I

.field private score:Lcom/volcengine/ck/highlight/data/HLScore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/highlight/data/HLResult$Creator;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/data/HLResult$Creator;-><init>()V

    sput-object v0, Lcom/volcengine/ck/highlight/data/HLResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
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

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/volcengine/ck/highlight/data/HLResult;->id:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/volcengine/ck/highlight/data/HLResult;->path:Ljava/lang/String;

    .line 15
    iput p3, p0, Lcom/volcengine/ck/highlight/data/HLResult;->ptsMs:I

    .line 16
    iput-object p4, p0, Lcom/volcengine/ck/highlight/data/HLResult;->c3:Ljava/util/List;

    .line 17
    iput-object p5, p0, Lcom/volcengine/ck/highlight/data/HLResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_8

    .line 16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_8
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_e

    const/4 p5, 0x0

    :cond_e
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/volcengine/ck/highlight/data/HLResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;)V

    return-void
.end method

.method private final padStringWithSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    rsub-int/lit8 p0, p0, 0x6

    if-lez p0, :cond_f

    .line 38
    const-string v0, "  "

    invoke-static {v0, p0}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_f
    const-string p0, ""

    .line 39
    :goto_11
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
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

    .line 16
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLResult;->c3:Ljava/util/List;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLResult;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLResult;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getPtsMs()I
    .registers 1

    .line 15
    iget p0, p0, Lcom/volcengine/ck/highlight/data/HLResult;->ptsMs:I

    return p0
.end method

.method public final getScore()Lcom/volcengine/ck/highlight/data/HLScore;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    return-object p0
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

    .line 16
    iput-object p1, p0, Lcom/volcengine/ck/highlight/data/HLResult;->c3:Ljava/util/List;

    return-void
.end method

.method public final setScore(Lcom/volcengine/ck/highlight/data/HLScore;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/volcengine/ck/highlight/data/HLResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    iget v1, p0, Lcom/volcengine/ck/highlight/data/HLResult;->ptsMs:I

    const/4 v2, -0x1

    const/16 v3, 0xa

    if-eq v1, v2, :cond_2a

    .line 22
    const-string v1, "\u65f6\u95f4\u4fe1\u606f\uff1a\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\u65f6\u95f4\u6233: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/volcengine/ck/highlight/data/HLResult;->ptsMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_2a
    const-string v1, "\u5206\u7c7b\u4fe1\u606f\uff1a\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/HLResult;->c3:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 60
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_49

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_49
    check-cast v4, Lcom/volcengine/ck/highlight/data/HLCategory;

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": \u5206\u7c7b\u540d\u79f0: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/volcengine/ck/highlight/data/HLCategory;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/volcengine/ck/highlight/data/HLResult;->padStringWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u5173\u8054\u6027: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/volcengine/ck/highlight/data/HLCategory;->getProb()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " \n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v5

    goto :goto_38

    .line 29
    :cond_82
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    if-nez p0, :cond_87

    goto :goto_a7

    .line 30
    :cond_87
    const-string v1, "\u6253\u5206\u4fe1\u606f:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\u8d28\u91cf\u5f97\u5206: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/data/HLScore;->getQualityScore()F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :goto_a7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "build.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/volcengine/ck/highlight/data/HLResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/volcengine/ck/highlight/data/HLResult;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/volcengine/ck/highlight/data/HLResult;->ptsMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/volcengine/ck/highlight/data/HLResult;->c3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/volcengine/ck/highlight/data/HLCategory;

    invoke-virtual {v1, p1, p2}, Lcom/volcengine/ck/highlight/data/HLCategory;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    :cond_31
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLResult;->score:Lcom/volcengine/ck/highlight/data/HLScore;

    if-nez p0, :cond_3a

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_3a
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, p2}, Lcom/volcengine/ck/highlight/data/HLScore;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
