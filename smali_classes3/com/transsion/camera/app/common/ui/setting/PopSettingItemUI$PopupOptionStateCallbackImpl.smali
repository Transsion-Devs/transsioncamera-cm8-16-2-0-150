.class Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupOptionStateCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V
    .registers 2

    .line 1052
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V

    return-void
.end method


# virtual methods
.method public onActionUp()V
    .registers 1

    return-void
.end method

.method public onCustomOptionIndexChanged()V
    .registers 2

    .line 1063
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$minterceptClickByLowPower(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 1066
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1067
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;->onCustomItemSelected()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onDismiss(Z)V
    .registers 4

    .line 1077
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmEntryLayout(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 1078
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmEntryLayout(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1080
    :cond_1b
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$maddOnPreDrawListener(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V

    .line 1081
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_flash_facade"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 1082
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateHighLightShow(I)V

    :cond_36
    return-void
.end method

.method public onOptionIndexChanged(I)V
    .registers 3

    .line 1055
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$minterceptClickByLowPower(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1058
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$msetValueByIndex(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;I)V

    return-void
.end method

.method public onShow()V
    .registers 1

    return-void
.end method
