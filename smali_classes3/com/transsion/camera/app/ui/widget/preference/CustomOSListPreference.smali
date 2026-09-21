.class public abstract Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;
.super Lcom/transsion/widgetslib/preference/OSListPreference;
.source "SourceFile"


# instance fields
.field private TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mCustomLayoutSupport:Z

.field private mCustomPerference:Landroid/view/View;

.field private mCustomSwitchButton:Landroid/widget/Switch;

.field private mOnClickCallback:Landroid/view/View$OnClickListener;

.field private mOnExtraChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mOnMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mRootLayout:Landroid/view/View;

.field private mSecondLayout:Landroid/widget/LinearLayout;

.field private mSecondSummaryString:Ljava/lang/String;

.field private mSecondSummaryView:Landroid/widget/TextView;

.field private mSecondTitleString:Ljava/lang/String;

.field private mSecondTitleView:Landroid/widget/TextView;

.field private mState:Z

.field private mUIMode:I


# direct methods
.method public static synthetic $r8$lambda$89tSS4Lojl_QAybpFrhXP-l2Szs(Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmOnExtraChangeListener(Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;)Landroid/preference/Preference$OnPreferenceChangeListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mOnExtraChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CustomOSListPreference"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mState:Z

    .line 88
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mOnClickCallback:Landroid/view/View$OnClickListener;

    .line 97
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference$1;-><init>(Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mOnMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mUIMode:I

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 4

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOnClick   mCustomSwitchButton.isChecked()  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mCustomSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mCustomSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mCustomSwitchButton:Landroid/widget/Switch;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mOnExtraChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz p0, :cond_44

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_44
    return-void
.end method


# virtual methods
.method public getCustomLayoutClickListener()Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mOnMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object p0
.end method

.method public getCustomLayoutSupport()Z
    .registers 1

    .line 157
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mCustomLayoutSupport:Z

    return p0
.end method

.method public getSecondSummary()Ljava/lang/String;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondSummaryString:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondTitle()Ljava/lang/String;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondTitleString:Ljava/lang/String;

    return-object p0
.end method

.method public getSwitchCkecked()Z
    .registers 1

    .line 138
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mState:Z

    return p0
.end method

.method public hideDialog()V
    .registers 2

    .line 142
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 143
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 144
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 76
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mUIMode:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-ne v0, v1, :cond_a

    return-void

    .line 80
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uiMode changed: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mUIMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ---> 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mUIMode:I

    and-int/lit8 v0, v0, 0x30

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eq v0, v1, :cond_42

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->hideDialog()V

    .line 85
    :cond_42
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mUIMode:I

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .registers 5

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialogView  mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->getDialogLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    return-object v1

    .line 51
    :cond_20
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "onCreateDialogView  1"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mRootLayout:Landroid/view/View;

    .line 54
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->custom_perference:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mCustomPerference:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mRootLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->custom_switch_widget:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mCustomSwitchButton:Landroid/widget/Switch;

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mRootLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->preference_list_second_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondTitleView:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mRootLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->preference_list_second_summary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondSummaryView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mRootLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->custom_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondLayout:Landroid/widget/LinearLayout;

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondSummaryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_84

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8b

    .line 63
    :cond_84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondSummaryView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondSummaryString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_8b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mCustomSwitchButton:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mState:Z

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mCustomPerference:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mOnClickCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mCustomLayoutSupport:Z

    if-nez v0, :cond_a2

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_a2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mRootLayout:Landroid/view/View;

    return-object p0
.end method

.method public setCustomLayoutSupport(Z)V
    .registers 2

    .line 153
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mCustomLayoutSupport:Z

    return-void
.end method

.method public setDialogLayoutResource(I)V
    .registers 5

    .line 120
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recording_effect_dialog_layout"

    const-string v2, "layout"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogLayoutResource(I)V

    return-void
.end method

.method public setOnExtraPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setOnExtraPreferenceChangeListener"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mOnExtraChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setSecondSummary(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondSummaryString:Ljava/lang/String;

    return-void
.end method

.method public setSecondTitle(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mSecondTitleString:Ljava/lang/String;

    return-void
.end method

.method public setSwitchChecked(Z)V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitchChecked  state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/preference/CustomOSListPreference;->mState:Z

    return-void
.end method
