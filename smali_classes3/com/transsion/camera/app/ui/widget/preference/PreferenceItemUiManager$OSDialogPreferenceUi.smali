.class public abstract Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSDialogPreferenceUi;
.super Lcom/transsion/widgetslib/preference/OSDialogPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OSDialogPreferenceUi"
.end annotation


# instance fields
.field private final mSettingUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V
    .registers 4

    .line 256
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;)V

    .line 257
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSDialogPreferenceUi;->mType:I

    .line 258
    iput-object p3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSDialogPreferenceUi;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 5

    .line 263
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onBindView(Landroid/view/View;)V

    .line 264
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->-$$Nest$sfgetmBindViewListener()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 266
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSDialogPreferenceUi;->mType:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSDialogPreferenceUi;->mSettingUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    invoke-interface {v0, p1, p0, v1, v2}, Lcom/transsion/camera/app/common/ui/preference/BindViewListener;->onBindView(Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    :cond_10
    return-void
.end method
