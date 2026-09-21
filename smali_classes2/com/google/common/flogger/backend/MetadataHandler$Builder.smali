.class public final Lcom/google/common/flogger/backend/MetadataHandler$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/MetadataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final IGNORE_REPEATED_VALUE:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final IGNORE_VALUE:Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultHandler:Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler<",
            "Ljava/lang/Object;",
            "-TC;>;"
        }
    .end annotation
.end field

.field private defaultRepeatedHandler:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler<",
            "Ljava/lang/Object;",
            "-TC;>;"
        }
    .end annotation
.end field

.field private final repeatedValueHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;",
            "Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler<",
            "*-TC;>;>;"
        }
    .end annotation
.end field

.field private final singleValueHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;",
            "Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler<",
            "*-TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 136
    new-instance v0, Lcom/google/common/flogger/backend/MetadataHandler$Builder$1;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/MetadataHandler$Builder$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->IGNORE_VALUE:Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;

    .line 143
    new-instance v0, Lcom/google/common/flogger/backend/MetadataHandler$Builder$2;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/MetadataHandler$Builder$2;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->IGNORE_REPEATED_VALUE:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler<",
            "Ljava/lang/Object;",
            "-TC;>;)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->singleValueHandlers:Ljava/util/Map;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->repeatedValueHandlers:Ljava/util/Map;

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->defaultRepeatedHandler:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    .line 157
    const-string v0, "default handler"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;

    iput-object p1, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->defaultHandler:Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;Lcom/google/common/flogger/backend/MetadataHandler$1;)V
    .registers 3

    .line 134
    invoke-direct {p0, p1}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;-><init>(Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/flogger/backend/MetadataHandler$Builder;)Ljava/util/Map;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->singleValueHandlers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/common/flogger/backend/MetadataHandler$Builder;)Ljava/util/Map;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->repeatedValueHandlers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/common/flogger/backend/MetadataHandler$Builder;)Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->defaultHandler:Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/common/flogger/backend/MetadataHandler$Builder;)Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->defaultRepeatedHandler:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    return-object p0
.end method


# virtual methods
.method public addHandler(Lcom/google/common/flogger/MetadataKey;Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;",
            "Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler<",
            "-TT;-TC;>;)",
            "Lcom/google/common/flogger/backend/MetadataHandler$Builder<",
            "TC;>;"
        }
    .end annotation

    .line 190
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string v0, "handler"

    invoke-static {p2, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->repeatedValueHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->singleValueHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addRepeatedHandler(Lcom/google/common/flogger/MetadataKey;Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "+TT;>;",
            "Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler<",
            "TT;-TC;>;)",
            "Lcom/google/common/flogger/backend/MetadataHandler$Builder<",
            "TC;>;"
        }
    .end annotation

    .line 209
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    const-string v0, "handler"

    invoke-static {p2, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v0

    const-string v1, "key must be repeating"

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->singleValueHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->repeatedValueHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/google/common/flogger/backend/MetadataHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "TC;>;"
        }
    .end annotation

    .line 283
    new-instance v0, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;-><init>(Lcom/google/common/flogger/backend/MetadataHandler$Builder;Lcom/google/common/flogger/backend/MetadataHandler$1;)V

    return-object v0
.end method

.method checkAndIgnore(Lcom/google/common/flogger/MetadataKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;)V"
        }
    .end annotation

    .line 248
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    invoke-virtual {p1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 251
    sget-object v0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->IGNORE_REPEATED_VALUE:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->addRepeatedHandler(Lcom/google/common/flogger/MetadataKey;Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;

    return-void

    .line 253
    :cond_11
    sget-object v0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->IGNORE_VALUE:Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->addHandler(Lcom/google/common/flogger/MetadataKey;Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;

    return-void
.end method

.method checkAndRemove(Lcom/google/common/flogger/MetadataKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;)V"
        }
    .end annotation

    .line 276
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->singleValueHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->repeatedValueHandlers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs ignoring(Lcom/google/common/flogger/MetadataKey;[Lcom/google/common/flogger/MetadataKey;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;[",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;)",
            "Lcom/google/common/flogger/backend/MetadataHandler$Builder<",
            "TC;>;"
        }
    .end annotation

    .line 226
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->checkAndIgnore(Lcom/google/common/flogger/MetadataKey;)V

    .line 227
    array-length p1, p2

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_f

    aget-object v1, p2, v0

    .line 228
    invoke-virtual {p0, v1}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->checkAndIgnore(Lcom/google/common/flogger/MetadataKey;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    return-object p0
.end method

.method public ignoring(Ljava/lang/Iterable;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;)",
            "Lcom/google/common/flogger/backend/MetadataHandler$Builder<",
            "TC;>;"
        }
    .end annotation

    .line 241
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/MetadataKey;

    .line 242
    invoke-virtual {p0, v0}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->checkAndIgnore(Lcom/google/common/flogger/MetadataKey;)V

    goto :goto_4

    :cond_14
    return-object p0
.end method

.method public varargs removeHandlers(Lcom/google/common/flogger/MetadataKey;[Lcom/google/common/flogger/MetadataKey;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;[",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;)",
            "Lcom/google/common/flogger/backend/MetadataHandler$Builder<",
            "TC;>;"
        }
    .end annotation

    .line 268
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->checkAndRemove(Lcom/google/common/flogger/MetadataKey;)V

    .line 269
    array-length p1, p2

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_f

    aget-object v1, p2, v0

    .line 270
    invoke-virtual {p0, v1}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->checkAndRemove(Lcom/google/common/flogger/MetadataKey;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    return-object p0
.end method

.method public setDefaultRepeatedHandler(Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler<",
            "Ljava/lang/Object;",
            "-TC;>;)",
            "Lcom/google/common/flogger/backend/MetadataHandler$Builder<",
            "TC;>;"
        }
    .end annotation

    .line 175
    const-string v0, "handler"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    iput-object p1, p0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->defaultRepeatedHandler:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    return-object p0
.end method
