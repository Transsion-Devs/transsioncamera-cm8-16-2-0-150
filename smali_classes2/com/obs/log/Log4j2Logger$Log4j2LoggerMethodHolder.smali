.class Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;
.super Lcom/obs/log/LoggerMethodHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/log/Log4j2Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Log4j2LoggerMethodHolder"
.end annotation


# static fields
.field private static isDebug:Ljava/lang/reflect/Method;

.field private static isError:Ljava/lang/reflect/Method;

.field private static isInfo:Ljava/lang/reflect/Method;

.field private static isTrace:Ljava/lang/reflect/Method;

.field private static isWarn:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    :try_start_0
    sget-object v0, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    if-eqz v0, :cond_35

    .line 34
    const-string v1, "isInfoEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isInfo:Ljava/lang/reflect/Method;

    .line 35
    sget-object v0, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    const-string v1, "isDebugEnabled"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isDebug:Ljava/lang/reflect/Method;

    .line 36
    sget-object v0, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    const-string v1, "isErrorEnabled"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isError:Ljava/lang/reflect/Method;

    .line 37
    sget-object v0, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    const-string v1, "isWarnEnabled"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isWarn:Ljava/lang/reflect/Method;

    .line 38
    sget-object v0, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    const-string v1, "isTraceEnabled"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isTrace:Ljava/lang/reflect/Method;
    :try_end_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_35} :catch_36
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_35} :catch_36

    :cond_35
    return-void

    :catch_36
    move-exception v0

    .line 41
    # getter for: Lcom/obs/log/Log4j2Logger;->ILOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/obs/log/Log4j2Logger;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/obs/log/LoggerMethodHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .registers 1

    .line 24
    sget-object v0, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isInfo:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Method;
    .registers 1

    .line 24
    sget-object v0, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isWarn:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/reflect/Method;
    .registers 1

    .line 24
    sget-object v0, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isError:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .registers 1

    .line 24
    sget-object v0, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isDebug:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/reflect/Method;
    .registers 1

    .line 24
    sget-object v0, Lcom/obs/log/Log4j2Logger$Log4j2LoggerMethodHolder;->isTrace:Ljava/lang/reflect/Method;

    return-object v0
.end method
