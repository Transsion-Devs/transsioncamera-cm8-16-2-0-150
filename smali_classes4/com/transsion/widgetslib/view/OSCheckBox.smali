.class public Lcom/transsion/widgetslib/view/OSCheckBox;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "OSCheckBox"


# instance fields
.field private mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mDisabledDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mIsStopAnimation:Z

.field private mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSCheckBox;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckBox;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckBox;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static getCheckDrawables(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;
    .registers 8

    .line 142
    new-instance v0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    invoke-direct {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;-><init>()V

    .line 144
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    .line 146
    invoke-static {p0, v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getInstance(Landroid/content/Context;Z)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v2

    const v3, 0x101009e

    const v4, 0x10100a0

    .line 147
    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v3, -0x101009e

    .line 149
    filled-new-array {v4, v3}, [I

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$drawable;->os_check_drawable_end_checked:I

    .line 150
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 149
    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    .line 152
    invoke-static {p0, v4, v4}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getInstance(Landroid/content/Context;ZZ)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v5

    const v6, -0x10100a0

    .line 153
    filled-new-array {v6, v3}, [I

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-static {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object p0

    .line 157
    new-array v3, v4, [I

    invoke-virtual {v1, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->setStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)V

    .line 160
    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->setCheckedDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 161
    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->setNormalDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 162
    invoke-virtual {v0, v5}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->setDisabledDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_d

    .line 56
    :cond_5
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "button"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    :goto_d
    if-ne v1, v0, :cond_40

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-nez v0, :cond_1a

    .line 64
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->initDrawable()V

    .line 67
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSCheckBox:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSCheckBox_picture_mode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSCheckBox;->setPictureMode(Z)V

    .line 71
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 74
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    goto :goto_3d

    .line 76
    :cond_39
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 78
    :goto_3d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_40
    return-void
.end method

.method private initDrawable()V
    .registers 3

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckDrawables(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 85
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 86
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OSCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_17
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v1, :cond_25

    .line 89
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 91
    :cond_25
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v1, :cond_33

    .line 92
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 94
    :cond_33
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getDisabledDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v1, :cond_41

    .line 95
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getDisabledDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mDisabledDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    :cond_41
    return-void
.end method


# virtual methods
.method public getCheckedDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;
    .registers 2

    .line 224
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    instance-of v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisabledDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;
    .registers 2

    .line 234
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mDisabledDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    instance-of v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNormalDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;
    .registers 2

    .line 229
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    instance-of v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public isStopAnimation()Z
    .registers 1

    .line 257
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mIsStopAnimation:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 135
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 136
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz p0, :cond_a

    .line 137
    invoke-interface {p0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    :cond_a
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 101
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v0, :cond_e

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 104
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 105
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mDisabledDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    :cond_e
    return-void
.end method

.method public setChecked(Z)V
    .registers 6

    .line 111
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 112
    sget-object v0, Lcom/transsion/widgetslib/view/OSCheckBox;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked, checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getParent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_85

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_85

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-nez v3, :cond_3a

    goto :goto_85

    :cond_3a
    if-eqz p1, :cond_55

    if-ne v1, v2, :cond_55

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_55
    if-nez p1, :cond_70

    if-ne v1, v3, :cond_70

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_70
    if-eqz p1, :cond_73

    goto :goto_74

    :cond_73
    move-object v2, v3

    .line 127
    :goto_74
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_85

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mIsStopAnimation:Z

    if-nez p1, :cond_85

    .line 129
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-interface {p0, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    :cond_85
    :goto_85
    return-void
.end method

.method public setCheckedFillColor(I)V
    .registers 3

    .line 190
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 192
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setCheckedFillColor(I)V

    .line 194
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 196
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setCheckedFillColor(I)V

    :cond_12
    return-void
.end method

.method public setPictureMode(Z)V
    .registers 4

    .line 238
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setPictureMode(ZZ)V

    .line 242
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setPictureMode(ZZ)V

    .line 246
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getDisabledDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setPictureMode(ZZ)V

    :cond_27
    return-void
.end method

.method public setShowBorderShadow(ZZ)V
    .registers 4

    .line 212
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 214
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setShowBorderShadow(Z)V

    .line 216
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 218
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setShowBorderShadow(Z)V

    :cond_12
    return-void
.end method

.method public setStopAnimation(Z)V
    .registers 2

    .line 253
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSCheckBox;->mIsStopAnimation:Z

    return-void
.end method

.method public setTickColor(I)V
    .registers 3

    .line 201
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 203
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setTickColor(I)V

    .line 205
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 207
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setTickColor(I)V

    :cond_12
    return-void
.end method

.method public setUncheckedBorderColor(I)V
    .registers 3

    .line 179
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 181
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setUncheckedBorderColor(I)V

    .line 183
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 185
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setUncheckedBorderColor(I)V

    :cond_12
    return-void
.end method

.method public setUncheckedFillColor(I)V
    .registers 3

    .line 168
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 170
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setUncheckedFillColor(I)V

    .line 172
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 174
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setUncheckedFillColor(I)V

    :cond_12
    return-void
.end method
