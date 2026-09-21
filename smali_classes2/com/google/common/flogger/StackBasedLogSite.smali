.class final Lcom/google/common/flogger/StackBasedLogSite;
.super Lcom/google/common/flogger/LogSite;
.source "SourceFile"


# instance fields
.field private final stackElement:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Ljava/lang/StackTraceElement;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/google/common/flogger/LogSite;-><init>()V

    .line 46
    const-string v0, "stack element"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/StackTraceElement;

    iput-object p1, p0, Lcom/google/common/flogger/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 72
    instance-of v0, p1, Lcom/google/common/flogger/StackBasedLogSite;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/google/common/flogger/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    check-cast p1, Lcom/google/common/flogger/StackBasedLogSite;

    iget-object p1, p1, Lcom/google/common/flogger/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/google/common/flogger/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/google/common/flogger/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/google/common/flogger/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/google/common/flogger/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/google/common/flogger/StackBasedLogSite;->stackElement:Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->hashCode()I

    move-result p0

    return p0
.end method
