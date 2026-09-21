.class public Lcom/transsion/hubsdk/common/bp/TranThubBpManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXCPC_TID:J = 0xd96e64c116L

.field private static final EXCP_INFO_TAG:Ljava/lang/String; = "thub_excp_info"

.field private static final EXCP_INFO_TID:J = 0xd96e740369L

.field private static final MAX_EXCP_INFO_LEN:I = 0x7d0

.field private static final STACK_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "TranThubBpManager"

.field private static final THUB_CORE_VERSION_KEY:Ljava/lang/String; = "c_v"

.field private static final THUB_MP_VERSION:I = 0x1

.field private static final THUB_SDK_VERSION_KEY:Ljava/lang/String; = "s_v"

.field private static final TRACE_INFO_KEY:Ljava/lang/String; = "t_i"

.field private static final TRACE_TIMESTAMP_KEY:Ljava/lang/String; = "s_t"

.field private static mContext:Landroid/content/Context;

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static mService:Lcom/transsion/hubsdk/bp/ITranThubBp;


# direct methods
.method public static synthetic $r8$lambda$GsmwF_8dXtWLisvATdO93v45-Jw(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->lambda$recordTimeout$3(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T58pLpqQK98sSgasHxdJX9E51Kc(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->lambda$recordException$0(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hTyjohmWh7iXLQQy33y9zFKlahI(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->lambda$recordTimeout$2(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i8cxZtBu0POWfBXdK9SBpPwO5Lg(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->lambda$recordException$1(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 61
    const-string v0, "thub_bp"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/transsion/hubsdk/bp/ITranThubBp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/bp/ITranThubBp;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sput-object p1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static getExcpInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 277
    const-string p0, ""

    return-object p0

    .line 279
    :cond_5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 280
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 281
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 282
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    .line 283
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 285
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getStackTrace(Ljava/lang/Throwable;I)Ljava/lang/String;
    .registers 9

    .line 290
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    array-length p0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v2, p0, :cond_5d

    aget-object v4, v0, v2

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-lt v3, p1, :cond_5a

    goto :goto_5d

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 302
    :cond_5d
    :goto_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    return-object p0

    :catch_62
    move-exception p0

    .line 304
    sget-object p1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStackTrace Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string p0, ""

    return-object p0
.end method

.method private static synthetic lambda$recordException$0(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    .line 85
    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch Thub-sdk Exception form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_16
    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordExcp(Ljava/lang/String;)Z

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    goto :goto_22

    :catch_1d
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 93
    :goto_22
    sget-object v1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordException.catchEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6d

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0x157b543c

    .line 96
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " eStr="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {v4, v0, v2, v3, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 103
    :cond_6d
    invoke-static {}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->tneLog()V

    return-void
.end method

.method private static synthetic lambda$recordException$1(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    .line 125
    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch Thub-sdk Exception form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_16
    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordExcp(Ljava/lang/String;)Z

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    goto :goto_22

    :catch_1d
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 133
    :goto_22
    sget-object v1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordException.catchEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6d

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0x157b543c

    .line 136
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " eStr="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {v4, v0, v2, v3, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_6d
    return-void
.end method

.method private static synthetic lambda$recordTimeout$2(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .registers 8

    .line 165
    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thub-sdk Timeout from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 169
    :try_start_17
    sget-object v1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v1, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordTimeout(Ljava/lang/String;)Z

    move-result v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1e

    goto :goto_23

    :catch_1e
    move-exception v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v0

    .line 173
    :goto_23
    sget-object v2, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordTimeout.catchEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5f

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0x157b543c

    .line 177
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 178
    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v5, 0x7d0

    if-le p1, v5, :cond_5c

    .line 183
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 186
    :cond_5c
    invoke-static {v4, v3, v1, v2, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 189
    :cond_5f
    invoke-static {}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->tneLog()V

    return-void
.end method

.method private static synthetic lambda$recordTimeout$3(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .registers 8

    .line 212
    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thub-sdk Timeout form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 216
    :try_start_17
    sget-object v1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v1, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordTimeout(Ljava/lang/String;)Z

    move-result v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1e

    goto :goto_23

    :catch_1e
    move-exception v1

    .line 218
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v0

    .line 220
    :goto_23
    sget-object v2, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordTimeout.catchEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5f

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0x157b543c

    .line 224
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v5, 0x7d0

    if-le p1, v5, :cond_5c

    .line 230
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 233
    :cond_5c
    invoke-static {v4, v3, v1, v2, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_5f
    return-void
.end method

.method private static localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 264
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 265
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->getExcpInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  \r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 p1, 0x7d0

    if-le p0, p1, :cond_41

    const/4 p0, 0x0

    .line 269
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 271
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static recordException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 74
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    .line 75
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "recordException fail, incompatible version"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const-wide v0, 0xd96e64c116L

    .line 79
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result p0

    if-nez p0, :cond_23

    .line 80
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_23
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static recordException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 114
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 115
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "recordException fail, incompatible version"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const-wide v0, 0xd96e64c116L

    .line 119
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result v0

    if-nez v0, :cond_23

    .line 120
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_23
    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static recordTimeout(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6

    .line 153
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    .line 154
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "recordException fail, incompatible version"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const-wide v0, 0xd96e64c116L

    .line 158
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result p0

    if-nez p0, :cond_23

    .line 159
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_23
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 164
    sget-object p2, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static recordTimeout(Ljava/lang/String;J)V
    .registers 6

    .line 200
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 201
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "recordException fail, incompatible version"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const-wide v0, 0xd96e64c116L

    .line 205
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result v0

    if-nez v0, :cond_23

    .line 206
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 209
    :cond_23
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 211
    sget-object p1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static tneLog()V
    .registers 7

    .line 248
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 249
    const-string v0, "activity"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 253
    :try_start_14
    const-string v2, "0x01010001"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string v6, ""

    const-wide/16 v3, 0x200

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/app/ITranActivityManager;->startTNE(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    .line 255
    sget-object v1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTNE fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method

.method private static trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 7

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    const-string v1, "c_v"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string p0, "s_v"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string p0, "s_t"

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 243
    const-string p0, "t_i"

    invoke-virtual {v0, p0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide p0, 0xd96e740369L

    .line 244
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "thub_excp_info"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(Ljava/lang/Long;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
