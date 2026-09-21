.class final Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;
.super Lcom/transsion/camera/app/ui/ScrollConsumer$State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScrollConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreparingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V
    .registers 3

    .line 273
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public reset()Z
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmInitial(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    const/4 p0, 0x1

    return p0
.end method

.method public scroll(FF)V
    .registers 7

    .line 279
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->isNull()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmModeProvider(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmScrollDistanceX(Lcom/transsion/camera/app/ui/ScrollConsumer;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmScrollDistanceY(Lcom/transsion/camera/app/ui/ScrollConsumer;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmSupportColumnOrBoth(Lcom/transsion/camera/app/ui/ScrollConsumer;)Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/ScrollConsumer;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_32

    goto :goto_34

    :cond_32
    const/4 v2, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v2, 0x1

    :goto_35
    invoke-virtual {p2, v0, v1, v2}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->suitableMode(IIZ)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fputmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/scroll/ScrollMode;)V

    .line 282
    :cond_3c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->isNull()Z

    move-result p1

    if-nez p1, :cond_51

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmPulling(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    :cond_51
    return-void
.end method

.method public stopScroll()V
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmInitial(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method
