.class public final Lcom/google/common/flogger/backend/MetadataKeyValueHandlers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMIT_METADATA:Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler<",
            "Ljava/lang/Object;",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMIT_REPEATED_METADATA:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler<",
            "Ljava/lang/Object;",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers$1;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers;->EMIT_METADATA:Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;

    .line 40
    new-instance v0, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers$2;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers$2;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers;->EMIT_REPEATED_METADATA:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultBuilder(Ljava/util/Set;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;)",
            "Lcom/google/common/flogger/backend/MetadataHandler$Builder<",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers;->getDefaultValueHandler()Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/flogger/backend/MetadataHandler;->builder(Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers;->getDefaultRepeatedValueHandler()Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->setDefaultRepeatedHandler(Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->ignoring(Ljava/lang/Iterable;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultHandler(Ljava/util/Set;)Lcom/google/common/flogger/backend/MetadataHandler;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;)",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers;->getDefaultBuilder(Ljava/util/Set;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;->build()Lcom/google/common/flogger/backend/MetadataHandler;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultRepeatedValueHandler()Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler<",
            "Ljava/lang/Object;",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ">;"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers;->EMIT_REPEATED_METADATA:Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;

    return-object v0
.end method

.method public static getDefaultValueHandler()Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler<",
            "Ljava/lang/Object;",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers;->EMIT_METADATA:Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;

    return-object v0
.end method
