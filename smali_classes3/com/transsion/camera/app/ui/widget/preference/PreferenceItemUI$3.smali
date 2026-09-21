.class Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V
    .registers 2

    .line 622
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$3;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 625
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "CustomOSListPrefe     onPreferenceChange "

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 626
    const-string/jumbo p1, "true"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "on"

    goto :goto_17

    :cond_15
    const-string p1, "off"

    .line 627
    :goto_17
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$3;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    iget-object p2, p2, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p2, :cond_20

    .line 628
    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onExtraValueChanged(Ljava/lang/String;)V

    .line 630
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$3;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmPreference(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 632
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$3;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmPreference(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 634
    :cond_3d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$3;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$mupdatePreferenceUI(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    const/4 p0, 0x1

    return p0
.end method
