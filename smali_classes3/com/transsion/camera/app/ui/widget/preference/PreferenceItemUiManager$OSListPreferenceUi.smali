.class public Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;
.super Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OSListPreferenceUi"
.end annotation


# instance fields
.field private preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

.field private settingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V
    .registers 4

    .line 101
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;-><init>(Landroid/content/Context;)V

    .line 102
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;->type:I

    .line 103
    iput-object p3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;->preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 5

    .line 94
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;-><init>(Landroid/content/Context;)V

    .line 95
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;->type:I

    .line 96
    iput-object p3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;->preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 97
    iput-object p4, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;->settingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 9

    .line 108
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onBindView(Landroid/view/View;)V

    .line 109
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->-$$Nest$sfgetmBindViewListener()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 110
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->-$$Nest$sfgetmBindViewListener()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v1

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;->type:I

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;->preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;->settingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-object v3, p0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/app/common/ui/preference/BindViewListener;->onBindView(Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    :cond_18
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .registers 2

    .line 116
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->setDialogLayoutResource(I)V

    return-void
.end method
