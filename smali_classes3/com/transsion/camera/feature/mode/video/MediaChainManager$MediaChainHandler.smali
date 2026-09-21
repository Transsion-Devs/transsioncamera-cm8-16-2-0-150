.class final Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/MediaChainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaChainHandler"
.end annotation


# instance fields
.field private mUnInit:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Landroid/os/Looper;)V
    .registers 3

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    .line 173
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->mUnInit:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/video/MediaChainManager-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;-><init>(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Landroid/os/Looper;)V

    return-void
.end method

.method private processCommand(Landroid/os/Message;)V
    .registers 4

    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_15a

    .line 236
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 222
    :pswitch_20
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCommand MSG_COMMAND_UNINIT, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-eq p1, v0, :cond_67

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-ne p1, v0, :cond_53

    goto :goto_67

    .line 228
    :cond_53
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-ne p1, v0, :cond_63

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$mdoUnInit(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    return-void

    :cond_63
    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->mUnInit:Z

    return-void

    .line 225
    :cond_67
    :goto_67
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$mdoUnLoadingAlgorithm(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$mdoUnInit(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    sget-object p1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fputmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)V

    return-void

    .line 208
    :pswitch_79
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCommand MSG_COMMAND_PROCESS_END, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESSING:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-ne p1, v0, :cond_ad

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$mdoProcessEnd(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 211
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fputmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)V

    .line 214
    :cond_ad
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->mUnInit:Z

    if-eqz p1, :cond_10c

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$mdoUnLoadingAlgorithm(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$mdoUnInit(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    sget-object p1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fputmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)V

    return-void

    .line 194
    :pswitch_c3
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCommand MSG_COMMAND_PROCESS, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-ne p1, v0, :cond_f7

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$mdoLoadingAlgorithm(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fputmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)V

    .line 200
    :cond_f7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-eq p1, v0, :cond_10d

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-ne p1, v0, :cond_10c

    goto :goto_10d

    :cond_10c
    return-void

    .line 202
    :cond_10d
    :goto_10d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$mdoProcess(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    sget-object p1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESSING:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fputmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)V

    return-void

    .line 184
    :pswitch_11a
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCommand MSG_COMMAND_LOAD_ALGORITHM, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fgetmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-ne p1, v0, :cond_14f

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$mdoLoadingAlgorithm(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    sget-object p1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$fputmMediaChainState(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)V

    return-void

    .line 189
    :cond_14f
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "Algorithm is loaded."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_15a
    .packed-switch 0xa
        :pswitch_11a
        :pswitch_c3
        :pswitch_79
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 178
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->processCommand(Landroid/os/Message;)V

    return-void
.end method
