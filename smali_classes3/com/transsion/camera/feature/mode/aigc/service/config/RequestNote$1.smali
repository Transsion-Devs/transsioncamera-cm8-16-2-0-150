.class Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->syncFromStorage()V
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

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 11

    .line 89
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "syncFromStorage start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$msyncFromSp(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;)Ljava/util/Map;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$msyncFromSdcard(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;)Ljava/util/Map;

    move-result-object v3

    .line 97
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$fgetmRequestCountMap(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 98
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$fgetmRequestCountMap(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 100
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 102
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_51

    move v5, v3

    goto :goto_55

    .line 103
    :cond_51
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_55
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 105
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$fgetmRequestCountMap(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_69

    move v8, v3

    goto :goto_6d

    .line 106
    :cond_69
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_6d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 108
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 110
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$fgetmRequestCountMap(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_35

    :cond_8a
    if-eqz v4, :cond_91

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$msyncToStorage(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;)V

    .line 118
    :cond_91
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncFromStorage end, cost: "

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
