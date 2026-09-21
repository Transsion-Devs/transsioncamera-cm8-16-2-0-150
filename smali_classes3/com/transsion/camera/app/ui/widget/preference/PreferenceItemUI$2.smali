.class Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$2;
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

    .line 609
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$2;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 612
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$2;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fputmCurrentEntryValue(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;Ljava/lang/String;)V

    .line 613
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$2;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    iget-object p2, p1, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p2, :cond_14

    .line 614
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$fgetmCurrentEntryValue(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 616
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI$2;->this$0:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->-$$Nest$mupdatePreferenceUI(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;)V

    const/4 p0, 0x1

    return p0
.end method
