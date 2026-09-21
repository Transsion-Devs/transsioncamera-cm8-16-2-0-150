.class public Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$NonePreferenceUi;
.super Landroid/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonePreferenceUi"
.end annotation


# instance fields
.field private preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V
    .registers 4

    .line 157
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 158
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$NonePreferenceUi;->type:I

    .line 159
    iput-object p3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$NonePreferenceUi;->preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 5

    .line 164
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 165
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->-$$Nest$sfgetmBindViewListener()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->-$$Nest$sfgetmBindViewListener()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$NonePreferenceUi;->type:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$NonePreferenceUi;->preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    invoke-interface {v0, p1, p0, v1, v2}, Lcom/transsion/camera/app/common/ui/preference/BindViewListener;->onBindView(Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    :cond_14
    return-void
.end method
