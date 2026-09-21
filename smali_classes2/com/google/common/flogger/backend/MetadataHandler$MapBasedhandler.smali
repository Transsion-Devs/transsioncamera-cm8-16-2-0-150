.class final Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;
.super Lcom/google/common/flogger/backend/MetadataHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/MetadataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MapBasedhandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/flogger/backend/MetadataHandler<",
        "TC;>;"
    }
.end annotation


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

.field private final defaultRepeatedHandler:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;
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
.method private constructor <init>(Lcom/google/common/flogger/backend/MetadataHandler$Builder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/backend/MetadataHandler$Builder<",
            "TC;>;)V"
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Lcom/google/common/flogger/backend/MetadataHandler;-><init>()V

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;->singleValueHandlers:Ljava/util/Map;

    .line 290
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;->repeatedValueHandlers:Ljava/util/Map;

    .line 296
    # getter for: Lcom/google/common/flogger/backend/MetadataHandler$Builder;->singleValueHandlers:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->access$200(Lcom/google/common/flogger/backend/MetadataHandler$Builder;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 297
    # getter for: Lcom/google/common/flogger/backend/MetadataHandler$Builder;->repeatedValueHandlers:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->access$300(Lcom/google/common/flogger/backend/MetadataHandler$Builder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 298
    # getter for: Lcom/google/common/flogger/backend/MetadataHandler$Builder;->defaultHandler:Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;
    invoke-static {p1}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->access$400(Lcom/google/common/flogger/backend/MetadataHandler$Builder;)Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;->defaultHandler:Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;

    .line 299
    # getter for: Lcom/google/common/flogger/backend/MetadataHandler$Builder;->defaultRepeatedHandler:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;
    invoke-static {p1}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->access$500(Lcom/google/common/flogger/backend/MetadataHandler$Builder;)Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;->defaultRepeatedHandler:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/backend/MetadataHandler$Builder;Lcom/google/common/flogger/backend/MetadataHandler$1;)V
    .registers 3

    .line 287
    invoke-direct {p0, p1}, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;-><init>(Lcom/google/common/flogger/backend/MetadataHandler$Builder;)V

    return-void
.end method


# virtual methods
.method protected handle(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;TC;)V"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;->singleValueHandlers:Ljava/util/Map;

    .line 307
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;

    if-eqz v0, :cond_e

    .line 309
    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;->handle(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 312
    :cond_e
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;->defaultHandler:Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;->handle(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRepeated(Lcom/google/common/flogger/MetadataKey;Ljava/util/Iterator;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;TC;)V"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;->repeatedValueHandlers:Ljava/util/Map;

    .line 321
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    if-eqz v0, :cond_e

    .line 323
    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;->handle(Lcom/google/common/flogger/MetadataKey;Ljava/util/Iterator;Ljava/lang/Object;)V

    return-void

    .line 324
    :cond_e
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;->defaultRepeatedHandler:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;->singleValueHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 327
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;->defaultRepeatedHandler:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;->handle(Lcom/google/common/flogger/MetadataKey;Ljava/util/Iterator;Ljava/lang/Object;)V

    return-void

    .line 331
    :cond_20
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/flogger/backend/MetadataHandler;->handleRepeated(Lcom/google/common/flogger/MetadataKey;Ljava/util/Iterator;Ljava/lang/Object;)V

    return-void
.end method
