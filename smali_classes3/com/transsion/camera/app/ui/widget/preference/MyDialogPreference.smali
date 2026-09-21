.class public abstract Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$DialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mDialogListener:Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$DialogListener;

.field private mIsDebugPreference:Z

.field private mUIMode:I


# direct methods
.method public static synthetic $r8$lambda$DNf9hXh1rGA3YstgiaB1aSVI6pA(Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->lambda$onClick$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hxORFrWUlkyayO3YsWKuHpffcD0(Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->lambda$onClick$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MyDialogPreference"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mIsDebugPreference:Z

    .line 35
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mCurrentCount:I

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mUIMode:I

    return-void
.end method

.method private closeDeveloperMode()V
    .registers 2

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/FeatureSupport;->updateDeveloperMode(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p2, 0x1

    .line 100
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->onDialogClosed(Z)V

    .line 101
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onClick$1(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p2, 0x0

    .line 104
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->onDialogClosed(Z)V

    .line 105
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private openDeveloperMode()V
    .registers 2

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/FeatureSupport;->updateDeveloperMode(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public hideDialog()V
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

.method protected onClick()V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 91
    :cond_b
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 92
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_preference_dialog_positive_string:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 96
    :cond_26
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/app/common/R$string;->btn_negative:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v2

    .line 98
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;)V

    .line 99
    invoke-virtual {v2, v0, v3}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;)V

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 108
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    :cond_f
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mUIMode:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-ne v0, v1, :cond_16

    return-void

    .line 78
    :cond_16
    sget-object v0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uiMode changed: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mUIMode:I

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

    .line 80
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mUIMode:I

    and-int/lit8 v0, v0, 0x30

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eq v0, v1, :cond_4e

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->hideDialog()V

    .line 83
    :cond_4e
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mUIMode:I

    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mDialogListener:Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$DialogListener;

    if-eqz v0, :cond_7

    .line 114
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$DialogListener;->onDialogClosed(Z)V

    .line 116
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mIsDebugPreference:Z

    if-eqz v0, :cond_20

    if-nez p1, :cond_1a

    .line 118
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mCurrentCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mCurrentCount:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_20

    .line 120
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->openDeveloperMode()V

    return-void

    :cond_1a
    const/4 p1, 0x0

    .line 123
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mCurrentCount:I

    .line 124
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->closeDeveloperMode()V

    :cond_20
    return-void
.end method

.method public setDialogListener(Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$DialogListener;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mDialogListener:Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference$DialogListener;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 3

    .line 67
    invoke-super {p0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 68
    const-string v0, "key_restore_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/preference/MyDialogPreference;->mIsDebugPreference:Z

    return-void
.end method
