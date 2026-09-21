.class final Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;
.super Lcom/transsion/camera/app/ui/ScrollConsumer$State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScrollConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PushingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V
    .registers 3

    .line 417
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onEnter()V
    .registers 1

    .line 423
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPushing()V

    return-void
.end method

.method public reset()Z
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmShrinking(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    const/4 p0, 0x1

    return p0
.end method

.method public scroll(FF)V
    .registers 4

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmScrollDistanceX(Lcom/transsion/camera/app/ui/ScrollConsumer;)F

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmScrollDistanceY(Lcom/transsion/camera/app/ui/ScrollConsumer;)F

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->pushing(FF)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 429
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmShrinking(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    :cond_21
    return-void
.end method

.method public stopScroll()V
    .registers 2

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->stopPushing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmShrinking(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void

    .line 438
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmShrinkingBack(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method
