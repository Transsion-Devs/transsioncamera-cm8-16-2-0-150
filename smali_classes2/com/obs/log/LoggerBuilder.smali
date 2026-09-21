.class public Lcom/obs/log/LoggerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/log/LoggerBuilder$GetLoggerHolder;
    }
.end annotation


# static fields
.field private static final ILOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/obs/log/LoggerBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/obs/log/LoggerBuilder;->ILOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .registers 1

    .line 19
    sget-object v0, Lcom/obs/log/LoggerBuilder;->ILOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/obs/log/ILogger;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/obs/log/ILogger;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/String;)Lcom/obs/log/ILogger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/obs/log/ILogger;
    .registers 4

    .line 52
    sget-object v0, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->getLoggerClass:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 54
    :try_start_5
    new-instance v2, Lcom/obs/log/Logger;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/obs/log/Logger;-><init>(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    return-object v2

    :catch_13
    move-exception p0

    .line 56
    sget-object v0, Lcom/obs/log/LoggerBuilder;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 59
    :cond_1d
    new-instance p0, Lcom/obs/log/Logger;

    invoke-direct {p0, v1}, Lcom/obs/log/Logger;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
