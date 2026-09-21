.class public Lcom/google/common/flogger/LoggingApi$NoOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/flogger/LoggingApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LoggingApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<API::",
        "Lcom/google/common/flogger/LoggingApi<",
        "TAPI;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/common/flogger/LoggingApi<",
        "TAPI;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final atMostEvery(ILjava/util/concurrent/TimeUnit;)Lcom/google/common/flogger/LoggingApi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TAPI;"
        }
    .end annotation

    .line 902
    const-string p1, "time unit"

    invoke-static {p2, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 903
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final every(I)Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TAPI;"
        }
    .end annotation

    .line 892
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final isEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final log()V
    .registers 1

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;B)V
    .registers 3

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;BB)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;BC)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;BD)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;BF)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;BI)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;BJ)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;BLjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;BS)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;BZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;C)V
    .registers 3

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;CB)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;CC)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;CD)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;CF)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;CI)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;CJ)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;CLjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;CS)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;CZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;DB)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;DC)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;DD)V
    .registers 6

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;DF)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;DI)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;DJ)V
    .registers 6

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;DLjava/lang/Object;)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;DS)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;DZ)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;FB)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;FC)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;FD)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;FF)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;FI)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;FJ)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;FLjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;FS)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;FZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;IB)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;IC)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;ID)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;IF)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;II)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;IJ)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;IS)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;IZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;J)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;JB)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;JC)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;JD)V
    .registers 6

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;JF)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;JI)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;JJ)V
    .registers 6

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;JLjava/lang/Object;)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;JS)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;JZ)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;B)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;C)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;D)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;F)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;J)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    .line 0
    return-void
.end method

.method public final varargs log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 13

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;S)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;S)V
    .registers 3

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;SB)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;SC)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;SD)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;SF)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;SI)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;SJ)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;SLjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;SS)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;SZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;ZB)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;ZC)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;ZD)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;ZF)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;ZI)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;ZJ)V
    .registers 5

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;ZLjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;ZS)V
    .registers 4

    .line 0
    return-void
.end method

.method public final log(Ljava/lang/String;ZZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public final logVarargs(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method protected final noOp()Lcom/google/common/flogger/LoggingApi;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    return-object p0
.end method

.method public final onAverageEvery(I)Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TAPI;"
        }
    .end annotation

    .line 897
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public per(Lcom/google/common/flogger/LoggingScopeProvider;)Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/LoggingScopeProvider;",
            ")TAPI;"
        }
    .end annotation

    .line 882
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public per(Ljava/lang/Enum;)Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)TAPI;"
        }
    .end annotation

    .line 877
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public per(Ljava/lang/Object;Lcom/google/common/flogger/LogPerBucketingStrategy;)Lcom/google/common/flogger/LoggingApi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/flogger/LogPerBucketingStrategy<",
            "-TT;>;)TAPI;"
        }
    .end annotation

    .line 872
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final with(Lcom/google/common/flogger/MetadataKey;)Lcom/google/common/flogger/LoggingApi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "Ljava/lang/Boolean;",
            ">;)TAPI;"
        }
    .end annotation

    .line 866
    const-string v0, "metadata key"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 867
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final with(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)Lcom/google/common/flogger/LoggingApi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)TAPI;"
        }
    .end annotation

    .line 859
    const-string p2, "metadata key"

    invoke-static {p1, p2}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 860
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public final withCause(Ljava/lang/Throwable;)Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TAPI;"
        }
    .end annotation

    .line 887
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public withInjectedLogSite(Lcom/google/common/flogger/LogSite;)Lcom/google/common/flogger/LoggingApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/LogSite;",
            ")TAPI;"
        }
    .end annotation

    .line 839
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public withInjectedLogSite(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/common/flogger/LoggingApi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")TAPI;"
        }
    .end annotation

    .line 848
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method

.method public withStackTrace(Lcom/google/common/flogger/StackSize;)Lcom/google/common/flogger/LoggingApi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/StackSize;",
            ")TAPI;"
        }
    .end annotation

    .line 909
    const-string v0, "stack size"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 910
    invoke-virtual {p0}, Lcom/google/common/flogger/LoggingApi$NoOp;->noOp()Lcom/google/common/flogger/LoggingApi;

    move-result-object p0

    return-object p0
.end method
