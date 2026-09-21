.class public final Lcom/google/common/flogger/LogSites;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callerOf(Ljava/lang/Class;)Lcom/google/common/flogger/LogSite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/flogger/LogSite;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getCallerFinder()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/common/flogger/backend/Platform$LogCallerFinder;->findLogSite(Ljava/lang/Class;I)Lcom/google/common/flogger/LogSite;

    move-result-object p0

    return-object p0
.end method

.method public static logSite()Lcom/google/common/flogger/LogSite;
    .registers 3

    .line 121
    invoke-static {}, Lcom/google/common/flogger/backend/Platform;->getCallerFinder()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    move-result-object v0

    const-class v1, Lcom/google/common/flogger/LogSites;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/flogger/backend/Platform$LogCallerFinder;->findLogSite(Ljava/lang/Class;I)Lcom/google/common/flogger/LogSite;

    move-result-object v0

    return-object v0
.end method

.method public static logSiteFrom(Ljava/lang/StackTraceElement;)Lcom/google/common/flogger/LogSite;
    .registers 2

    if-eqz p0, :cond_8

    .line 132
    new-instance v0, Lcom/google/common/flogger/StackBasedLogSite;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/StackBasedLogSite;-><init>(Ljava/lang/StackTraceElement;)V

    return-object v0

    :cond_8
    sget-object p0, Lcom/google/common/flogger/LogSite;->INVALID:Lcom/google/common/flogger/LogSite;

    return-object p0
.end method
