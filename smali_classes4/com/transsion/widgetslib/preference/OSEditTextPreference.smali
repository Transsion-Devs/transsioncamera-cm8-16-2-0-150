.class public Lcom/transsion/widgetslib/preference/OSEditTextPreference;
.super Lcom/transsion/widgetslib/preference/OSDialogPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mText:Ljava/lang/String;

.field private mTextSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 68
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsEditTextPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    new-instance p3, Landroid/widget/EditText;

    invoke-direct {p3, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 49
    const-string p1, "com.android.internal.R$id"

    const-string p2, "edit"

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/util/Utils;->getReflectFieldInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 50
    iget-object p2, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 59
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mEditText:Landroid/widget/EditText;

    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_dialog_edittext_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mEditText:Landroid/widget/EditText;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mText:Ljava/lang/String;

    return-object p0
.end method

.method protected needInputMethod()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .registers 4

    .line 125
    sget p0, Lcom/transsion/widgetslib/R$id;->edittext_container:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_f

    const/4 p1, -0x1

    const/4 v0, -0x2

    .line 127
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_f
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 4

    .line 105
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 108
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p1, :cond_1c

    if-eqz v1, :cond_19

    .line 113
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 115
    :cond_19
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    :cond_1c
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 3

    .line 134
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_18

    .line 137
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 139
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->setText(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    .line 146
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1e

    .line 196
    :cond_f
    check-cast p1, Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;

    .line 197
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 198
    iget-object p1, p1, Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->setText(Ljava/lang/String;)V

    return-void

    .line 192
    :cond_1e
    :goto_1e
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 177
    invoke-super {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 183
    :cond_b
    new-instance v1, Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 184
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;->text:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 151
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_9
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_c
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 83
    iget-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mTextSet:Z

    if-nez v1, :cond_20

    .line 84
    :cond_c
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mText:Ljava/lang/String;

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mTextSet:Z

    .line 86
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistString(Ljava/lang/String;)Z

    if-nez v0, :cond_20

    .line 88
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 89
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_20
    return-void
.end method

.method public shouldDisableDependents()Z
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method
