.class public final Lcom/volcengine/ck/highlight/utils/SlideWindowUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/volcengine/ck/highlight/utils/SlideWindowUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/highlight/utils/SlideWindowUtils;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/utils/SlideWindowUtils;-><init>()V

    sput-object v0, Lcom/volcengine/ck/highlight/utils/SlideWindowUtils;->INSTANCE:Lcom/volcengine/ck/highlight/utils/SlideWindowUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findMax(Ljava/util/List;I)Lcom/volcengine/ck/highlight/utils/SlideWindowResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)",
            "Lcom/volcengine/ck/highlight/utils/SlideWindowResult;"
        }
    .end annotation

    const-string p0, "nums"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    .line 46
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    move v2, v1

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    if-gez v1, :cond_22

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_22
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    if-ge v1, p2, :cond_2c

    :goto_2a
    add-float/2addr v0, v4

    goto :goto_40

    :cond_2c
    cmpl-float v6, v0, v3

    if-lez v6, :cond_33

    add-int/lit8 v2, v1, -0x1

    move v3, v0

    :cond_33
    sub-int/2addr v1, p2

    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v4, v1

    goto :goto_2a

    :goto_40
    move v1, v5

    goto :goto_11

    :cond_42
    cmpl-float p0, v0, v3

    if-lez p0, :cond_4d

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 v2, p0, -0x1

    goto :goto_4e

    :cond_4d
    move v0, v3

    :goto_4e
    sub-int p0, v2, p2

    add-int/lit8 p0, p0, 0x1

    .line 36
    new-instance p1, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;

    invoke-direct {p1, p0, v2, v0}, Lcom/volcengine/ck/highlight/utils/SlideWindowResult;-><init>(IIF)V

    return-object p1
.end method
