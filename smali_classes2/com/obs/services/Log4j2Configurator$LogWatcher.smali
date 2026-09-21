.class Lcom/obs/services/Log4j2Configurator$LogWatcher;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/Log4j2Configurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogWatcher"
.end annotation


# instance fields
.field private configPath:Ljava/lang/String;

.field private ctx:Ljava/lang/Object;

.field private watchInterval:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;J)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/obs/services/Log4j2Configurator$LogWatcher;->configPath:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/obs/services/Log4j2Configurator$LogWatcher;->ctx:Ljava/lang/Object;

    .line 94
    iput-wide p3, p0, Lcom/obs/services/Log4j2Configurator$LogWatcher;->watchInterval:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 100
    :try_start_0
    const-string v0, "org.apache.logging.log4j.core.config.Configuration"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/obs/services/Log4j2Configurator$LogWatcher;->ctx:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stop"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/obs/services/Log4j2Configurator$LogWatcher;->ctx:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "start"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 103
    const-string v2, "org.apache.logging.log4j.core.config.xml.XmlConfiguration"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 104
    const-string v4, "org.apache.logging.log4j.core.config.ConfigurationSource"

    .line 105
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 106
    const-class v5, Ljava/io/InputStream;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 107
    iget-object v6, p0, Lcom/obs/services/Log4j2Configurator$LogWatcher;->ctx:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v6, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 110
    :goto_47
    iget-wide v6, p0, Lcom/obs/services/Log4j2Configurator$LogWatcher;->watchInterval:J

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 111
    iget-object v4, p0, Lcom/obs/services/Log4j2Configurator$LogWatcher;->ctx:Ljava/lang/Object;

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v4, p0, Lcom/obs/services/Log4j2Configurator$LogWatcher;->ctx:Ljava/lang/Object;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/obs/services/Log4j2Configurator$LogWatcher;->configPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 112
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_71} :catch_72
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_71} :catch_72
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_71} :catch_72
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_71} :catch_72
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_71} :catch_72
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_71} :catch_72
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_71} :catch_72
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_71} :catch_72

    goto :goto_47

    :catch_72
    move-exception p0

    .line 118
    # getter for: Lcom/obs/services/Log4j2Configurator;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/obs/services/Log4j2Configurator;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method
