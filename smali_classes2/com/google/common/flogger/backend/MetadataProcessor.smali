.class public abstract Lcom/google/common/flogger/backend/MetadataProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;,
        Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;
    }
.end annotation


# static fields
.field private static final EMPTY_PROCESSOR:Lcom/google/common/flogger/backend/MetadataProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/google/common/flogger/backend/MetadataProcessor$1;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/MetadataProcessor$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/MetadataProcessor;->EMPTY_PROCESSOR:Lcom/google/common/flogger/backend/MetadataProcessor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/backend/MetadataProcessor$1;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/google/common/flogger/backend/MetadataProcessor;-><init>()V

    return-void
.end method

.method public static forScopeAndLogSite(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/backend/MetadataProcessor;
    .registers 4

    .line 92
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_e

    .line 94
    sget-object p0, Lcom/google/common/flogger/backend/MetadataProcessor;->EMPTY_PROCESSOR:Lcom/google/common/flogger/backend/MetadataProcessor;

    return-object p0

    :cond_e
    const/16 v1, 0x1c

    if-gt v0, v1, :cond_17

    .line 96
    invoke-static {p0, p1}, Lcom/google/common/flogger/backend/MetadataProcessor;->getLightweightProcessor(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/backend/MetadataProcessor;

    move-result-object p0

    return-object p0

    .line 98
    :cond_17
    invoke-static {p0, p1}, Lcom/google/common/flogger/backend/MetadataProcessor;->getSimpleProcessor(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/backend/MetadataProcessor;

    move-result-object p0

    return-object p0
.end method

.method static getLightweightProcessor(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/backend/MetadataProcessor;
    .registers 4

    .line 104
    new-instance v0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;-><init>(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/MetadataProcessor$1;)V

    return-object v0
.end method

.method static getSimpleProcessor(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/backend/MetadataProcessor;
    .registers 4

    .line 109
    new-instance v0, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;-><init>(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/MetadataProcessor$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract getSingleValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract handle(Lcom/google/common/flogger/MetadataKey;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "TC;>;TC;)V"
        }
    .end annotation
.end method

.method public abstract keyCount()I
.end method

.method public abstract keySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract process(Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "TC;>;TC;)V"
        }
    .end annotation
.end method
