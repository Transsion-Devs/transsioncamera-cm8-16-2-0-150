.class public Lcom/obs/log/Log4jLogger;
.super Lcom/obs/log/AbstractLog4jLogger;
.source "SourceFile"

# interfaces
.implements Lcom/obs/log/ILogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;
    }
.end annotation


# static fields
.field private static final ILOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/obs/log/Log4jLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4jLogger;->ILOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/obs/log/AbstractLog4jLogger;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .registers 1

    .line 21
    sget-object v0, Lcom/obs/log/Log4jLogger;->ILOG:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public isDebugEnabled()Z
    .registers 4

    const/4 v0, 0x0

    .line 96
    :try_start_1
    iget-object v1, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz v1, :cond_27

    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->debugLevel:Ljava/lang/Object;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$500()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 97
    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->isEnabledFor:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$200()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    .line 98
    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->debugLevel:Ljava/lang/Object;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$500()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 97
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_23} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_23} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_23} :catch_27

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    return p0

    :catch_27
    :cond_27
    return v0
.end method

.method public isErrorEnabled()Z
    .registers 4

    const/4 v0, 0x0

    .line 85
    :try_start_1
    iget-object v1, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz v1, :cond_27

    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->errorLevel:Ljava/lang/Object;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$400()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 86
    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->isEnabledFor:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$200()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    .line 87
    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->errorLevel:Ljava/lang/Object;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$400()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 86
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_23} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_23} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_23} :catch_27

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    return p0

    :catch_27
    :cond_27
    return v0
.end method

.method public isInfoEnabled()Z
    .registers 4

    const/4 v0, 0x0

    .line 63
    :try_start_1
    iget-object v1, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz v1, :cond_27

    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->infoLevel:Ljava/lang/Object;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$100()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 64
    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->isEnabledFor:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$200()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    .line 65
    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->infoLevel:Ljava/lang/Object;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$100()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 64
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_23} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_23} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_23} :catch_27

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    return p0

    :catch_27
    :cond_27
    return v0
.end method

.method public isTraceEnabled()Z
    .registers 4

    const/4 v0, 0x0

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz v1, :cond_27

    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->traceLevel:Ljava/lang/Object;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$600()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 108
    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->isEnabledFor:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$200()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    .line 109
    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->traceLevel:Ljava/lang/Object;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$600()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 108
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_23} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_23} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_23} :catch_27

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    return p0

    :catch_27
    :cond_27
    return v0
.end method

.method public isWarnEnabled()Z
    .registers 4

    const/4 v0, 0x0

    .line 74
    :try_start_1
    iget-object v1, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz v1, :cond_27

    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->warnLevel:Ljava/lang/Object;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$300()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 75
    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->isEnabledFor:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$200()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    .line 76
    # getter for: Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->warnLevel:Ljava/lang/Object;
    invoke-static {}, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->access$300()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 75
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_23} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_23} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_23} :catch_27

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    return p0

    :catch_27
    :cond_27
    return v0
.end method
