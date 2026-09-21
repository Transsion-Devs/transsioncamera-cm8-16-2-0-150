.class public final synthetic Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda7;->f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iput p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda7;->f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iget p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda7;->f$1:I

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->$r8$lambda$K_DwPUKKD8kCK_J7GeBXmdbRs2w(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
