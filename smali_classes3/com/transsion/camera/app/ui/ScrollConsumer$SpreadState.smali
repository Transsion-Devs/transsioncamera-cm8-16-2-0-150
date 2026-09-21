.class final Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;
.super Lcom/transsion/camera/app/ui/ScrollConsumer$State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScrollConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpreadState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V
    .registers 3

    .line 373
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 374
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onEnter()V
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmPreScreenFormType(Lcom/transsion/camera/app/ui/ScrollConsumer;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmPreOrientation(Lcom/transsion/camera/app/ui/ScrollConsumer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->spreadFinishedImmediate(II)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmInitial(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void

    .line 383
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmGoBackToInitInAnimator(Lcom/transsion/camera/app/ui/ScrollConsumer;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fputmGoBackToInitInAnimator(Lcom/transsion/camera/app/ui/ScrollConsumer;Z)V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmShrinking(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    :cond_39
    return-void
.end method

.method public reset()Z
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmShrinking(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    const/4 p0, 0x1

    return p0
.end method

.method public spreadMode()V
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fputmSpreadModeAfterShrinking(Lcom/transsion/camera/app/ui/ScrollConsumer;Z)V

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmShrinking(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method

.method public startScroll()V
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmPushing(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method
