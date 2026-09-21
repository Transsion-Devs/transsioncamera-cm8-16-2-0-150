.class public Lcom/transsion/widgetslib/preference/OSListPreference;
.super Lcom/transsion/widgetslib/preference/OSDialogPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 52
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OsListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 32
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OsListPreference_entries:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 33
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OsListPreference_entryValues:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/preference/OSListPreference;I)I
    .registers 2

    .line 19
    iput p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .registers 4

    if-eqz p1, :cond_19

    .line 213
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    .line 214
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_19

    .line 215
    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .registers 2

    .line 202
    invoke-direct {p0}, Lcom/transsion/widgetslib/preference/OSListPreference;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_d

    .line 203
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_d

    aget-object p0, p0, v0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 3

    .line 148
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 150
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_d
    if-nez v0, :cond_11

    .line 152
    const-string v0, ""

    :cond_11
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method protected onDialogClosed(Z)V
    .registers 3

    .line 261
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_1c

    .line 263
    iget p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mClickedDialogEntryIndex:I

    if-ltz p1, :cond_1c

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    .line 264
    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 266
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValue(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    .line 273
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V
    .registers 5

    .line 229
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V

    .line 231
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_20

    .line 236
    invoke-direct {p0}, Lcom/transsion/widgetslib/preference/OSListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mClickedDialogEntryIndex:I

    .line 237
    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/transsion/widgetslib/preference/OSListPreference$1;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/preference/OSListPreference$1;-><init>(Lcom/transsion/widgetslib/preference/OSListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/4 p0, 0x0

    .line 256
    invoke-virtual {p1, p0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void

    .line 232
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1e

    .line 303
    :cond_f
    check-cast p1, Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;

    .line 304
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 305
    iget-object p1, p1, Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 299
    :cond_1e
    :goto_1e
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 283
    invoke-super {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 289
    :cond_b
    new-instance v1, Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 290
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;->value:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 278
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_9
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_c
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setEntries(I)V
    .registers 3

    .line 79
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues(I)V
    .registers 3

    .line 107
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 3

    .line 167
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_d

    .line 168
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mSummary:Ljava/lang/String;

    return-void

    :cond_d
    if-eqz p1, :cond_1d

    .line 170
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 171
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mSummary:Ljava/lang/String;

    :cond_1d
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 128
    iget-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mValueSet:Z

    if-nez v1, :cond_19

    .line 129
    :cond_c
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mValue:Ljava/lang/String;

    const/4 v1, 0x1

    .line 130
    iput-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mValueSet:Z

    .line 131
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistString(Ljava/lang/String;)Z

    if-nez v0, :cond_19

    .line 133
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_19
    return-void
.end method

.method public setValueIndex(I)V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 182
    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValue(Ljava/lang/String;)V

    :cond_d
    return-void
.end method
