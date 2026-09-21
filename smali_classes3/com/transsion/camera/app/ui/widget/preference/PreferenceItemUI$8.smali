.class Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->onPrepareDialogBuilder(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;)V
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

    .line 743
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$8;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 745
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$8;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fputmClickedDialogEntryIndex(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;I)V

    .line 746
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$8;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmPreference(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/preference/OSListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fputmCurrentEntryValue(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Ljava/lang/String;)V

    .line 747
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$8;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmPreference(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/preference/OSListPreference;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$8;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmCurrentEntryValue(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValue(Ljava/lang/String;)V

    .line 748
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$8;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    iget-object p2, p1, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p2, :cond_36

    .line 749
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmCurrentEntryValue(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 751
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$8;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$mupdatePreferenceUI(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    .line 752
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$8;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmRotateDialog(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    return-void
.end method
