.class Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 258
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    return-void

    .line 272
    :pswitch_6
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$mdoResetCapturingUI(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    return-void

    .line 269
    :pswitch_c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->dismissPopup()Z

    return-void

    .line 266
    :pswitch_12
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_22

    move v1, v2

    :cond_22
    invoke-static {p0, v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$mhideSeekBar(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;ZZ)V

    return-void

    .line 263
    :pswitch_26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$mupdateSettingItemsLayout(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Ljava/util/List;)V

    return-void

    .line 260
    :pswitch_30
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$mhandleInflateViewIfNeed(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;I)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x64
        :pswitch_30
        :pswitch_26
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
