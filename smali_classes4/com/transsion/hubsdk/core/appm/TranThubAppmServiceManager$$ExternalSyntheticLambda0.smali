.class public final synthetic Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;IZLjava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;

    iput p2, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;

    iget v1, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v2, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;->f$2:Z

    iget-object p0, p0, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;->$r8$lambda$wm7zHNfrV12HLVHkwOTExUFfuyQ(Lcom/transsion/hubsdk/core/appm/TranThubAppmServiceManager;IZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
