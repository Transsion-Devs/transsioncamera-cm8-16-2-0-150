.class final Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NightLiteShutterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V
    .registers 2

    .line 808
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    return-void
.end method


# virtual methods
.method public onShutterCancel()V
    .registers 1

    return-void
.end method

.method public onShutterClick(II)Z
    .registers 4

    .line 812
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mnotifyNightSwitch(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    .line 813
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmSelfTimerOn(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_f

    return p2

    .line 816
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    return v0

    .line 819
    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmEntryRootView(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2a

    return v0

    .line 824
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->superNightLiteOn()Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$NightLiteShutterListener;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->nightLiteSwitch()Z

    :cond_37
    return p2
.end method

.method public onShutterDown()V
    .registers 1

    return-void
.end method

.method public onShutterLongClick(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterUp(I)V
    .registers 2

    return-void
.end method
