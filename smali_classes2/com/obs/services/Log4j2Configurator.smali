.class public Lcom/obs/services/Log4j2Configurator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/Log4j2Configurator$LogWatcher;
    }
.end annotation


# static fields
.field private static volatile isWatchStart:Z = false

.field private static volatile log4j2Enabled:Z = false

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/obs/services/Log4j2Configurator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/Log4j2Configurator;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .registers 1

    .line 30
    sget-object v0, Lcom/obs/services/Log4j2Configurator;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static getLogContext(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    .line 64
    :try_start_1
    const-string v1, "org.apache.logging.log4j.core.config.ConfigurationSource"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 65
    const-string v2, "org.apache.logging.log4j.core.config.Configurator"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 66
    const-class v3, Ljava/io/InputStream;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 67
    const-string v4, "initialize"

    const-class v5, Ljava/lang/ClassLoader;

    filled-new-array {v5, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 69
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_28} :catch_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_28} :catch_4e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_28} :catch_4e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_28} :catch_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_28} :catch_4e
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_28} :catch_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_28} :catch_4e
    .catchall {:try_start_1 .. :try_end_28} :catchall_4c

    .line 70
    :try_start_28
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_38} :catch_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_28 .. :try_end_38} :catch_4a
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_38} :catch_4a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_38} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_38} :catch_4a
    .catch Ljava/lang/InstantiationException; {:try_start_28 .. :try_end_38} :catch_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_38} :catch_4a
    .catchall {:try_start_28 .. :try_end_38} :catchall_47

    .line 77
    :goto_38
    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_5c

    :catch_3c
    move-exception p0

    .line 79
    sget-object v1, Lcom/obs/services/Log4j2Configurator;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_5c

    :catchall_47
    move-exception p0

    move-object v0, v2

    goto :goto_5d

    :catch_4a
    move-exception p0

    goto :goto_50

    :catchall_4c
    move-exception p0

    goto :goto_5d

    :catch_4e
    move-exception p0

    move-object v2, v0

    .line 73
    :goto_50
    :try_start_50
    sget-object v1, Lcom/obs/services/Log4j2Configurator;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_47

    if-eqz v2, :cond_5c

    goto :goto_38

    :cond_5c
    :goto_5c
    return-object v0

    :goto_5d
    if-eqz v0, :cond_6d

    .line 77
    :try_start_5f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_6d

    :catch_63
    move-exception v0

    .line 79
    sget-object v1, Lcom/obs/services/Log4j2Configurator;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 82
    :cond_6d
    :goto_6d
    throw p0
.end method

.method public static declared-synchronized setLogConfig(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/obs/services/Log4j2Configurator;

    monitor-enter v0

    const/4 v1, 0x0

    .line 45
    :try_start_4
    invoke-static {p0, v1}, Lcom/obs/services/Log4j2Configurator;->setLogConfig(Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 46
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p0
.end method

.method public static declared-synchronized setLogConfig(Ljava/lang/String;Z)V
    .registers 5

    const-class v0, Lcom/obs/services/Log4j2Configurator;

    monitor-enter v0

    const-wide/32 v1, 0xea60

    .line 57
    :try_start_6
    invoke-static {p0, p1, v1, v2}, Lcom/obs/services/Log4j2Configurator;->setLogConfig(Ljava/lang/String;ZJ)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b

    .line 58
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static declared-synchronized setLogConfig(Ljava/lang/String;ZJ)V
    .registers 9

    const-class v0, Lcom/obs/services/Log4j2Configurator;

    monitor-enter v0

    .line 135
    :try_start_3
    sget-boolean v1, Lcom/obs/services/Log4j2Configurator;->log4j2Enabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-eqz v1, :cond_9

    .line 136
    monitor-exit v0

    return-void

    .line 138
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/obs/services/Log4j2Configurator;->getLogContext(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p1, :cond_3a

    if-eqz v1, :cond_3a

    .line 139
    sget-boolean p1, Lcom/obs/services/Log4j2Configurator;->isWatchStart:Z
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_2e

    if-nez p1, :cond_3a

    .line 141
    :try_start_16
    sput-boolean v2, Lcom/obs/services/Log4j2Configurator;->isWatchStart:Z

    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-lez p1, :cond_1f

    goto :goto_22

    :cond_1f
    const-wide/32 p2, 0xea60

    .line 143
    :goto_22
    new-instance p1, Lcom/obs/services/Log4j2Configurator$LogWatcher;

    invoke-direct {p1, p0, v1, p2, p3}, Lcom/obs/services/Log4j2Configurator$LogWatcher;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 144
    invoke-virtual {p1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 145
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2d} :catch_30
    .catchall {:try_start_16 .. :try_end_2d} :catchall_2e

    goto :goto_3a

    :catchall_2e
    move-exception p0

    goto :goto_3e

    :catch_30
    move-exception p0

    .line 147
    :try_start_31
    sget-object p1, Lcom/obs/services/Log4j2Configurator;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 150
    :cond_3a
    :goto_3a
    sput-boolean v2, Lcom/obs/services/Log4j2Configurator;->log4j2Enabled:Z
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_2e

    .line 151
    monitor-exit v0

    return-void

    :goto_3e
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    throw p0
.end method
