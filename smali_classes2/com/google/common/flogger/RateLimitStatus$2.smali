.class Lcom/google/common/flogger/RateLimitStatus$2;
.super Lcom/google/common/flogger/RateLimitStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flogger/RateLimitStatus;->combine(Lcom/google/common/flogger/RateLimitStatus;Lcom/google/common/flogger/RateLimitStatus;)Lcom/google/common/flogger/RateLimitStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lcom/google/common/flogger/RateLimitStatus;

.field final synthetic val$b:Lcom/google/common/flogger/RateLimitStatus;


# direct methods
.method constructor <init>(Lcom/google/common/flogger/RateLimitStatus;Lcom/google/common/flogger/RateLimitStatus;)V
    .registers 3

    .line 221
    iput-object p1, p0, Lcom/google/common/flogger/RateLimitStatus$2;->val$a:Lcom/google/common/flogger/RateLimitStatus;

    iput-object p2, p0, Lcom/google/common/flogger/RateLimitStatus$2;->val$b:Lcom/google/common/flogger/RateLimitStatus;

    invoke-direct {p0}, Lcom/google/common/flogger/RateLimitStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/google/common/flogger/RateLimitStatus$2;->val$a:Lcom/google/common/flogger/RateLimitStatus;

    invoke-virtual {v0}, Lcom/google/common/flogger/RateLimitStatus;->reset()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 230
    iget-object p0, p0, Lcom/google/common/flogger/RateLimitStatus$2;->val$b:Lcom/google/common/flogger/RateLimitStatus;

    invoke-virtual {p0}, Lcom/google/common/flogger/RateLimitStatus;->reset()V

    return-void

    :catchall_b
    move-exception v0

    iget-object p0, p0, Lcom/google/common/flogger/RateLimitStatus$2;->val$b:Lcom/google/common/flogger/RateLimitStatus;

    invoke-virtual {p0}, Lcom/google/common/flogger/RateLimitStatus;->reset()V

    .line 231
    throw v0
.end method
