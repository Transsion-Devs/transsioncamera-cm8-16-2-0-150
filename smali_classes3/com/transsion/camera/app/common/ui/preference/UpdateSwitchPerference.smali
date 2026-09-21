.class public abstract Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;
.super Landroid/preference/SwitchPreference;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDialogButtonText:Ljava/lang/CharSequence;

.field private mDialogListener:Landroid/view/View$OnClickListener;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mEntrySummaries:[Ljava/lang/String;

.field private mMessageLayout:Landroid/widget/LinearLayout;

.field private mNegativeText:Ljava/lang/CharSequence;

.field private mNormalDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mNormalDialogMessage:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mUpdateDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mUpdateDialogMessage:Ljava/lang/CharSequence;

.field private mUpdateIcon:Landroid/widget/ImageView;

.field private needShowUpdateIcon:Z

.field private view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$0DNlzsy2rp4kB49hX_40XNa3ccA(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 145
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$dVUnJ43PhxBq_9l6dPnejc398Bw(Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->lambda$showUpdateDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ej9oAvl1_K9lIZXbHgIXzSpS7r4(Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->lambda$showUpdateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101036d

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private synthetic lambda$showUpdateDialog$1(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p2, 0x1

    .line 159
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->onDialogClosed(Z)V

    const/4 p2, 0x4

    .line 160
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->setUpdateIconVisibility(I)V

    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showUpdateDialog$2(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p2, 0x0

    .line 164
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->onDialogClosed(Z)V

    .line 165
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private showNormalDialog()V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mNormalDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 141
    :cond_b
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mNormalDialogMessage:Ljava/lang/CharSequence;

    .line 143
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mDialogButtonText:Ljava/lang/CharSequence;

    new-instance v2, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference$$ExternalSyntheticLambda2;-><init>()V

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mNormalDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 148
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private showUpdateDialog()V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mUpdateDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 155
    :cond_b
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 156
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mUpdateDialogMessage:Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mPositiveButtonText:Ljava/lang/CharSequence;

    new-instance v2, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;)V

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mNegativeText:Ljava/lang/CharSequence;

    new-instance v2, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;)V

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mUpdateDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 168
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method


# virtual methods
.method public hideDialog()V
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mUpdateDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mUpdateDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 181
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mNormalDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mNormalDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mUpdateIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->showUpdateDialog()V

    return-void

    .line 99
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->showNormalDialog()V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 66
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/app/common/R$layout;->update_switch_preference:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->view:Landroid/view/View;

    .line 69
    sget v0, Lcom/transsion/camera/app/common/R$id;->message_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mMessageLayout:Landroid/widget/LinearLayout;

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->view:Landroid/view/View;

    sget v0, Lcom/transsion/camera/app/common/R$id;->update_ico:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mUpdateIcon:Landroid/widget/ImageView;

    .line 72
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->needShowUpdateIcon:Z

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v2, 0x4

    :goto_33
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->setUpdateIconVisibility(I)V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->view:Landroid/view/View;

    return-object p0
.end method

.method protected onDialogClosed(Z)V
    .registers 2

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mDialogListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 173
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public setDialogButtonText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mDialogButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDialogListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mDialogListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setNegativeText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mNegativeText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNormalDialogMessage(Ljava/lang/CharSequence;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mNormalDialogMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setShowUpdateIcon(Z)V
    .registers 2

    .line 104
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->needShowUpdateIcon:Z

    return-void
.end method

.method public setSummarys([Ljava/lang/String;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mEntrySummaries:[Ljava/lang/String;

    return-void
.end method

.method public setUpdateDialogMessage(Ljava/lang/CharSequence;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mUpdateDialogMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setUpdateIconVisibility(I)V
    .registers 5

    if-nez p1, :cond_e

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mEntrySummaries:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_e

    .line 109
    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 110
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mEntrySummaries:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_19

    .line 111
    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 113
    :cond_19
    :goto_19
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;->mUpdateIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
