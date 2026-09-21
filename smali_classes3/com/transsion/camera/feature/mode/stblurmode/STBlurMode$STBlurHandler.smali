.class Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "STBlurHandler"
.end annotation


# static fields
.field private static final MSG_STBLUR_CHANGE_CONFIG:I = 0x6

.field private static final MSG_STBLUR_CHANGE_LEVEL:I = 0x8

.field private static final MSG_STBLUR_INIT:I = 0x1

.field private static final MSG_STBLUR_INIT_FACELIGHTING:I = 0x7

.field private static final MSG_STBLUR_INIT_RENDER:I = 0x5

.field private static final MSG_STBLUR_PAUSE:I = 0x3

.field private static final MSG_STBLUR_RESUME:I = 0x2

.field private static final MSG_STBLUR_UNINIT:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Landroid/os/Looper;)V
    .registers 3

    .line 779
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    .line 780
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 785
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 787
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_66

    .line 820
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 815
    :pswitch_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 816
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$mhandleChangeLevel(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;I)V

    .line 817
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$mhandleChangeKernel(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;I)V

    return-void

    .line 812
    :pswitch_38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$mhandleInitFacelighting(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    return-void

    .line 809
    :pswitch_3e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$mhandleChangeConfig(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;)V

    return-void

    .line 805
    :pswitch_48
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$mhandleInitRender(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    return-void

    .line 801
    :pswitch_4e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$mhandleUnInitSTBlur(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    return-void

    .line 797
    :pswitch_54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$mhandlePauseSTBlur(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    return-void

    .line 793
    :pswitch_5a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$mhandleResumeSTBlur(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    return-void

    .line 789
    :pswitch_60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$mhandleInitSTBlur(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    return-void

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5a
        :pswitch_54
        :pswitch_4e
        :pswitch_48
        :pswitch_3e
        :pswitch_38
        :pswitch_25
    .end packed-switch
.end method
