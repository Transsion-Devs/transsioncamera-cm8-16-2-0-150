.class Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig$1;->val$key:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 7

    .line 39
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "initConfig start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig$1;->val$key:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;->-$$Nest$minitConfig(Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initConfig end, mConfigJson: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/TPMSConfig;->mConfigJson:Lorg/json/JSONObject;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", cost: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
