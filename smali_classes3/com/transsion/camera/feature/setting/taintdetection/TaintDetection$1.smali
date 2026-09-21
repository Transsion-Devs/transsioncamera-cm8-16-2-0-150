.class Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->onValueChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Ljava/lang/String;)V
    .registers 3

    .line 265
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$1;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$1;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$mdoPollingTask(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)V

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$1;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$fputmTask(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method
