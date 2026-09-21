.class Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$2;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->syncToStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;Ljava/lang/String;)V
    .registers 3

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 6

    .line 184
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "syncToStorage start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    new-instance v2, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$fgetmRequestCountMap(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 189
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$smsyncToSp(Ljava/lang/String;)V

    .line 190
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$smsyncToSdcard(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncToStorage end, cost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
