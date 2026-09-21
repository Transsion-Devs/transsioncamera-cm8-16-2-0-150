.class Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/filter/ArcFilterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/filter/ArcFilterEngine;


# direct methods
.method public constructor <init>(Lcom/arcsoft/filter/ArcFilterEngine;Landroid/os/Looper;)V
    .registers 3

    .line 420
    iput-object p1, p0, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;->this$0:Lcom/arcsoft/filter/ArcFilterEngine;

    .line 421
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg.obj = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;->this$0:Lcom/arcsoft/filter/ArcFilterEngine;

    # getter for: Lcom/arcsoft/filter/ArcFilterEngine;->mStatus:I
    invoke-static {v1}, Lcom/arcsoft/filter/ArcFilterEngine;->access$100(Lcom/arcsoft/filter/ArcFilterEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/arcsoft/filter/ArcFilterEngine;->LOGV(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->access$200(Ljava/lang/String;)V

    .line 426
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_55

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    .line 438
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ArcFilterEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 433
    :cond_4f
    iget-object p0, p0, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;->this$0:Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-static {p0}, Lcom/arcsoft/filter/ArcFilterEngine;->access$400(Lcom/arcsoft/filter/ArcFilterEngine;)Lcom/arcsoft/filter/ArcFilterEngine$CaptureProcessCallback;

    return-void

    .line 428
    :cond_55
    iget-object v0, p0, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;->this$0:Lcom/arcsoft/filter/ArcFilterEngine;

    # getter for: Lcom/arcsoft/filter/ArcFilterEngine;->mMLEngineInited:Z
    invoke-static {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->access$300(Lcom/arcsoft/filter/ArcFilterEngine;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 429
    iget-object p0, p0, Lcom/arcsoft/filter/ArcFilterEngine$EventHandler;->this$0:Lcom/arcsoft/filter/ArcFilterEngine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    # setter for: Lcom/arcsoft/filter/ArcFilterEngine;->mStatus:I
    invoke-static {p0, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->access$102(Lcom/arcsoft/filter/ArcFilterEngine;I)I

    :cond_6a
    return-void
.end method
