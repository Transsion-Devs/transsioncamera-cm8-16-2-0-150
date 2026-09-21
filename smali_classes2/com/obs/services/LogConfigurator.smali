.class public Lcom/obs/services/LogConfigurator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/LogConfigurator$AccessLog;,
        Lcom/obs/services/LogConfigurator$BaseLog;
    }
.end annotation


# static fields
.field public static final DEBUG:Ljava/util/logging/Level;

.field public static final ERROR:Ljava/util/logging/Level;

.field private static final ILOG:Ljava/util/logging/Logger;

.field public static final INFO:Ljava/util/logging/Level;

.field public static final OFF:Ljava/util/logging/Level;

.field public static final TRACE:Ljava/util/logging/Level;

.field public static final WARN:Ljava/util/logging/Level;

.field private static volatile accessLogEnabled:Z

.field private static volatile logEnabled:Z

.field private static logFileDir:Ljava/lang/String;

.field private static logFileRolloverCount:I

.field private static logFileSize:I

.field private static logLevel:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-string v0, "OFF"

    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    sput-object v0, Lcom/obs/services/LogConfigurator;->OFF:Ljava/util/logging/Level;

    .line 42
    const-string v0, "FINEST"

    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    sput-object v0, Lcom/obs/services/LogConfigurator;->TRACE:Ljava/util/logging/Level;

    .line 44
    const-string v0, "FINE"

    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    sput-object v0, Lcom/obs/services/LogConfigurator;->DEBUG:Ljava/util/logging/Level;

    .line 46
    const-string v0, "INFO"

    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    sput-object v0, Lcom/obs/services/LogConfigurator;->INFO:Ljava/util/logging/Level;

    .line 48
    const-string v0, "WARNING"

    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    sput-object v0, Lcom/obs/services/LogConfigurator;->WARN:Ljava/util/logging/Level;

    .line 50
    const-string v0, "SEVERE"

    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    sput-object v0, Lcom/obs/services/LogConfigurator;->ERROR:Ljava/util/logging/Level;

    .line 52
    const-class v0, Lcom/obs/services/LogConfigurator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/LogConfigurator;->ILOG:Ljava/util/logging/Logger;

    .line 55
    invoke-static {}, Lcom/obs/services/LogConfigurator;->disableLog()V

    .line 56
    invoke-static {}, Lcom/obs/services/LogConfigurator;->disableAccessLog()V

    const/high16 v0, 0x1e00000

    .line 63
    sput v0, Lcom/obs/services/LogConfigurator;->logFileSize:I

    const/16 v0, 0x32

    .line 65
    sput v0, Lcom/obs/services/LogConfigurator;->logFileRolloverCount:I

    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/obs/services/LogConfigurator;->logEnabled:Z

    .line 69
    sput-boolean v0, Lcom/obs/services/LogConfigurator;->accessLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFileHandler(Ljava/util/logging/Logger;Ljava/lang/String;)Ljava/util/logging/FileHandler;
    .registers 6

    .line 123
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/obs/services/LogConfigurator;->logFileDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_32

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_32

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_32

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/obs/services/LogConfigurator;->logFileDir:Ljava/lang/String;

    .line 131
    :cond_32
    new-instance v0, Ljava/util/logging/FileHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/obs/services/LogConfigurator;->logFileDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/obs/services/LogConfigurator;->logFileSize:I

    sget v2, Lcom/obs/services/LogConfigurator;->logFileRolloverCount:I

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    .line 132
    const-string p1, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/util/logging/Handler;->setEncoding(Ljava/lang/String;)V

    .line 133
    new-instance p1, Lcom/obs/services/LogConfigurator$1;

    invoke-direct {p1, p0}, Lcom/obs/services/LogConfigurator$1;-><init>(Ljava/util/logging/Logger;)V

    invoke-virtual {v0, p1}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    return-object v0
.end method

.method protected static declared-synchronized disableAccessLog()V
    .registers 2

    const-class v0, Lcom/obs/services/LogConfigurator;

    monitor-enter v0

    .line 202
    :try_start_3
    invoke-static {}, Lcom/obs/services/LogConfigurator$AccessLog;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/LogConfigurator;->logOff(Ljava/util/logging/Logger;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 203
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method protected static declared-synchronized disableLog()V
    .registers 2

    const-class v0, Lcom/obs/services/LogConfigurator;

    monitor-enter v0

    .line 191
    :try_start_3
    invoke-static {}, Lcom/obs/services/LogConfigurator$BaseLog;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/LogConfigurator;->logOff(Ljava/util/logging/Logger;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 192
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static declared-synchronized enableAccessLog()V
    .registers 3

    const-class v0, Lcom/obs/services/LogConfigurator;

    monitor-enter v0

    .line 195
    :try_start_3
    sget-boolean v1, Lcom/obs/services/LogConfigurator;->accessLogEnabled:Z

    if-eqz v1, :cond_11

    .line 196
    invoke-static {}, Lcom/obs/services/LogConfigurator$AccessLog;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/LogConfigurator;->logOff(Ljava/util/logging/Logger;)V

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_1c

    .line 198
    :cond_11
    :goto_11
    invoke-static {}, Lcom/obs/services/LogConfigurator$AccessLog;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "/OBS-SDK-access.log"

    invoke-static {v1, v2}, Lcom/obs/services/LogConfigurator;->logOn(Ljava/util/logging/Logger;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_f

    .line 199
    monitor-exit v0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_f

    throw v1
.end method

.method public static declared-synchronized enableLog()V
    .registers 3

    const-class v0, Lcom/obs/services/LogConfigurator;

    monitor-enter v0

    .line 181
    :try_start_3
    sget-boolean v1, Lcom/obs/services/LogConfigurator;->logEnabled:Z

    if-eqz v1, :cond_11

    .line 182
    invoke-static {}, Lcom/obs/services/LogConfigurator$BaseLog;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/LogConfigurator;->logOff(Ljava/util/logging/Logger;)V

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_1c

    .line 184
    :cond_11
    :goto_11
    invoke-static {}, Lcom/obs/services/LogConfigurator$BaseLog;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "/OBS-SDK.log"

    invoke-static {v1, v2}, Lcom/obs/services/LogConfigurator;->logOn(Ljava/util/logging/Logger;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_f

    .line 185
    monitor-exit v0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_f

    throw v1
.end method

.method private static getDefaultLogFileDir()Ljava/lang/String;
    .registers 5

    .line 73
    const-string v0, "/logs"

    :try_start_2
    const-string v1, "android.os.Environment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 74
    const-string v2, "getExternalStorageDirectory"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_28} :catch_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_28} :catch_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_28} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_28} :catch_29

    return-object v0

    :catch_29
    move-exception v1

    .line 80
    sget-object v2, Lcom/obs/services/LogConfigurator;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 82
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static logOff(Ljava/util/logging/Logger;)V
    .registers 6

    .line 163
    sget-object v0, Lcom/obs/services/LogConfigurator;->OFF:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 164
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 166
    array-length v2, v0

    move v3, v1

    :goto_e
    if-ge v3, v2, :cond_18

    aget-object v4, v0, v3

    .line 167
    invoke-virtual {p0, v4}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 170
    :cond_18
    invoke-static {}, Lcom/obs/services/LogConfigurator$AccessLog;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    if-ne p0, v0, :cond_21

    .line 171
    sput-boolean v1, Lcom/obs/services/LogConfigurator;->accessLogEnabled:Z

    return-void

    .line 172
    :cond_21
    invoke-static {}, Lcom/obs/services/LogConfigurator$BaseLog;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    if-ne p0, v0, :cond_29

    .line 173
    sput-boolean v1, Lcom/obs/services/LogConfigurator;->logEnabled:Z

    :cond_29
    return-void
.end method

.method private static declared-synchronized logOn(Ljava/util/logging/Logger;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/obs/services/LogConfigurator;

    monitor-enter v0

    const/4 v1, 0x0

    .line 86
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 87
    sget-object v1, Lcom/obs/services/LogConfigurator;->logLevel:Ljava/util/logging/Level;

    if-nez v1, :cond_10

    sget-object v1, Lcom/obs/services/LogConfigurator;->WARN:Ljava/util/logging/Level;

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_3e

    :cond_10
    :goto_10
    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 88
    sget-object v1, Lcom/obs/services/LogConfigurator;->logFileDir:Ljava/lang/String;

    if-nez v1, :cond_1d

    .line 89
    invoke-static {}, Lcom/obs/services/LogConfigurator;->getDefaultLogFileDir()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/obs/services/LogConfigurator;->logFileDir:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_e

    .line 92
    :cond_1d
    :try_start_1d
    invoke-static {p0, p1}, Lcom/obs/services/LogConfigurator;->createFileHandler(Ljava/util/logging/Logger;Ljava/lang/String;)Ljava/util/logging/FileHandler;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 94
    invoke-static {}, Lcom/obs/services/LogConfigurator$AccessLog;->getLogger()Ljava/util/logging/Logger;

    move-result-object p1

    const/4 v1, 0x1

    if-ne p0, p1, :cond_30

    .line 95
    sput-boolean v1, Lcom/obs/services/LogConfigurator;->accessLogEnabled:Z

    goto :goto_3c

    :catch_2e
    move-exception p1

    goto :goto_39

    .line 96
    :cond_30
    invoke-static {}, Lcom/obs/services/LogConfigurator$BaseLog;->getLogger()Ljava/util/logging/Logger;

    move-result-object p1

    if-ne p0, p1, :cond_3c

    .line 97
    sput-boolean v1, Lcom/obs/services/LogConfigurator;->logEnabled:Z
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_38} :catch_2e
    .catchall {:try_start_1d .. :try_end_38} :catchall_e

    goto :goto_3c

    .line 100
    :goto_39
    :try_start_39
    invoke-static {p0, p1}, Lcom/obs/services/LogConfigurator;->onException(Ljava/util/logging/Logger;Ljava/io/IOException;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_e

    .line 102
    :cond_3c
    :goto_3c
    monitor-exit v0

    return-void

    :goto_3e
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_e

    throw p0
.end method

.method private static onException(Ljava/util/logging/Logger;Ljava/io/IOException;)V
    .registers 10

    .line 106
    const-string v0, "Enable SDK log failed"

    const-string v1, "OBS Android SDK"

    const-string v2, "i"

    const-class v3, Ljava/lang/String;

    :try_start_8
    const-string v4, "android.util.Log"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_e} :catch_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_e} :catch_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_e} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_e} :catch_44

    const/4 v5, 0x0

    .line 108
    :try_start_f
    const-class v6, Ljava/lang/Throwable;

    filled-new-array {v3, v3, v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 109
    filled-new-array {v1, v0, p1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_20} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_20} :catch_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_20} :catch_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_20} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_20} :catch_44

    goto :goto_4d

    .line 111
    :catch_21
    :try_start_21
    filled-new-array {v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_43} :catch_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_43} :catch_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_43} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_43} :catch_44

    goto :goto_4d

    .line 116
    :catch_44
    sget-object v0, Lcom/obs/services/LogConfigurator;->ILOG:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 118
    :goto_4d
    invoke-static {p0}, Lcom/obs/services/LogConfigurator;->logOff(Ljava/util/logging/Logger;)V

    return-void
.end method

.method public static declared-synchronized setLogFileDir(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/obs/services/LogConfigurator;

    monitor-enter v0

    .line 248
    :try_start_3
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 249
    sput-object p0, Lcom/obs/services/LogConfigurator;->logFileDir:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_10

    .line 251
    :cond_e
    :goto_e
    monitor-exit v0

    return-void

    :goto_10
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_c

    throw p0
.end method

.method public static declared-synchronized setLogFileRolloverCount(I)V
    .registers 2

    const-class v0, Lcom/obs/services/LogConfigurator;

    monitor-enter v0

    if-lez p0, :cond_b

    .line 225
    :try_start_5
    sput p0, Lcom/obs/services/LogConfigurator;->logFileRolloverCount:I

    goto :goto_b

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_8

    throw p0

    .line 227
    :cond_b
    :goto_b
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized setLogFileSize(I)V
    .registers 2

    const-class v0, Lcom/obs/services/LogConfigurator;

    monitor-enter v0

    if-ltz p0, :cond_b

    .line 237
    :try_start_5
    sput p0, Lcom/obs/services/LogConfigurator;->logFileSize:I

    goto :goto_b

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_8

    throw p0

    .line 239
    :cond_b
    :goto_b
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized setLogLevel(Ljava/util/logging/Level;)V
    .registers 2

    const-class v0, Lcom/obs/services/LogConfigurator;

    monitor-enter v0

    if-eqz p0, :cond_b

    .line 213
    :try_start_5
    sput-object p0, Lcom/obs/services/LogConfigurator;->logLevel:Ljava/util/logging/Level;

    goto :goto_b

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_8

    throw p0

    .line 215
    :cond_b
    :goto_b
    monitor-exit v0

    return-void
.end method
