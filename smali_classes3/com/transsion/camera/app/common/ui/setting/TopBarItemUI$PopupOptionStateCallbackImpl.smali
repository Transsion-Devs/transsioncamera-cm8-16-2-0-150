.class Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupOptionStateCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V
    .registers 2

    .line 1414
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    return-void
.end method


# virtual methods
.method public onActionUp()V
    .registers 1

    return-void
.end method

.method public onCustomOptionIndexChanged()V
    .registers 1

    return-void
.end method

.method public onDismiss(Z)V
    .registers 3

    .line 1434
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-object v0, p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1d

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fgetmFilterUIShow(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fgetmCelebritySceneUIShow(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 1435
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 1437
    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateHighLightShow()V

    .line 1438
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupWindowShow:Z

    .line 1439
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fputmChangePopWindowHide(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Z)V

    return-void
.end method

.method public onOptionIndexChanged(I)V
    .registers 3

    .line 1417
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$minterceptClickByLowPower(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1420
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$msetValueByIndex(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;I)V

    return-void
.end method

.method public onShow()V
    .registers 1

    return-void
.end method
