.class public final synthetic Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/os/TranThubTraceManager;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/hubsdk/core/os/TranThubTraceManager;

    iput-wide p2, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda4;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/hubsdk/core/os/TranThubTraceManager;

    iget-wide v1, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda4;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->$r8$lambda$vvDGonlOhxy7wCW5c_4eDz6Bkig(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
