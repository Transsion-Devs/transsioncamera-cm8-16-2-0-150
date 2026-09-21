.class public Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;
.super Landroid/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFragmentPreferenceUi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi$OnSwitchStateListener;
    }
.end annotation


# instance fields
.field mCreate:Z

.field mListener:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi$OnSwitchStateListener;

.field mSwitchChecked:Z

.field mSwitchWidget:Landroid/widget/Switch;

.field private preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

.field private type:I


# direct methods
.method public static synthetic $r8$lambda$DmGcPex7OdbMivHWZCBSpN03HFo(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->lambda$onBindView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V
    .registers 4

    .line 178
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 179
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->type:I

    .line 180
    iput-object p3, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    return-void
.end method

.method private synthetic lambda$onBindView$0(Landroid/view/View;)V
    .registers 2

    .line 200
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->mListener:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi$OnSwitchStateListener;

    if-eqz p0, :cond_d

    .line 202
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi$OnSwitchStateListener;->onSwitchChange(Z)V

    :cond_d
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 5

    .line 191
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 192
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->-$$Nest$sfgetmBindViewListener()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 193
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->-$$Nest$sfgetmBindViewListener()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->type:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->preferenceItemUI:Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    invoke-interface {v0, p1, p0, v1, v2}, Lcom/transsion/camera/app/common/ui/preference/BindViewListener;->onBindView(Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    .line 195
    :cond_14
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->mCreate:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->mCreate:Z

    .line 197
    sget v0, Lcom/transsion/camera/app/common/R$id;->custom_preference_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->mSwitchWidget:Landroid/widget/Switch;

    if-eqz p1, :cond_36

    .line 199
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->mSwitchWidget:Landroid/widget/Switch;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->mSwitchChecked:Z

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_36
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->mCreate:Z

    .line 186
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onSwitchChanged(Z)V
    .registers 2

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->mSwitchWidget:Landroid/widget/Switch;

    if-eqz p0, :cond_7

    .line 220
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_7
    return-void
.end method

.method public setSwitchCallback(Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi$OnSwitchStateListener;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->mListener:Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi$OnSwitchStateListener;

    return-void
.end method

.method public setSwitchChecked(Z)V
    .registers 2

    .line 215
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;->mSwitchChecked:Z

    return-void
.end method
