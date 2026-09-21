.class public final Lbytekn/foundation/logger/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lbytekn/foundation/logger/Logger;

.field private static platformLogger:Lbytekn/foundation/concurrent/SharedReference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lbytekn/foundation/logger/Logger;

    invoke-direct {v0}, Lbytekn/foundation/logger/Logger;-><init>()V

    sput-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    .line 27
    new-instance v0, Lbytekn/foundation/concurrent/SharedReference;

    new-instance v1, Lbytekn/foundation/logger/PlatformLogger;

    invoke-direct {v1}, Lbytekn/foundation/logger/PlatformLogger;-><init>()V

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbytekn/foundation/logger/Logger;->platformLogger:Lbytekn/foundation/concurrent/SharedReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 47
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final getTagWithSDK(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EPKN.-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lbytekn/foundation/logger/Logger;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 43
    sget-object v0, Lbytekn/foundation/logger/Logger;->platformLogger:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbytekn/foundation/logger/ILogger;

    invoke-direct {p0, p1}, Lbytekn/foundation/logger/Logger;->getTagWithSDK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lbytekn/foundation/logger/ILogger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1e

    .line 49
    sget-object p0, Lbytekn/foundation/logger/Logger;->platformLogger:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbytekn/foundation/logger/ILogger;

    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    invoke-direct {v0, p1}, Lbytekn/foundation/logger/Logger;->getTagWithSDK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lbytekn/foundation/logger/ILogger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 51
    :cond_1e
    sget-object p3, Lbytekn/foundation/logger/Logger;->platformLogger:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbytekn/foundation/logger/ILogger;

    invoke-direct {p0, p1}, Lbytekn/foundation/logger/Logger;->getTagWithSDK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0, p2}, Lbytekn/foundation/logger/ILogger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getEnabled()Z
    .registers 1

    .line 32
    sget-object p0, Lbytekn/foundation/logger/Logger;->platformLogger:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbytekn/foundation/logger/ILogger;

    invoke-interface {p0}, Lbytekn/foundation/logger/ILogger;->getEnabled()Z

    move-result p0

    return p0
.end method
