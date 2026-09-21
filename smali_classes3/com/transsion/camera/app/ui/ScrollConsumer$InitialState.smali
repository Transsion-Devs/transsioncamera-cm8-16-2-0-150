.class final Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;
.super Lcom/transsion/camera/app/ui/ScrollConsumer$State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ScrollConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V
    .registers 3

    .line 224
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onEnter()V
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$msyncOrientationAndScrForm(Lcom/transsion/camera/app/ui/ScrollConsumer;)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmModeProvider(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->suitableMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fputmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/scroll/ScrollMode;)V

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmSpreadModeAfterShrinking(Lcom/transsion/camera/app/ui/ScrollConsumer;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fputmSpreadModeAfterShrinking(Lcom/transsion/camera/app/ui/ScrollConsumer;Z)V

    .line 234
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->spreadMode()V

    :cond_23
    return-void
.end method

.method public spreadMode()V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/ScrollConsumer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_53

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/ScrollConsumer;)I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_45

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_37

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_29

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmModeProvider(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getRightLeftMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fputmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/scroll/ScrollMode;)V

    goto :goto_83

    .line 255
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmModeProvider(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getBottomUpMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fputmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/scroll/ScrollMode;)V

    goto :goto_83

    .line 252
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmModeProvider(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getLeftRightMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fputmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/scroll/ScrollMode;)V

    goto :goto_83

    .line 249
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmModeProvider(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getTopDownMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fputmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/scroll/ScrollMode;)V

    goto :goto_83

    .line 262
    :cond_53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/ScrollConsumer;)I

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/ScrollConsumer;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_76

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/ScrollConsumer;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_76

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/ScrollConsumer;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_83

    .line 266
    :cond_76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmModeProvider(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getBottomUpMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fputmMode(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/scroll/ScrollMode;)V

    .line 268
    :cond_83
    :goto_83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmSpreading(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method

.method public startScroll()V
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$msyncOrientationAndScrForm(Lcom/transsion/camera/app/ui/ScrollConsumer;)V

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;->this$0:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->-$$Nest$fgetmPreparing(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method
