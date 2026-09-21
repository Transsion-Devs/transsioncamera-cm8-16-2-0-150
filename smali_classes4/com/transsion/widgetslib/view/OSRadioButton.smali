.class public Lcom/transsion/widgetslib/view/OSRadioButton;
.super Landroid/widget/RadioButton;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "OSRadioButton"


# instance fields
.field private mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mIsInit:Z

.field private mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mIsInit:Z

    const/4 p1, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSRadioButton;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mIsInit:Z

    .line 41
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSRadioButton;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mIsInit:Z

    .line 46
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSRadioButton;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/view/OSRadioButton;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mIsInit:Z

    return p1
.end method

.method public static getRadioDrawables(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;
    .registers 9

    .line 137
    new-instance v0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    invoke-direct {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;-><init>()V

    .line 139
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    .line 141
    invoke-static {p0, v2}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->getInstance(Landroid/content/Context;Z)Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    move-result-object v2

    const v3, 0x101009e

    const v4, 0x10100a0

    .line 142
    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 144
    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_radio_drawable_end_checked:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v5, -0x101009e

    if-eqz v3, :cond_39

    .line 146
    sget v6, Lcom/transsion/widgetslib/R$attr;->os_platform_disabled_color:I

    sget v7, Lcom/transsion/widgetslib/R$color;->os_platform_disabled_color_hios:I

    invoke-static {p0, v6, v7}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 147
    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_39
    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_radio_drawable_start_unchecked:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 152
    sget v4, Lcom/transsion/widgetslib/R$color;->os_gray_tertiary_color:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const v4, -0x10100a0

    .line 153
    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_54
    invoke-static {p0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    move-result-object p0

    const/4 v3, 0x0

    .line 157
    new-array v3, v3, [I

    invoke-virtual {v1, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->setStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)V

    .line 160
    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->setCheckedDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 161
    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->setNormalDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_5

    move p1, v0

    goto :goto_d

    .line 54
    :cond_5
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "button"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    :goto_d
    if-ne p1, v0, :cond_2c

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 66
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    goto :goto_22

    .line 68
    :cond_1e
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 71
    :goto_22
    new-instance p1, Lcom/transsion/widgetslib/view/OSRadioButton$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/OSRadioButton$1;-><init>(Lcom/transsion/widgetslib/view/OSRadioButton;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2c
    return-void
.end method

.method private initDrawable()V
    .registers 3

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/view/OSRadioButton;->getRadioDrawables(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 83
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 84
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OSRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_17
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v1, :cond_25

    .line 87
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 90
    :cond_25
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v1, :cond_33

    .line 91
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    :cond_33
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 1

    .line 130
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 131
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz p0, :cond_a

    .line 132
    invoke-interface {p0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    :cond_a
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 97
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v0, :cond_c

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 100
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    :cond_c
    return-void
.end method

.method public setChecked(Z)V
    .registers 6

    .line 106
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 107
    sget-object v0, Lcom/transsion/widgetslib/view/OSRadioButton;->TAG:Ljava/lang/String;

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

    .line 108
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_80

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_80

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-nez v3, :cond_3a

    goto :goto_80

    :cond_3a
    if-eqz p1, :cond_55

    if-ne v1, v2, :cond_55

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_55
    if-nez p1, :cond_70

    if-ne v1, v3, :cond_70

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

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

    .line 121
    :goto_74
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mCurrentDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 122
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mIsInit:Z

    if-nez p1, :cond_7d

    .line 123
    invoke-interface {v2, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    :cond_7d
    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSRadioButton;->mIsInit:Z

    :cond_80
    :goto_80
    return-void
.end method
