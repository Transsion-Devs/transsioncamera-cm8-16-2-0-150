.class public final Lbytekn/foundation/utils/StringExtension$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbytekn/foundation/utils/StringExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lbytekn/foundation/utils/StringExtension$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final lastIndexOfRegex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const/4 p0, -0x1

    if-eqz p1, :cond_2b

    if-nez p2, :cond_6

    goto :goto_2b

    .line 27
    :cond_6
    new-instance v0, Lkotlin/text/Regex;

    invoke-direct {v0, p2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 28
    invoke-static {v0, p1, v2, p2, v1}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 29
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1d

    return p0

    .line 32
    :cond_1d
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->last(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/text/MatchResult;

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result p0

    :cond_2b
    :goto_2b
    return p0
.end method
