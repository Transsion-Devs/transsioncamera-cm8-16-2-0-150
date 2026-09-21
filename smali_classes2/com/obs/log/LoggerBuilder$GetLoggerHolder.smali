.class Lcom/obs/log/LoggerBuilder$GetLoggerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/log/LoggerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetLoggerHolder"
.end annotation


# static fields
.field static getLoggerClass:Ljava/lang/reflect/Method;

.field static logManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static loggerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 31
    const-class v0, Ljava/lang/String;

    const-string v1, "getLogger"

    :try_start_4
    const-string v2, "org.apache.logging.log4j.LogManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->logManagerClass:Ljava/lang/Class;

    .line 32
    const-string v2, "org.apache.logging.log4j.Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    .line 33
    sget-object v2, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->logManagerClass:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->getLoggerClass:Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_20} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_20} :catch_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_20} :catch_21
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_20} :catch_21

    return-void

    .line 36
    :catch_21
    :try_start_21
    const-string v2, "org.apache.log4j.Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    .line 37
    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->getLoggerClass:Ljava/lang/reflect/Method;
    :try_end_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_33} :catch_34
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_33} :catch_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_33} :catch_34
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_21 .. :try_end_33} :catch_34

    goto :goto_53

    .line 40
    :catch_34
    :try_start_34
    const-string v2, "java.util.logging.Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->loggerClass:Ljava/lang/Class;

    .line 41
    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/obs/log/LoggerBuilder$GetLoggerHolder;->getLoggerClass:Ljava/lang/reflect/Method;
    :try_end_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_34 .. :try_end_46} :catch_47
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_46} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_34 .. :try_end_46} :catch_47
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_34 .. :try_end_46} :catch_47

    goto :goto_53

    :catch_47
    move-exception v0

    .line 44
    # getter for: Lcom/obs/log/LoggerBuilder;->ILOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/obs/log/LoggerBuilder;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_53
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
