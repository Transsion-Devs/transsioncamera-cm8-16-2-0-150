.class public final Lcom/google/common/flogger/backend/SimpleMessageFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/backend/SimpleMessageFormatter$SimpleLogHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMATTER:Lcom/google/common/flogger/backend/LogMessageFormatter;

.field private static final DEFAULT_KEYS_TO_IGNORE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    sget-object v0, Lcom/google/common/flogger/LogContext$Key;->LOG_CAUSE:Lcom/google/common/flogger/MetadataKey;

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->DEFAULT_KEYS_TO_IGNORE:Ljava/util/Set;

    .line 59
    invoke-static {v0}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->newFormatter(Ljava/util/Set;)Lcom/google/common/flogger/backend/LogMessageFormatter;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->DEFAULT_FORMATTER:Lcom/google/common/flogger/backend/LogMessageFormatter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendContext(Lcom/google/common/flogger/backend/MetadataProcessor;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/backend/MetadataProcessor;",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/google/common/flogger/backend/KeyValueFormatter;

    const-string v1, "[CONTEXT "

    const-string v2, " ]"

    invoke-direct {v0, v1, v2, p2}, Lcom/google/common/flogger/backend/KeyValueFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/google/common/flogger/backend/MetadataProcessor;->process(Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/KeyValueFormatter;->done()V

    return-object p2
.end method

.method public static format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/SimpleMessageFormatter$SimpleLogHandler;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    invoke-static {}, Lcom/google/common/flogger/backend/Metadata;->empty()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getMetadata()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/flogger/backend/MetadataProcessor;->forScopeAndLogSite(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/backend/MetadataProcessor;

    move-result-object v0

    .line 217
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    .line 218
    invoke-static {}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->getDefaultFormatter()Lcom/google/common/flogger/backend/LogMessageFormatter;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/google/common/flogger/backend/LogMessageFormatter;->format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/google/common/flogger/LogContext$Key;->LOG_CAUSE:Lcom/google/common/flogger/MetadataKey;

    .line 219
    invoke-virtual {v0, v2}, Lcom/google/common/flogger/backend/MetadataProcessor;->getSingleValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 216
    invoke-interface {p1, v1, p0, v0}, Lcom/google/common/flogger/backend/SimpleMessageFormatter$SimpleLogHandler;->handleFormattedLogMessage(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getDefaultFormatter()Lcom/google/common/flogger/backend/LogMessageFormatter;
    .registers 1

    .line 77
    sget-object v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->DEFAULT_FORMATTER:Lcom/google/common/flogger/backend/LogMessageFormatter;

    return-object v0
.end method

.method public static getLiteralLogMessage(Lcom/google/common/flogger/backend/LogData;)Ljava/lang/String;
    .registers 1

    .line 147
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLiteralArgument()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getSimpleFormatterIgnoring([Lcom/google/common/flogger/MetadataKey;)Lcom/google/common/flogger/backend/LogMessageFormatter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;)",
            "Lcom/google/common/flogger/backend/LogMessageFormatter;"
        }
    .end annotation

    .line 98
    array-length v0, p0

    if-nez v0, :cond_8

    .line 99
    invoke-static {}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->getDefaultFormatter()Lcom/google/common/flogger/backend/LogMessageFormatter;

    move-result-object p0

    return-object p0

    .line 101
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->DEFAULT_KEYS_TO_IGNORE:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 102
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 103
    invoke-static {v0}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->newFormatter(Ljava/util/Set;)Lcom/google/common/flogger/backend/LogMessageFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static mustBeFormatted(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/backend/LogData;",
            "Lcom/google/common/flogger/backend/MetadataProcessor;",
            "Ljava/util/Set<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;)Z"
        }
    .end annotation

    .line 175
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getTemplateContext()Lcom/google/common/flogger/backend/TemplateContext;

    move-result-object p0

    if-nez p0, :cond_1d

    .line 176
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/MetadataProcessor;->keyCount()I

    move-result p0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-gt p0, v0, :cond_1d

    .line 177
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/MetadataProcessor;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method private static newFormatter(Ljava/util/Set;)Lcom/google/common/flogger/backend/LogMessageFormatter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;)",
            "Lcom/google/common/flogger/backend/LogMessageFormatter;"
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$1;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/backend/SimpleMessageFormatter$1;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
