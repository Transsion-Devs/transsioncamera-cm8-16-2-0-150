.class public abstract Lcom/google/common/flogger/LogPerBucketingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BY_CLASS:Lcom/google/common/flogger/LogPerBucketingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/LogPerBucketingStrategy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final BY_CLASS_NAME:Lcom/google/common/flogger/LogPerBucketingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/LogPerBucketingStrategy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final KNOWN_BOUNDED:Lcom/google/common/flogger/LogPerBucketingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/LogPerBucketingStrategy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/google/common/flogger/LogPerBucketingStrategy$1;

    const-string v1, "KnownBounded"

    invoke-direct {v0, v1}, Lcom/google/common/flogger/LogPerBucketingStrategy$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/flogger/LogPerBucketingStrategy;->KNOWN_BOUNDED:Lcom/google/common/flogger/LogPerBucketingStrategy;

    .line 58
    new-instance v0, Lcom/google/common/flogger/LogPerBucketingStrategy$2;

    const-string v1, "ByClass"

    invoke-direct {v0, v1}, Lcom/google/common/flogger/LogPerBucketingStrategy$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/flogger/LogPerBucketingStrategy;->BY_CLASS:Lcom/google/common/flogger/LogPerBucketingStrategy;

    .line 68
    new-instance v0, Lcom/google/common/flogger/LogPerBucketingStrategy$3;

    const-string v1, "ByClassName"

    invoke-direct {v0, v1}, Lcom/google/common/flogger/LogPerBucketingStrategy$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/flogger/LogPerBucketingStrategy;->BY_CLASS_NAME:Lcom/google/common/flogger/LogPerBucketingStrategy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/flogger/LogPerBucketingStrategy;->name:Ljava/lang/String;

    return-void
.end method

.method public static final byClass()Lcom/google/common/flogger/LogPerBucketingStrategy;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/flogger/LogPerBucketingStrategy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/google/common/flogger/LogPerBucketingStrategy;->BY_CLASS:Lcom/google/common/flogger/LogPerBucketingStrategy;

    return-object v0
.end method

.method public static final byClassName()Lcom/google/common/flogger/LogPerBucketingStrategy;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/flogger/LogPerBucketingStrategy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/google/common/flogger/LogPerBucketingStrategy;->BY_CLASS_NAME:Lcom/google/common/flogger/LogPerBucketingStrategy;

    return-object v0
.end method

.method public static final byHashCode(I)Lcom/google/common/flogger/LogPerBucketingStrategy;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/LogPerBucketingStrategy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-lez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 177
    :goto_5
    const-string v1, "maxBuckets must be positive"

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 178
    new-instance v0, Lcom/google/common/flogger/LogPerBucketingStrategy$5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ByHashCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/flogger/LogPerBucketingStrategy$5;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final forKnownKeys(Ljava/lang/Iterable;)Lcom/google/common/flogger/LogPerBucketingStrategy;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/google/common/flogger/LogPerBucketingStrategy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ForKnownKeys("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 135
    const-string v4, "key"

    invoke-static {v3, v4}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    if-lez v2, :cond_2b

    .line 137
    const-string v4, ", "

    goto :goto_2d

    :cond_2b
    const-string v4, ""

    :goto_2d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    goto :goto_11

    .line 141
    :cond_3e
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v2, "knownKeys must not be empty"

    invoke-static {p0, v2}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 142
    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance p0, Lcom/google/common/flogger/LogPerBucketingStrategy$4;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/common/flogger/LogPerBucketingStrategy$4;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    return-object p0
.end method

.method public static final knownBounded()Lcom/google/common/flogger/LogPerBucketingStrategy;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/flogger/LogPerBucketingStrategy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/google/common/flogger/LogPerBucketingStrategy;->KNOWN_BOUNDED:Lcom/google/common/flogger/LogPerBucketingStrategy;

    return-object v0
.end method


# virtual methods
.method protected abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/common/flogger/LogPerBucketingStrategy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/flogger/LogPerBucketingStrategy;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
