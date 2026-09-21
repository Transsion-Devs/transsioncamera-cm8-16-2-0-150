.class Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3b

    const/16 v1, 0x65

    if-eq v0, v1, :cond_31

    const/16 p1, 0x12c

    if-eq v0, p1, :cond_2b

    const/16 p1, 0x1f4

    if-eq v0, p1, :cond_25

    const/16 p1, 0x1f5

    if-eq v0, p1, :cond_17

    goto :goto_24

    .line 142
    :cond_17
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->-$$Nest$fgetmIsLevelBarShowing(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->-$$Nest$mhideLevelBar(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    :cond_24
    :goto_24
    return-void

    .line 139
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->-$$Nest$mhideAllViewSuddenly(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    return-void

    .line 136
    :cond_2b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->-$$Nest$mhideAllView(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    return-void

    .line 133
    :cond_31
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->-$$Nest$mdoOnVideoPortraitSwitchChanged(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_3b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hidePopSettingTitle()V

    return-void
.end method
