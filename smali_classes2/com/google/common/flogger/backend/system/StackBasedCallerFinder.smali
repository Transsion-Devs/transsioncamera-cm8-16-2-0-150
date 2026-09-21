.class public final Lcom/google/common/flogger/backend/system/StackBasedCallerFinder;
.super Lcom/google/common/flogger/backend/Platform$LogCallerFinder;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/google/common/flogger/backend/system/StackBasedCallerFinder;

    invoke-direct {v0}, Lcom/google/common/flogger/backend/system/StackBasedCallerFinder;-><init>()V

    sput-object v0, Lcom/google/common/flogger/backend/system/StackBasedCallerFinder;->INSTANCE:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/google/common/flogger/backend/Platform$LogCallerFinder;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/common/flogger/backend/Platform$LogCallerFinder;
    .registers 1

    .line 35
    sget-object v0, Lcom/google/common/flogger/backend/system/StackBasedCallerFinder;->INSTANCE:Lcom/google/common/flogger/backend/Platform$LogCallerFinder;

    return-object v0
.end method


# virtual methods
.method public findLogSite(Ljava/lang/Class;I)Lcom/google/common/flogger/LogSite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lcom/google/common/flogger/LogSite;"
        }
    .end annotation

    add-int/lit8 p2, p2, 0x1

    .line 54
    invoke-static {p1, p2}, Lcom/google/common/flogger/util/CallerFinder;->findCallerOf(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 56
    invoke-static {p0}, Lcom/google/common/flogger/LogSites;->logSiteFrom(Ljava/lang/StackTraceElement;)Lcom/google/common/flogger/LogSite;

    move-result-object p0

    return-object p0
.end method

.method public findLoggingClass(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/common/flogger/AbstractLogger<",
            "*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p0, 0x1

    .line 41
    invoke-static {p1, p0}, Lcom/google/common/flogger/util/CallerFinder;->findCallerOf(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 44
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no caller found on the stack for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 61
    const-string p0, "Default stack-based caller finder"

    return-object p0
.end method
