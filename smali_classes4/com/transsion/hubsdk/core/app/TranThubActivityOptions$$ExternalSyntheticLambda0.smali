.class public final synthetic Lcom/transsion/hubsdk/core/app/TranThubActivityOptions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;

    iput p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;

    iget p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->$r8$lambda$F-z_LsuiNTgd1ACtHG7zQmvoqKY(Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
