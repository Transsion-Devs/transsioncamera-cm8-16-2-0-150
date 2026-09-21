.class public abstract Lcom/google/common/flogger/RateLimitStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/RateLimitStatus$LogGuard;
    }
.end annotation


# static fields
.field public static final ALLOW:Lcom/google/common/flogger/RateLimitStatus;

.field public static final DISALLOW:Lcom/google/common/flogger/RateLimitStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 115
    invoke-static {}, Lcom/google/common/flogger/RateLimitStatus;->sentinel()Lcom/google/common/flogger/RateLimitStatus;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/RateLimitStatus;->DISALLOW:Lcom/google/common/flogger/RateLimitStatus;

    .line 124
    invoke-static {}, Lcom/google/common/flogger/RateLimitStatus;->sentinel()Lcom/google/common/flogger/RateLimitStatus;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/RateLimitStatus;->ALLOW:Lcom/google/common/flogger/RateLimitStatus;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkStatus(Lcom/google/common/flogger/RateLimitStatus;Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)I
    .registers 3

    .line 242
    invoke-static {p0, p1, p2}, Lcom/google/common/flogger/RateLimitStatus$LogGuard;->checkAndGetSkippedCount(Lcom/google/common/flogger/RateLimitStatus;Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)I

    move-result p0

    return p0
.end method

.method static combine(Lcom/google/common/flogger/RateLimitStatus;Lcom/google/common/flogger/RateLimitStatus;)Lcom/google/common/flogger/RateLimitStatus;
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    goto :goto_1b

    .line 213
    :cond_6
    sget-object v0, Lcom/google/common/flogger/RateLimitStatus;->DISALLOW:Lcom/google/common/flogger/RateLimitStatus;

    if-eq p0, v0, :cond_1b

    sget-object v1, Lcom/google/common/flogger/RateLimitStatus;->ALLOW:Lcom/google/common/flogger/RateLimitStatus;

    if-ne p1, v1, :cond_f

    goto :goto_1b

    :cond_f
    if-eq p1, v0, :cond_1a

    if-ne p0, v1, :cond_14

    goto :goto_1a

    .line 221
    :cond_14
    new-instance v0, Lcom/google/common/flogger/RateLimitStatus$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/RateLimitStatus$2;-><init>(Lcom/google/common/flogger/RateLimitStatus;Lcom/google/common/flogger/RateLimitStatus;)V

    return-object v0

    :cond_1a
    :goto_1a
    return-object p1

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method private static sentinel()Lcom/google/common/flogger/RateLimitStatus;
    .registers 1

    .line 127
    new-instance v0, Lcom/google/common/flogger/RateLimitStatus$1;

    invoke-direct {v0}, Lcom/google/common/flogger/RateLimitStatus$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected abstract reset()V
.end method
