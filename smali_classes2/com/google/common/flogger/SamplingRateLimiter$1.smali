.class Lcom/google/common/flogger/SamplingRateLimiter$1;
.super Lcom/google/common/flogger/LogSiteMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/SamplingRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flogger/LogSiteMap<",
        "Lcom/google/common/flogger/SamplingRateLimiter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/google/common/flogger/LogSiteMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/google/common/flogger/SamplingRateLimiter;
    .registers 1

    .line 41
    new-instance p0, Lcom/google/common/flogger/SamplingRateLimiter;

    invoke-direct {p0}, Lcom/google/common/flogger/SamplingRateLimiter;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 1

    .line 38
    invoke-virtual {p0}, Lcom/google/common/flogger/SamplingRateLimiter$1;->initialValue()Lcom/google/common/flogger/SamplingRateLimiter;

    move-result-object p0

    return-object p0
.end method
