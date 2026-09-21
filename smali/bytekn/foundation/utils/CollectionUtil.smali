.class public final Lbytekn/foundation/utils/CollectionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lbytekn/foundation/utils/CollectionUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lbytekn/foundation/utils/CollectionUtil;

    invoke-direct {v0}, Lbytekn/foundation/utils/CollectionUtil;-><init>()V

    sput-object v0, Lbytekn/foundation/utils/CollectionUtil;->INSTANCE:Lbytekn/foundation/utils/CollectionUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isListEmpty(Ljava/util/List;)Z
    .registers 2

    if-eqz p1, :cond_b

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final isMapEmpty(Ljava/util/Map;)Z
    .registers 2

    if-eqz p1, :cond_b

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method
