.class Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->onItemClick()V
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

    .line 711
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$6;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 714
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$6;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmPreference(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Landroid/preference/Preference;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;

    if-eqz p1, :cond_16

    .line 715
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$6;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmPreference(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->onDialogClosed(Z)V

    .line 717
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$6;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmRotateDialog(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    return-void
.end method
