.class public abstract Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INDEX_FIRST:I = 0x0

.field public static final TYPE_CLICK:I = 0x1

.field public static final TYPE_CUSTOM_FRAGMENT:I = 0x6

.field public static final TYPE_FRAGMENT:I = 0x5

.field public static final TYPE_LIST:I = 0x3

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_NO_PRESET_LIST:I = 0x4

.field public static final TYPE_TOGGLE:I = 0x2

.field public static final TYPE_UPDATE:I = 0x7


# instance fields
.field protected mCustomLayoutSupport:Z

.field protected mDescrition:Ljava/lang/String;

.field protected mDialogButtonText:Ljava/lang/String;

.field protected mDialogClickCallback:Landroid/view/View$OnClickListener;

.field protected mDialogLayoutResId:I

.field protected mDialogTitle:Ljava/lang/String;

.field protected mEntries:[Ljava/lang/String;

.field protected mEntryAnimations:[Ljava/lang/String;

.field protected mEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field protected mEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

.field protected mEntryExtHighLightDrawables:[Landroid/graphics/drawable/Drawable;

.field protected mEntrySummaries:[Ljava/lang/String;

.field protected mEntryValues:[Ljava/lang/String;

.field protected mEntryViewId:I

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field private final mKey:Ljava/lang/String;

.field protected mMessage:Ljava/lang/String;

.field protected mNegativeText:Ljava/lang/String;

.field protected mPositiveText:Ljava/lang/String;

.field protected mSecondSummary:Ljava/lang/String;

.field protected mSecondTitle:Ljava/lang/String;

.field protected mShouldEscape:Z

.field protected mShowUpdateIcon:Z

.field protected mSupportVisible:Z

.field protected mSupportedEntries:[Ljava/lang/String;

.field protected mSupportedEntryAnimations:[Ljava/lang/String;

.field protected mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field protected mSupportedEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

.field protected mSupportedEntryExtHighLightDrawables:[Landroid/graphics/drawable/Drawable;

.field protected mSupportedEntrySummaries:[Ljava/lang/String;

.field protected mSupportedEntryValues:[Ljava/lang/String;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mTitle:Ljava/lang/String;

.field private final mType:I

.field protected mUpdateMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/Resources;)V
    .registers 6

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportVisible:Z

    .line 94
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mKey:Ljava/lang/String;

    .line 96
    iput p2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mType:I

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->initEntryViewId()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryViewId:I

    .line 98
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static loadAnimations(Landroid/content/Context;[I)[Landroid/view/animation/Animation;
    .registers 5

    .line 249
    array-length v0, p1

    new-array v0, v0, [Landroid/view/animation/Animation;

    const/4 v1, 0x0

    .line 250
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 251
    aget v2, p1, v1

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method protected static typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 233
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 234
    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_1d

    .line 237
    invoke-virtual {p0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 238
    invoke-static {v4}, Lcom/transsion/camera/utils/ResCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_18

    .line 240
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 242
    :cond_18
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1d
    return-object v1
.end method


# virtual methods
.method public createSupportedEntries(Ljava/lang/String;[ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    return-void
.end method

.method public abstract createSupportedEntries(Ljava/util/List;)V
.end method

.method public getCustomFragment()Landroid/app/Fragment;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mDescrition:Ljava/lang/String;

    return-object p0
.end method

.method public getDialogButtonText()Ljava/lang/String;
    .registers 1

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mDialogButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getDialogClickCallback()Landroid/view/View$OnClickListener;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mDialogClickCallback:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getDialogLayoutResId()I
    .registers 1

    .line 298
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mDialogLayoutResId:I

    return p0
.end method

.method public getDialogTitle()Ljava/lang/String;
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mDialogTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getEntryViewId()I
    .registers 1

    .line 161
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryViewId:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIndex(Ljava/lang/String;)I
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getNegativeText()Ljava/lang/String;
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mNegativeText:Ljava/lang/String;

    return-object p0
.end method

.method public getPositiveText()Ljava/lang/String;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mPositiveText:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondSummary()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSecondSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondTitle()Ljava/lang/String;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSecondTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedAnimation()[Ljava/lang/String;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryAnimations:[Ljava/lang/String;

    if-nez v0, :cond_7

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryAnimations:[Ljava/lang/String;

    return-object p0

    :cond_7
    return-object v0
.end method

.method public getSupportedEntries()[Ljava/lang/String;
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    if-nez v0, :cond_e

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getSupportedEntries is null, return default entries."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    return-object p0

    :cond_e
    return-object v0
.end method

.method public getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_e

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getSupportedEntryDrawables is null, return default entry drawables."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_e
    return-object v0
.end method

.method public getSupportedEntryExtDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_e

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getSupportedEntryExtDrawables is null, return default entry drawables."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_e
    return-object v0
.end method

.method public getSupportedEntryExtHighLightDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryExtHighLightDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_e

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getSupportedEntryExtHighLightDrawables is null, return default entry drawables."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_e
    return-object v0
.end method

.method public getSupportedEntrySummaries()[Ljava/lang/String;
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntrySummaries:[Ljava/lang/String;

    if-nez v0, :cond_e

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getSupportedEntrySummaries is null, return default summaries."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntrySummaries:[Ljava/lang/String;

    return-object p0

    :cond_e
    return-object v0
.end method

.method public getSupportedEntryValues()[Ljava/lang/String;
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    if-nez v0, :cond_e

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getSupportedEntryValues is null, return default entry values."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    return-object p0

    :cond_e
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 117
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mType:I

    return p0
.end method

.method public getUpdateMessage()Ljava/lang/String;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mUpdateMessage:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract init(Landroid/content/res/Resources;)V
.end method

.method protected initEntryViewId()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isCustomLayoutSupport()Z
    .registers 1

    .line 145
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mCustomLayoutSupport:Z

    return p0
.end method

.method public isShowUpdateIcon()Z
    .registers 1

    .line 286
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mShowUpdateIcon:Z

    return p0
.end method

.method public isSupport()Z
    .registers 1

    .line 141
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportVisible:Z

    return p0
.end method

.method public isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 229
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public shouldEscapeUpdateEntryValues(Z)V
    .registers 2

    .line 109
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mShouldEscape:Z

    return-void
.end method

.method public shouldHighLightShow(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public shouldHighLightText()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public shouldTintForPopupItem(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .registers 2

    .line 266
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
