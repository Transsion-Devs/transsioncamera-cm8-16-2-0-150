.class Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;


# direct methods
.method private constructor <init>(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$a;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;-><init>(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Customizable-Player"

    const/4 v3, 0x0

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", arg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v1, Landroid/os/Message;->what:I
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_80

    const/16 v5, 0x3fc

    const/4 v6, 0x6

    const/4 v7, 0x1

    if-eq v4, v5, :cond_55e

    const/16 v5, 0x44b

    if-eq v4, v5, :cond_532

    const/4 v8, 0x2

    const-string v9, ""

    const/16 v10, 0x3ef

    const/16 v11, 0x3e9

    packed-switch v4, :pswitch_data_5a6

    packed-switch v4, :pswitch_data_5b0

    goto/16 :goto_5a5

    :pswitch_54
    :try_start_54
    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v4, Lcom/apprichtap/haptic/player/a;->i:I

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v1

    if-ne v6, v1, :cond_83

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v1

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v4

    const/16 v5, 0x3ed

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v7}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;->a(Landroid/os/Message;IZ)Z

    goto :goto_a1

    :catchall_80
    move-exception v0

    goto/16 :goto_59d

    :cond_83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SEEK status:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a1
    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    :goto_a3
    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_5a5

    :pswitch_ac
    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iput v3, v4, Lcom/apprichtap/haptic/player/a;->i:I

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iput v3, v4, Lcom/apprichtap/haptic/player/a;->q:I

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iput v3, v4, Lcom/apprichtap/haptic/player/a;->u:I

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iget v4, v4, Lcom/apprichtap/haptic/player/a;->j:I

    if-lez v4, :cond_102

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget v5, v5, Lcom/apprichtap/haptic/player/a;->j:I

    if-ne v4, v5, :cond_e3

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->seekTo(I)V

    goto/16 :goto_5a5

    :cond_e3
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v1

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v4

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget v5, v5, Lcom/apprichtap/haptic/player/a;->j:I

    invoke-virtual {v4, v10, v5, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    goto :goto_114

    :goto_fe
    iget v0, v0, Lcom/apprichtap/haptic/player/a;->f:I

    goto/16 :goto_37d

    :cond_102
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v1

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    :goto_114
    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v0

    goto :goto_fe

    :pswitch_119
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget-wide v6, v1, Lcom/apprichtap/haptic/player/a;->b:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_14d

    const-string v1, "pause delta < 0"

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iput v3, v1, Lcom/apprichtap/haptic/player/a;->i:I

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v0

    invoke-virtual {v0, v8, v3}, Lcom/apprichtap/haptic/player/a;->a(II)V

    goto/16 :goto_5a5

    :cond_14d
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v6, v1, Lcom/apprichtap/haptic/player/a;->i:I

    int-to-long v6, v6

    add-long/2addr v6, v4

    long-to-int v4, v6

    iput v4, v1, Lcom/apprichtap/haptic/player/a;->i:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_PAUSE mStartPosition:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iget v4, v4, Lcom/apprichtap/haptic/player/a;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Lcom/apprichtap/haptic/player/a;->a(II)V

    goto/16 :goto_5a5

    :pswitch_182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_START mStartPosition:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iget v4, v4, Lcom/apprichtap/haptic/player/a;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v1, v1, Lcom/apprichtap/haptic/player/a;->i:I

    if-ltz v1, :cond_235

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v1, v1, Lcom/apprichtap/haptic/player/a;->i:I

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iget-object v4, v4, Lcom/apprichtap/haptic/player/a;->g:Lc/a;

    invoke-virtual {v4}, Lc/a;->getDuration()I

    move-result v4

    if-gt v1, v4, :cond_235

    const-string v1, "MSG_START will generate remainder and partial pattern!"

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iget-object v4, v4, Lcom/apprichtap/haptic/player/a;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v8}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v8

    iget v8, v8, Lcom/apprichtap/haptic/player/a;->i:I

    invoke-static {v4, v8}, Lcom/apprichtap/haptic/base/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/apprichtap/haptic/player/a;->v:Ljava/lang/String;

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget-object v1, v1, Lcom/apprichtap/haptic/player/a;->v:Ljava/lang/String;

    if-nez v1, :cond_235

    const-string v1, "null == mCurrentPlayingInfo.mRemainderHEString"

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v4, v1, Lcom/apprichtap/haptic/player/a;->t:I

    add-int/2addr v4, v7

    iput v4, v1, Lcom/apprichtap/haptic/player/a;->t:I

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v1, v1, Lcom/apprichtap/haptic/player/a;->c:I

    if-lt v4, v1, :cond_21a

    const-string v1, "last loop finished!"

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v1

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto/16 :goto_46f

    :cond_21a
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Lcom/apprichtap/haptic/player/a;->a(II)V

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v1

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto/16 :goto_46f

    :cond_235
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/apprichtap/haptic/player/a;->b:J

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Lcom/apprichtap/haptic/player/a;->a(II)V

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v1

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    :goto_252
    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v0

    goto/16 :goto_336

    :pswitch_258
    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->a(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/IHapticEffectPerformer;

    move-result-object v0

    invoke-interface {v0}, Lcom/apprichtap/haptic/player/IHapticEffectPerformer;->stop()V

    goto/16 :goto_5a5

    :pswitch_263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_PLAY_PATTERN mFreq"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iget v4, v4, Lcom/apprichtap/haptic/player/a;->e:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mAmplitude:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iget v4, v4, Lcom/apprichtap/haptic/player/a;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "mCurrentPlayingInfo.mCurrentPatternIndex:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iget v4, v4, Lcom/apprichtap/haptic/player/a;->q:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v1

    if-eq v6, v1, :cond_2c8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore MSG_PLAY_PATTERN as status:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v0

    :goto_2bf
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_580

    :cond_2c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    iget-object v4, v4, Lcom/apprichtap/haptic/player/a;->s:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v15, v1, Lcom/apprichtap/haptic/player/a;->d:I

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v1, v1, Lcom/apprichtap/haptic/player/a;->e:I

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->a(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/IHapticEffectPerformer;

    move-result-object v4

    invoke-interface {v4}, Lcom/apprichtap/haptic/player/IHapticEffectPerformer;->getRichTapCoreMajorVersion()I

    move-result v17

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->d(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v12, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;

    iget-object v13, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    move/from16 v16, v1

    invoke-direct/range {v12 .. v17}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PerformRunnable;-><init>(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;Ljava/lang/String;III)V

    invoke-interface {v4, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v1, v1, Lcom/apprichtap/haptic/player/a;->q:I

    add-int/2addr v1, v7

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apprichtap/haptic/player/a;->a()I

    move-result v4

    sub-int/2addr v4, v7

    if-gt v1, v4, :cond_33c

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v4, v1, Lcom/apprichtap/haptic/player/a;->q:I

    add-int/2addr v4, v7

    iput v4, v1, Lcom/apprichtap/haptic/player/a;->q:I

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v1

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    goto/16 :goto_252

    :goto_336
    invoke-virtual {v0, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto/16 :goto_46f

    :cond_33c
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v4, v1, Lcom/apprichtap/haptic/player/a;->t:I

    add-int/2addr v4, v7

    iput v4, v1, Lcom/apprichtap/haptic/player/a;->t:I

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v1, v1, Lcom/apprichtap/haptic/player/a;->c:I

    if-lt v4, v1, :cond_368

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v1

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    :goto_363
    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v0

    goto :goto_37b

    :cond_368
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v1

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    goto :goto_363

    :goto_37b
    iget v0, v0, Lcom/apprichtap/haptic/player/a;->r:I

    :goto_37d
    invoke-virtual {v1, v4, v0, v7}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;->a(Landroid/os/Message;IZ)Z

    goto/16 :goto_5a5

    :pswitch_382
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v1, v1, Lcom/apprichtap/haptic/player/a;->q:I

    if-nez v1, :cond_398

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/apprichtap/haptic/player/a;->b:J

    :cond_398
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget-object v1, v1, Lcom/apprichtap/haptic/player/a;->v:Ljava/lang/String;

    const/16 v4, 0x3ea

    if-eqz v1, :cond_474

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget-object v1, v1, Lcom/apprichtap/haptic/player/a;->v:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_474

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRemainderHEString:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget-object v5, v5, Lcom/apprichtap/haptic/player/a;->v:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget v5, v5, Lcom/apprichtap/haptic/player/a;->i:I

    iput v5, v1, Lcom/apprichtap/haptic/player/a;->u:I

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget-object v5, v5, Lcom/apprichtap/haptic/player/a;->g:Lc/a;

    iget-object v6, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v6}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v6

    iget v6, v6, Lcom/apprichtap/haptic/player/a;->i:I

    invoke-virtual {v5, v6}, Lc/a;->a(I)I

    move-result v5

    iput v5, v1, Lcom/apprichtap/haptic/player/a;->q:I

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget-object v5, v5, Lcom/apprichtap/haptic/player/a;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v6}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v6

    iget v6, v6, Lcom/apprichtap/haptic/player/a;->i:I

    invoke-static {v5, v6}, Lcom/apprichtap/haptic/base/a;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/apprichtap/haptic/player/a;->s:Ljava/lang/String;

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget-object v5, v5, Lcom/apprichtap/haptic/player/a;->s:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/apprichtap/haptic/base/a;->d(Ljava/lang/String;I)I

    move-result v5

    iput v5, v1, Lcom/apprichtap/haptic/player/a;->r:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_CHECK_NEXT_PATTERN resume paused pattern,  mCurrentPatternIndex:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget v5, v5, Lcom/apprichtap/haptic/player/a;->q:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mCurrentPatternString:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget-object v5, v5, Lcom/apprichtap/haptic/player/a;->s:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/apprichtap/haptic/player/a;->v:Ljava/lang/String;

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v1

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_46f
    invoke-virtual {v1, v0, v3, v7}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;->a(Landroid/os/Message;IZ)Z

    goto/16 :goto_5a5

    :cond_474
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget-object v1, v1, Lcom/apprichtap/haptic/player/a;->g:Lc/a;

    iget-object v1, v1, Lc/a;->b:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget v5, v5, Lcom/apprichtap/haptic/player/a;->q:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c;

    iget v1, v1, Lc/c;->a:I

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget v5, v5, Lcom/apprichtap/haptic/player/a;->u:I

    sub-int/2addr v1, v5

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget-object v6, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v6}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v6

    iget-object v6, v6, Lcom/apprichtap/haptic/player/a;->g:Lc/a;

    iget-object v6, v6, Lc/a;->b:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v8}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v8

    iget v8, v8, Lcom/apprichtap/haptic/player/a;->q:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c;

    iget v6, v6, Lc/c;->a:I

    iput v6, v5, Lcom/apprichtap/haptic/player/a;->u:I

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget-object v6, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v6}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v6

    iget-object v6, v6, Lcom/apprichtap/haptic/player/a;->g:Lc/a;

    iget-object v6, v6, Lc/a;->b:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v8}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v8

    iget v8, v8, Lcom/apprichtap/haptic/player/a;->q:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c;

    invoke-virtual {v6}, Lc/c;->a()I

    move-result v6

    iput v6, v5, Lcom/apprichtap/haptic/player/a;->r:I

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    iget-object v6, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v6}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v6

    iget-object v6, v6, Lcom/apprichtap/haptic/player/a;->g:Lc/a;

    iget-object v6, v6, Lc/a;->b:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v8}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v8

    iget v8, v8, Lcom/apprichtap/haptic/player/a;->q:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c;

    invoke-static {v6, v7}, Lcom/apprichtap/haptic/base/a;->a(Lc/c;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/apprichtap/haptic/player/a;->s:Ljava/lang/String;

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "will play pattern after waitTime :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v5}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v5

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->c(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v5, v0, v1, v7}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$b;->a(Landroid/os/Message;IZ)Z

    goto :goto_5a5

    :cond_532
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iput v3, v1, Lcom/apprichtap/haptic/player/a;->i:I

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iput v3, v1, Lcom/apprichtap/haptic/player/a;->q:I

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iput v3, v1, Lcom/apprichtap/haptic/player/a;->t:I

    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iput v3, v1, Lcom/apprichtap/haptic/player/a;->u:I

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Lcom/apprichtap/haptic/player/a;->a(II)V

    goto :goto_5a5

    :cond_55e
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v1

    if-eq v6, v1, :cond_584

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore MSG_SYNC_WITH_MEDIA as status:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v0}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprichtap/haptic/player/a;->b()I

    move-result v0

    goto/16 :goto_2bf

    :goto_580
    invoke-static {v2, v0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a5

    :cond_584
    iget-object v1, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v1}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v1

    iget v1, v1, Lcom/apprichtap/haptic/player/a;->q:I

    iget-object v4, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;

    invoke-static {v4}, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;->b(Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;)Lcom/apprichtap/haptic/player/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apprichtap/haptic/player/a;->a()I

    move-result v4

    sub-int/2addr v4, v7

    if-gt v1, v4, :cond_5a5

    iget-object v0, v0, Lcom/apprichtap/haptic/player/CustomizableHapticPlayer$PlayerHandlerCallback;->this$0:Lcom/apprichtap/haptic/player/CustomizableHapticPlayer;
    :try_end_59b
    .catchall {:try_start_54 .. :try_end_59b} :catchall_80

    goto/16 :goto_a3

    :goto_59d
    const-string v1, "checking it\uff01\uff01\uff01"

    invoke-static {v2, v1}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5a5
    :goto_5a5
    return v3

    :pswitch_data_5a6
    .packed-switch 0x3e9
        :pswitch_382
        :pswitch_263
        :pswitch_258
    .end packed-switch

    :pswitch_data_5b0
    .packed-switch 0x3ed
        :pswitch_182
        :pswitch_119
        :pswitch_ac
        :pswitch_54
    .end packed-switch
.end method
