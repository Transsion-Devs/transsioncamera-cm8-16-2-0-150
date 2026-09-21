.class Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$MyDialogPreferenceUi;
.super Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyDialogPreferenceUi"
.end annotation


# instance fields
.field private preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V
    .registers 4

    .line 125
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;-><init>(Landroid/content/Context;)V

    .line 126
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$MyDialogPreferenceUi;->type:I

    .line 127
    iput-object p3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$MyDialogPreferenceUi;->preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 5

    .line 132
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 133
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->-$$Nest$sfgetmBindViewListener()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->-$$Nest$sfgetmBindViewListener()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$MyDialogPreferenceUi;->type:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$MyDialogPreferenceUi;->preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    invoke-interface {v0, p1, p0, v1, v2}, Lcom/transsion/camera/app/common/ui/preference/BindViewListener;->onBindView(Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    :cond_14
    return-void
.end method
