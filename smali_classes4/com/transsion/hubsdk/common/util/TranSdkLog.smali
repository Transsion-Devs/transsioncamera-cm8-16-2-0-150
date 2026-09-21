.class public Lcom/transsion/hubsdk/common/util/TranSdkLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field private static sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    .line 25
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 78
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 79
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 86
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 87
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 102
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 106
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static getLogLevel()I
    .registers 1

    .line 35
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0}, Lcom/transsion/hubsdk/common/util/ITranLogger;->getLogLevel()I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 48
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 49
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 56
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 57
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .registers 3

    .line 44
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .registers 2

    .line 110
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/common/util/ITranLogger;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setImpl(Lcom/transsion/hubsdk/common/util/ITranLogger;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 31
    sput-object p0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    return-void

    .line 29
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "logger must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setLogLevel(I)I
    .registers 2

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/common/util/ITranLogger;->setLogLevel(I)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 63
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 64
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 71
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 72
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 93
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 98
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
