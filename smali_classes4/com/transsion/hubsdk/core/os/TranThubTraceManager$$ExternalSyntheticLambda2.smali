.class public final synthetic Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/os/TranThubTraceManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;JLjava/lang/String;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/os/TranThubTraceManager;

    iput-wide p2, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;->f$1:J

    iput-object p4, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput p5, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/os/TranThubTraceManager;

    iget-wide v1, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;->f$1:J

    iget-object v3, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/hubsdk/core/os/TranThubTraceManager$$ExternalSyntheticLambda2;->f$3:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;->$r8$lambda$W42Gt9L5zZCRtk4SCJ8BY5xQNb4(Lcom/transsion/hubsdk/core/os/TranThubTraceManager;JLjava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
