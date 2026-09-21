.class Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference$1;->this$0:Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 4

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference$1;->this$0:Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->-$$Nest$fgetmOnExtraChangeListener(Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference$1;->this$0:Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->-$$Nest$fgetmOnExtraChangeListener(Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_23
    return-void
.end method
