.class public Lcom/obs/log/Log4j2Logger;
.super Lcom/obs/log/AbstractLog4jLogger;
.source "SourceFile"

# interfaces
.implements Lcom/obs/log/ILogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;
    }
.end annotation


# static fields
.field private static final ILOG:Ljava/util/logging/Logger;


# instance fields
.field private volatile isDebugE:I

.field private volatile isErrorE:I

.field private volatile isInfoE:I

.field private volatile isTraceE:I

.field private volatile isWarnE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/obs/log/Log4j2Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4j2Logger;->ILOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/obs/log/AbstractLog4jLogger;-><init>(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/obs/log/Log4j2Logger;->isInfoE:I

    .line 47
    iput p1, p0, Lcom/obs/log/Log4j2Logger;->isDebugE:I

    .line 48
    iput p1, p0, Lcom/obs/log/Log4j2Logger;->isErrorE:I

    .line 49
    iput p1, p0, Lcom/obs/log/Log4j2Logger;->isWarnE:I

    .line 50
    iput p1, p0, Lcom/obs/log/Log4j2Logger;->isTraceE:I

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .registers 1

    .line 21
    sget-object v0, Lcom/obs/log/Log4j2Logger;->ILOG:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public isDebugEnabled()Z
    .registers 6

    .line 97
    iget v0, p0, Lcom/obs/log/Log4j2Logger;->isDebugE:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2c

    .line 99
    :try_start_7
    iget-object v0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz v0, :cond_26

    # getter for: Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isDebug:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->access$400()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 100
    # getter for: Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isDebug:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->access$400()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    iput v0, p0, Lcom/obs/log/Log4j2Logger;->isDebugE:I
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_29} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_29} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_29} :catch_2a

    goto :goto_2c

    .line 102
    :catch_2a
    iput v2, p0, Lcom/obs/log/Log4j2Logger;->isDebugE:I

    .line 105
    :cond_2c
    :goto_2c
    iget p0, p0, Lcom/obs/log/Log4j2Logger;->isDebugE:I

    if-ne p0, v3, :cond_31

    move v2, v3

    :cond_31
    return v2
.end method

.method public isErrorEnabled()Z
    .registers 6

    .line 84
    iget v0, p0, Lcom/obs/log/Log4j2Logger;->isErrorE:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2c

    .line 86
    :try_start_7
    iget-object v0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz v0, :cond_26

    # getter for: Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isError:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->access$300()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 87
    # getter for: Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isError:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->access$300()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    iput v0, p0, Lcom/obs/log/Log4j2Logger;->isErrorE:I
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_29} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_29} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_29} :catch_2a

    goto :goto_2c

    .line 89
    :catch_2a
    iput v2, p0, Lcom/obs/log/Log4j2Logger;->isErrorE:I

    .line 92
    :cond_2c
    :goto_2c
    iget p0, p0, Lcom/obs/log/Log4j2Logger;->isErrorE:I

    if-ne p0, v3, :cond_31

    move v2, v3

    :cond_31
    return v2
.end method

.method public isInfoEnabled()Z
    .registers 6

    .line 58
    iget v0, p0, Lcom/obs/log/Log4j2Logger;->isInfoE:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2c

    .line 60
    :try_start_7
    iget-object v0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz v0, :cond_26

    # getter for: Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isInfo:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->access$100()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 61
    # getter for: Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isInfo:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->access$100()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    iput v0, p0, Lcom/obs/log/Log4j2Logger;->isInfoE:I
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_29} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_29} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_29} :catch_2a

    goto :goto_2c

    .line 63
    :catch_2a
    iput v2, p0, Lcom/obs/log/Log4j2Logger;->isInfoE:I

    .line 66
    :cond_2c
    :goto_2c
    iget p0, p0, Lcom/obs/log/Log4j2Logger;->isInfoE:I

    if-ne p0, v3, :cond_31

    move v2, v3

    :cond_31
    return v2
.end method

.method public isTraceEnabled()Z
    .registers 6

    .line 110
    iget v0, p0, Lcom/obs/log/Log4j2Logger;->isTraceE:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2c

    .line 112
    :try_start_7
    iget-object v0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz v0, :cond_26

    # getter for: Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isTrace:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->access$500()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 113
    # getter for: Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isTrace:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->access$500()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    iput v0, p0, Lcom/obs/log/Log4j2Logger;->isTraceE:I
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_29} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_29} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_29} :catch_2a

    goto :goto_2c

    .line 115
    :catch_2a
    iput v2, p0, Lcom/obs/log/Log4j2Logger;->isTraceE:I

    .line 118
    :cond_2c
    :goto_2c
    iget p0, p0, Lcom/obs/log/Log4j2Logger;->isTraceE:I

    if-ne p0, v3, :cond_31

    move v2, v3

    :cond_31
    return v2
.end method

.method public isWarnEnabled()Z
    .registers 6

    .line 71
    iget v0, p0, Lcom/obs/log/Log4j2Logger;->isWarnE:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2c

    .line 73
    :try_start_7
    iget-object v0, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    if-eqz v0, :cond_26

    # getter for: Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isWarn:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->access$200()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 74
    # getter for: Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isWarn:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->access$200()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/log/AbstractLog4jLogger;->logger:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    iput v0, p0, Lcom/obs/log/Log4j2Logger;->isWarnE:I
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_29} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_29} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_29} :catch_2a

    goto :goto_2c

    .line 76
    :catch_2a
    iput v2, p0, Lcom/obs/log/Log4j2Logger;->isWarnE:I

    .line 79
    :cond_2c
    :goto_2c
    iget p0, p0, Lcom/obs/log/Log4j2Logger;->isWarnE:I

    if-ne p0, v3, :cond_31

    move v2, v3

    :cond_31
    return v2
.end method
