.class public final synthetic Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;[ILcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$$ExternalSyntheticLambda0;->f$1:[I

    iput-object p3, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$$ExternalSyntheticLambda0;->f$1:[I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;->$r8$lambda$0RVt36Z3VRX9rl26njDfNlInv4s(Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;[ILcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
