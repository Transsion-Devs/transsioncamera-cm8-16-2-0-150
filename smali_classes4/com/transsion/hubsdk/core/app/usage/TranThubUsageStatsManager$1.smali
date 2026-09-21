.class Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager$1;
.super Lcom/transsion/hubsdk/app/usage/ITranAppUsageStatsCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->registerTranAppUsageStatsCallback(Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;

.field final synthetic val$listener:Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;)V
    .registers 3

    .line 166
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager$1;->this$0:Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager$1;->val$listener:Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/usage/ITranAppUsageStatsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReportEvent(Landroid/content/ComponentName;IIILandroid/content/ComponentName;)V
    .registers 9

    .line 170
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager$1;->val$listener:Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;

    if-eqz v0, :cond_41

    .line 171
    # getter for: Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReportEvent component = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", instanceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/usage/TranThubUsageStatsManager$1;->val$listener:Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/api/app/usage/TranUsageStatsManager$ITranAppUsageStatsListener;->onReportEventArrive(Landroid/content/ComponentName;IIILandroid/content/ComponentName;)V

    :cond_41
    return-void
.end method
