.class final Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingBackAnimationState;
.super Lcom/transsion/camera/app/ui/ScrollConsumer$State;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScrollConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShrinkingBackAnimationState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V
    .registers 3

    .line 473
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingBackAnimationState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 474
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingBackAnimationState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmSpread(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method

.method onEnter()V
    .registers 2

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingBackAnimationState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startShrinkingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    return-void
.end method

.method public reset()Z
    .registers 2

    .line 489
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingBackAnimationState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fputmGoBackToInitInAnimator(Lcom/transsion/camera/app/ui/ScrollConsumer;Z)V

    return v0
.end method
