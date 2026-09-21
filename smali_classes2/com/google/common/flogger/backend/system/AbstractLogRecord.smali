.class public abstract Lcom/google/common/flogger/backend/system/AbstractLogRecord;
.super Ljava/util/logging/LogRecord;
.source "SourceFile"


# static fields
.field private static final NO_PARAMETERS:[Ljava/lang/Object;

.field private static final jdkMessageFormatter:Ljava/util/logging/Formatter;


# instance fields
.field private final data:Lcom/google/common/flogger/backend/LogData;

.field private final metadata:Lcom/google/common/flogger/backend/MetadataProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Lcom/google/common/flogger/backend/system/AbstractLogRecord$1;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->jdkMessageFormatter:Ljava/util/logging/Formatter;

    const/4 v0, 0x0

    .line 106
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->NO_PARAMETERS:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/Metadata;)V
    .registers 5

    .line 117
    invoke-interface {p1}, Lcom/google/common/flogger/backend/LogData;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->data:Lcom/google/common/flogger/backend/LogData;

    .line 119
    invoke-interface {p1}, Lcom/google/common/flogger/backend/LogData;->getMetadata()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/flogger/backend/MetadataProcessor;->forScopeAndLogSite(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)Lcom/google/common/flogger/backend/MetadataProcessor;

    move-result-object p2

    iput-object p2, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->metadata:Lcom/google/common/flogger/backend/MetadataProcessor;

    .line 122
    invoke-interface {p1}, Lcom/google/common/flogger/backend/LogData;->getLogSite()Lcom/google/common/flogger/LogSite;

    move-result-object p2

    .line 123
    invoke-virtual {p2}, Lcom/google/common/flogger/LogSite;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Lcom/google/common/flogger/LogSite;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 125
    invoke-interface {p1}, Lcom/google/common/flogger/backend/LogData;->getLoggerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 126
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1}, Lcom/google/common/flogger/backend/LogData;->getTimestampNanos()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/util/logging/LogRecord;->setMillis(J)V

    .line 132
    sget-object p1, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->NO_PARAMETERS:[Ljava/lang/Object;

    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/RuntimeException;Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/Metadata;)V
    .registers 6

    .line 141
    invoke-direct {p0, p2, p3}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;-><init>(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/Metadata;)V

    .line 143
    invoke-interface {p2}, Lcom/google/common/flogger/backend/LogData;->getLevel()Ljava/util/logging/Level;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/logging/Level;->intValue()I

    move-result p3

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-ge p3, v1, :cond_14

    goto :goto_18

    :cond_14
    invoke-interface {p2}, Lcom/google/common/flogger/backend/LogData;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    :goto_18
    invoke-virtual {p0, v0}, Ljava/util/logging/LogRecord;->setLevel(Ljava/util/logging/Level;)V

    .line 144
    invoke-virtual {p0, p1}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 145
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "LOGGING ERROR: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    invoke-static {p2, p3}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->safeAppend(Lcom/google/common/flogger/backend/LogData;Ljava/lang/StringBuilder;)V

    .line 148
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method private static safeAppend(Lcom/google/common/flogger/backend/LogData;Ljava/lang/StringBuilder;)V
    .registers 8

    .line 317
    const-string v0, "  original message: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getTemplateContext()Lcom/google/common/flogger/backend/TemplateContext;

    move-result-object v0

    const-string v1, "\n    "

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 319
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLiteralArgument()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 322
    :cond_1a
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getTemplateContext()Lcom/google/common/flogger/backend/TemplateContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/backend/TemplateContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v0, "\n  original arguments:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_30
    if-ge v4, v3, :cond_41

    aget-object v5, v0, v4

    .line 325
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 328
    :cond_41
    :goto_41
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getMetadata()Lcom/google/common/flogger/backend/Metadata;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v3

    if-lez v3, :cond_77

    .line 330
    const-string v3, "\n  metadata:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :goto_50
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v3

    if-ge v2, v3, :cond_77

    .line 332
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0, v2}, Lcom/google/common/flogger/backend/Metadata;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/flogger/MetadataKey;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    .line 334
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0, v2}, Lcom/google/common/flogger/backend/Metadata;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 338
    :cond_77
    const-string v0, "\n  level: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v0, "\n  timestamp (nanos): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getTimestampNanos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 340
    const-string v0, "\n  class: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLogSite()Lcom/google/common/flogger/LogSite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/LogSite;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v0, "\n  method: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLogSite()Lcom/google/common/flogger/LogSite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flogger/LogSite;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v0, "\n  line number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLogSite()Lcom/google/common/flogger/LogSite;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/flogger/LogSite;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final appendFormattedMessageTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    .line 213
    invoke-super {p0}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 222
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getLogMessageFormatter()Lcom/google/common/flogger/backend/LogMessageFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->data:Lcom/google/common/flogger/backend/LogData;

    iget-object p0, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->metadata:Lcom/google/common/flogger/backend/MetadataProcessor;

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/common/flogger/backend/LogMessageFormatter;->append(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-object p1

    .line 223
    :cond_12
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1d

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    .line 230
    :cond_1d
    sget-object v0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->jdkMessageFormatter:Ljava/util/logging/Formatter;

    invoke-virtual {v0, p0}, Ljava/util/logging/Formatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final getFormattedMessage()Ljava/lang/String;
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_c

    .line 244
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 246
    :cond_c
    sget-object v0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->jdkMessageFormatter:Ljava/util/logging/Formatter;

    invoke-virtual {v0, p0}, Ljava/util/logging/Formatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLogData()Lcom/google/common/flogger/backend/LogData;
    .registers 1

    .line 289
    iget-object p0, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->data:Lcom/google/common/flogger/backend/LogData;

    return-object p0
.end method

.method protected getLogMessageFormatter()Lcom/google/common/flogger/backend/LogMessageFormatter;
    .registers 1

    .line 157
    invoke-static {}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->getDefaultFormatter()Lcom/google/common/flogger/backend/LogMessageFormatter;

    move-result-object p0

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 4

    .line 189
    invoke-super {p0}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 193
    :cond_7
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getLogMessageFormatter()Lcom/google/common/flogger/backend/LogMessageFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->data:Lcom/google/common/flogger/backend/LogData;

    iget-object v2, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->metadata:Lcom/google/common/flogger/backend/MetadataProcessor;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/flogger/backend/LogMessageFormatter;->format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-super {p0, v0}, Ljava/util/logging/LogRecord;->setMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMetadataProcessor()Lcom/google/common/flogger/backend/MetadataProcessor;
    .registers 1

    .line 298
    iget-object p0, p0, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->metadata:Lcom/google/common/flogger/backend/MetadataProcessor;

    return-object p0
.end method

.method public final getParameters()[Ljava/lang/Object;
    .registers 1

    .line 176
    invoke-super {p0}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_4

    .line 182
    const-string p1, ""

    .line 184
    :cond_4
    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final setParameters([Ljava/lang/Object;)V
    .registers 2

    .line 165
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getMessage()Ljava/lang/String;

    if-nez p1, :cond_7

    .line 168
    sget-object p1, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->NO_PARAMETERS:[Ljava/lang/Object;

    .line 170
    :cond_7
    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    return-void
.end method

.method public final setResourceBundle(Ljava/util/ResourceBundle;)V
    .registers 2

    return-void
.end method

.method public final setResourceBundleName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final toMutableLogRecord()Ljava/util/logging/LogRecord;
    .registers 4

    .line 267
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-virtual {p0}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getFormattedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 268
    sget-object v1, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->NO_PARAMETERS:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p0}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/LogRecord;->setMillis(J)V

    .line 273
    invoke-virtual {p0}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 278
    invoke-virtual {p0}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/logging/LogRecord;->setThreadID(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {\n  message: "

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  arguments: "

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_32

    :cond_30
    const-string v1, "<none>"

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->getLogData()Lcom/google/common/flogger/backend/LogData;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/flogger/backend/system/AbstractLogRecord;->safeAppend(Lcom/google/common/flogger/backend/LogData;Ljava/lang/StringBuilder;)V

    .line 312
    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
