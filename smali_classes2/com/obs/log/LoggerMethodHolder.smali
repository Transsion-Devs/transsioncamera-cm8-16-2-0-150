.class public Lcom/obs/log/LoggerMethodHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ILOG:Ljava/util/logging/Logger;

.field static debug:Ljava/lang/reflect/Method;

.field static error:Ljava/lang/reflect/Method;

.field static info:Ljava/lang/reflect/Method;

.field static trace:Ljava/lang/reflect/Method;

.field static warn:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 21
    const-class v0, Ljava/lang/Throwable;

    const-class v1, Ljava/lang/Object;

    const-class v2, Lcom/obs/log/LoggerMethodHolder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lcom/obs/log/LoggerMethodHolder;->ILOG:Ljava/util/logging/Logger;

    .line 35
    :try_start_10
    sget-object v2, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    if-eqz v2, :cond_58

    .line 36
    const-string v3, "info"

    filled-new-array {v1, v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/obs/log/LoggerMethodHolder;->info:Ljava/lang/reflect/Method;

    .line 37
    sget-object v2, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    const-string v3, "warn"

    filled-new-array {v1, v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/obs/log/LoggerMethodHolder;->warn:Ljava/lang/reflect/Method;

    .line 38
    sget-object v2, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    const-string v3, "error"

    filled-new-array {v1, v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/obs/log/LoggerMethodHolder;->error:Ljava/lang/reflect/Method;

    .line 39
    sget-object v2, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    const-string v3, "debug"

    filled-new-array {v1, v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/obs/log/LoggerMethodHolder;->debug:Ljava/lang/reflect/Method;

    .line 40
    sget-object v2, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    const-string v3, "trace"

    filled-new-array {v1, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/obs/log/LoggerMethodHolder;->trace:Ljava/lang/reflect/Method;
    :try_end_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_58} :catch_59
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_58} :catch_59

    :cond_58
    return-void

    :catch_59
    move-exception v0

    .line 43
    sget-object v1, Lcom/obs/log/LoggerMethodHolder;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
