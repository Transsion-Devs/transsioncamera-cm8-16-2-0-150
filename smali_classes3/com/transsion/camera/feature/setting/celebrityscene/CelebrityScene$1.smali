.class Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$1;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$1;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;->-$$Nest$fgetmPauseTime(Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 42
    invoke-static {}, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetValueWhenPause --- elapsedTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$1;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;->-$$Nest$fgetmPauseTime(Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_43

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_43

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$1;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    invoke-static {v0, v4, v5}, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;->-$$Nest$fputmPauseTime(Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;J)V

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene$1;->this$0:Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;

    const-string/jumbo v0, "val_celebrity_scene_none"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/celebrityscene/CelebrityScene;->onValueChanged(Ljava/lang/String;)V

    :cond_43
    return-void
.end method
