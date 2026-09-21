.class Lcom/google/common/flogger/backend/SimpleMessageFormatter$1;
.super Lcom/google/common/flogger/backend/LogMessageFormatter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flogger/backend/SimpleMessageFormatter;->newFormatter(Ljava/util/Set;)Lcom/google/common/flogger/backend/LogMessageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final handler:Lcom/google/common/flogger/backend/MetadataHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$keysToIgnore:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$1;->val$keysToIgnore:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/flogger/backend/LogMessageFormatter;-><init>()V

    .line 187
    invoke-static {p1}, Lcom/google/common/flogger/backend/MetadataKeyValueHandlers;->getDefaultHandler(Ljava/util/Set;)Lcom/google/common/flogger/backend/MetadataHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$1;->handler:Lcom/google/common/flogger/backend/MetadataHandler;

    return-void
.end method


# virtual methods
.method public append(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    .line 192
    invoke-static {p1, p3}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->appendFormattedMessage(Lcom/google/common/flogger/backend/LogData;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 193
    iget-object p0, p0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$1;->handler:Lcom/google/common/flogger/backend/MetadataHandler;

    invoke-static {p2, p0, p3}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->appendContext(Lcom/google/common/flogger/backend/MetadataProcessor;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public format(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;)Ljava/lang/String;
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/google/common/flogger/backend/SimpleMessageFormatter$1;->val$keysToIgnore:Ljava/util/Set;

    invoke-static {p1, p2, v0}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->mustBeFormatted(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/flogger/backend/SimpleMessageFormatter$1;->append(Lcom/google/common/flogger/backend/LogData;Lcom/google/common/flogger/backend/MetadataProcessor;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 201
    :cond_16
    invoke-static {p1}, Lcom/google/common/flogger/backend/SimpleMessageFormatter;->getLiteralLogMessage(Lcom/google/common/flogger/backend/LogData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
