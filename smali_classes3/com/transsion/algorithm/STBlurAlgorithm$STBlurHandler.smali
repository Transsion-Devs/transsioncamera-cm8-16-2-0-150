.class Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/algorithm/STBlurAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "STBlurHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/algorithm/STBlurAlgorithm;


# direct methods
.method constructor <init>(Lcom/transsion/algorithm/STBlurAlgorithm;Landroid/os/Looper;)V
    .registers 3

    .line 228
    iput-object p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    .line 229
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 234
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 236
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    return-void

    .line 262
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 263
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {v0, p1}, Lcom/transsion/algorithm/STBlurAlgorithm;->-$$Nest$mhandleChangeLevel(Lcom/transsion/algorithm/STBlurAlgorithm;I)V

    .line 264
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {p0, p1}, Lcom/transsion/algorithm/STBlurAlgorithm;->-$$Nest$mhandleChangeKernel(Lcom/transsion/algorithm/STBlurAlgorithm;I)V

    return-void

    .line 258
    :pswitch_1c
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/algorithm/STBlurConfig;

    invoke-static {p0, p1}, Lcom/transsion/algorithm/STBlurAlgorithm;->-$$Nest$mhandleChangeConfig(Lcom/transsion/algorithm/STBlurAlgorithm;Lcom/transsion/algorithm/STBlurConfig;)V

    return-void

    .line 254
    :pswitch_26
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->-$$Nest$mhandleInitRender(Lcom/transsion/algorithm/STBlurAlgorithm;)V

    return-void

    .line 250
    :pswitch_2c
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->-$$Nest$mhandleUnInitSTBlur(Lcom/transsion/algorithm/STBlurAlgorithm;)V

    return-void

    .line 246
    :pswitch_32
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->-$$Nest$mhandlePauseSTBlur(Lcom/transsion/algorithm/STBlurAlgorithm;)V

    return-void

    .line 242
    :pswitch_38
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->-$$Nest$mhandleResumeSTBlur(Lcom/transsion/algorithm/STBlurAlgorithm;)V

    return-void

    .line 238
    :pswitch_3e
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->-$$Nest$mhandleInitSTBlur(Lcom/transsion/algorithm/STBlurAlgorithm;)V

    return-void

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_1c
        :pswitch_9
    .end packed-switch
.end method
