.class Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;
.super Lcom/obs/log/LoggerMethodHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/log/Log4jLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Log4jLoggerMethodHolder"
.end annotation


# static fields
.field private static debugLevel:Ljava/lang/Object;

.field private static errorLevel:Ljava/lang/Object;

.field private static infoLevel:Ljava/lang/Object;

.field private static isEnabledFor:Ljava/lang/reflect/Method;

.field private static level:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static priority:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static traceLevel:Ljava/lang/Object;

.field private static warnLevel:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 38
    :try_start_0
    sget-object v0, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    if-eqz v0, :cond_72

    .line 39
    const-string v0, "org.apache.log4j.Priority"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->priority:Ljava/lang/Class;

    .line 40
    sget-object v0, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    const-string v1, "isEnabledFor"

    sget-object v2, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->priority:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->isEnabledFor:Ljava/lang/reflect/Method;

    .line 42
    const-string v0, "org.apache.log4j.Level"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->level:Ljava/lang/Class;

    .line 43
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v1, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->level:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->infoLevel:Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->level:Ljava/lang/Class;

    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v1, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->level:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->debugLevel:Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->level:Ljava/lang/Class;

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v1, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->level:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->errorLevel:Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->level:Ljava/lang/Class;

    const-string v1, "WARN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v1, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->level:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->warnLevel:Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->level:Ljava/lang/Class;

    const-string v1, "TRACE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v1, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->level:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->traceLevel:Ljava/lang/Object;
    :try_end_72
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_72} :catch_73
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_72} :catch_73
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_72} :catch_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_72} :catch_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_72} :catch_73
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_72} :catch_73

    :cond_72
    return-void

    :catch_73
    move-exception v0

    .line 51
    # getter for: Lcom/obs/log/Log4jLogger;->ILOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/obs/log/Log4jLogger;->access$000()Ljava/util/logging/Logger;

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

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 24
    sget-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->infoLevel:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Method;
    .registers 1

    .line 24
    sget-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->isEnabledFor:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .registers 1

    .line 24
    sget-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->warnLevel:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .line 24
    sget-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->errorLevel:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .registers 1

    .line 24
    sget-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->debugLevel:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .registers 1

    .line 24
    sget-object v0, Lcom/obs/log/Log4jLogger$Log4jLoggerMethodHolder;->traceLevel:Ljava/lang/Object;

    return-object v0
.end method
