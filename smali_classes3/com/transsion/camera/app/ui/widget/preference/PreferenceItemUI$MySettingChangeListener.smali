.class Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$MySettingChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySettingChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V
    .registers 2

    .line 649
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 649
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$MySettingChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 654
    const-string v0, "key_restore_settings"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "on"

    if-eqz v0, :cond_2e

    .line 655
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$UIHandler;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 658
    :cond_2e
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mPreference = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmPreference(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 659
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmPreference(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Landroid/preference/Preference;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;

    if-eqz p1, :cond_6d

    .line 660
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmPreference(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->onSwitchChanged(Z)V

    :cond_6d
    return-void
.end method
