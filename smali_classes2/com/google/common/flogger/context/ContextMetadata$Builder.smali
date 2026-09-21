.class public final Lcom/google/common/flogger/context/ContextMetadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/ContextMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Lcom/google/common/flogger/context/ContextMetadata$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/flogger/context/ContextMetadata$Entry<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/flogger/context/ContextMetadata$Entry<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 53
    new-array v0, v0, [Lcom/google/common/flogger/context/ContextMetadata$Entry;

    sput-object v0, Lcom/google/common/flogger/context/ContextMetadata$Builder;->EMPTY_ARRAY:[Lcom/google/common/flogger/context/ContextMetadata$Entry;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/flogger/context/ContextMetadata$Builder;->entries:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/context/ContextMetadata$1;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/google/common/flogger/context/ContextMetadata$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/context/ContextMetadata$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)",
            "Lcom/google/common/flogger/context/ContextMetadata$Builder;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/common/flogger/context/ContextMetadata$Builder;->entries:Ljava/util/List;

    new-instance v1, Lcom/google/common/flogger/context/ContextMetadata$Entry;

    invoke-direct {v1, p1, p2}, Lcom/google/common/flogger/context/ContextMetadata$Entry;-><init>(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/common/flogger/context/ContextMetadata;
    .registers 3

    .line 74
    new-instance v0, Lcom/google/common/flogger/context/ContextMetadata$ImmutableScopeMetadata;

    iget-object p0, p0, Lcom/google/common/flogger/context/ContextMetadata$Builder;->entries:Ljava/util/List;

    sget-object v1, Lcom/google/common/flogger/context/ContextMetadata$Builder;->EMPTY_ARRAY:[Lcom/google/common/flogger/context/ContextMetadata$Entry;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/common/flogger/context/ContextMetadata$Entry;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/context/ContextMetadata$ImmutableScopeMetadata;-><init>([Lcom/google/common/flogger/context/ContextMetadata$Entry;)V

    return-object v0
.end method
