.class final Lcom/google/common/flogger/FluentLogger$Context;
.super Lcom/google/common/flogger/LogContext;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/flogger/FluentLogger$Api;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/FluentLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Context"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flogger/LogContext<",
        "Lcom/google/common/flogger/FluentLogger;",
        "Lcom/google/common/flogger/FluentLogger$Api;",
        ">;",
        "Lcom/google/common/flogger/FluentLogger$Api;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/flogger/FluentLogger;


# direct methods
.method private constructor <init>(Lcom/google/common/flogger/FluentLogger;Ljava/util/logging/Level;Z)V
    .registers 4

    .line 87
    iput-object p1, p0, Lcom/google/common/flogger/FluentLogger$Context;->this$0:Lcom/google/common/flogger/FluentLogger;

    .line 88
    invoke-direct {p0, p2, p3}, Lcom/google/common/flogger/LogContext;-><init>(Ljava/util/logging/Level;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/FluentLogger;Ljava/util/logging/Level;ZLcom/google/common/flogger/FluentLogger$1;)V
    .registers 5

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/flogger/FluentLogger$Context;-><init>(Lcom/google/common/flogger/FluentLogger;Ljava/util/logging/Level;Z)V

    return-void
.end method


# virtual methods
.method protected api()Lcom/google/common/flogger/FluentLogger$Api;
    .registers 1

    .line 0
    return-object p0
.end method

.method protected bridge synthetic api()Lcom/google/common/flogger/LoggingApi;
    .registers 1

    .line 86
    invoke-virtual {p0}, Lcom/google/common/flogger/FluentLogger$Context;->api()Lcom/google/common/flogger/FluentLogger$Api;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic getLogger()Lcom/google/common/flogger/AbstractLogger;
    .registers 1

    .line 86
    invoke-virtual {p0}, Lcom/google/common/flogger/FluentLogger$Context;->getLogger()Lcom/google/common/flogger/FluentLogger;

    move-result-object p0

    return-object p0
.end method

.method protected getLogger()Lcom/google/common/flogger/FluentLogger;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/google/common/flogger/FluentLogger$Context;->this$0:Lcom/google/common/flogger/FluentLogger;

    return-object p0
.end method

.method protected getMessageParser()Lcom/google/common/flogger/parser/MessageParser;
    .registers 1

    .line 108
    invoke-static {}, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;->getInstance()Lcom/google/common/flogger/parser/PrintfMessageParser;

    move-result-object p0

    return-object p0
.end method

.method protected noOp()Lcom/google/common/flogger/FluentLogger$Api;
    .registers 1

    .line 103
    sget-object p0, Lcom/google/common/flogger/FluentLogger;->NO_OP:Lcom/google/common/flogger/FluentLogger$NoOp;

    return-object p0
.end method

.method protected bridge synthetic noOp()Lcom/google/common/flogger/LoggingApi;
    .registers 1

    .line 86
    invoke-virtual {p0}, Lcom/google/common/flogger/FluentLogger$Context;->noOp()Lcom/google/common/flogger/FluentLogger$Api;

    move-result-object p0

    return-object p0
.end method
