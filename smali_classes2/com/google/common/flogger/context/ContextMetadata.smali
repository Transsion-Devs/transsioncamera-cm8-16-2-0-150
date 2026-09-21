.class public abstract Lcom/google/common/flogger/context/ContextMetadata;
.super Lcom/google/common/flogger/backend/Metadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/context/ContextMetadata$Builder;,
        Lcom/google/common/flogger/context/ContextMetadata$SingletonMetadata;,
        Lcom/google/common/flogger/context/ContextMetadata$EmptyMetadata;,
        Lcom/google/common/flogger/context/ContextMetadata$Entry;,
        Lcom/google/common/flogger/context/ContextMetadata$ImmutableScopeMetadata;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/google/common/flogger/backend/Metadata;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/context/ContextMetadata$1;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/google/common/flogger/context/ContextMetadata;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/common/flogger/context/ContextMetadata$Builder;
    .registers 2

    .line 80
    new-instance v0, Lcom/google/common/flogger/context/ContextMetadata$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/flogger/context/ContextMetadata$Builder;-><init>(Lcom/google/common/flogger/context/ContextMetadata$1;)V

    return-object v0
.end method

.method public static none()Lcom/google/common/flogger/context/ContextMetadata;
    .registers 1

    .line 91
    sget-object v0, Lcom/google/common/flogger/context/ContextMetadata$EmptyMetadata;->INSTANCE:Lcom/google/common/flogger/context/ContextMetadata;

    return-object v0
.end method

.method public static singleton(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/context/ContextMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)",
            "Lcom/google/common/flogger/context/ContextMetadata;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/google/common/flogger/context/ContextMetadata$SingletonMetadata;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/context/ContextMetadata$SingletonMetadata;-><init>(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract concatenate(Lcom/google/common/flogger/context/ContextMetadata;)Lcom/google/common/flogger/context/ContextMetadata;
.end method

.method abstract get(I)Lcom/google/common/flogger/context/ContextMetadata$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/context/ContextMetadata$Entry<",
            "*>;"
        }
    .end annotation
.end method

.method public getKey(I)Lcom/google/common/flogger/MetadataKey;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/context/ContextMetadata;->get(I)Lcom/google/common/flogger/context/ContextMetadata$Entry;

    move-result-object p0

    iget-object p0, p0, Lcom/google/common/flogger/context/ContextMetadata$Entry;->key:Lcom/google/common/flogger/MetadataKey;

    return-object p0
.end method

.method public getValue(I)Ljava/lang/Object;
    .registers 2

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/context/ContextMetadata;->get(I)Lcom/google/common/flogger/context/ContextMetadata$Entry;

    move-result-object p0

    iget-object p0, p0, Lcom/google/common/flogger/context/ContextMetadata$Entry;->value:Ljava/lang/Object;

    return-object p0
.end method
