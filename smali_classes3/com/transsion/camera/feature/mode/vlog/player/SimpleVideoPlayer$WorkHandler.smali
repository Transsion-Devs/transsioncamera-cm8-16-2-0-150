.class final Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Landroid/os/Looper;)V
    .registers 3

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    .line 118
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Landroid/os/Looper;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .registers 4

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    .line 168
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 165
    :pswitch_20
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$mdoSetLooping(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Z)V

    return-void

    .line 162
    :pswitch_2e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$mdoSeekTo(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;I)V

    return-void

    .line 159
    :pswitch_3c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$mdoSetDataSource(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Ljava/lang/String;)V

    return-void

    .line 156
    :pswitch_46
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$mdoRelease(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    return-void

    .line 153
    :pswitch_4c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$mdoStop(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    return-void

    .line 150
    :pswitch_52
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$mdoPause(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    return-void

    .line 143
    :pswitch_58
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_62

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$mdoStart(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    return-void

    .line 146
    :cond_62
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$mdoStart(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;I)V

    return-void

    .line 140
    :pswitch_6e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$mdoPrepare(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    return-void

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_58
        :pswitch_52
        :pswitch_4c
        :pswitch_46
        :pswitch_3c
        :pswitch_2e
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    if-ltz v0, :cond_60

    const/4 v1, 0x7

    if-le v0, v1, :cond_8

    goto :goto_60

    .line 128
    :cond_8
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$sfgetCOMMANDS()[Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 131
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;->processMessage(Landroid/os/Message;)V

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 134
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$sfgetCOMMANDS()[Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end process time: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_60
    :goto_60
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage wrong command\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
