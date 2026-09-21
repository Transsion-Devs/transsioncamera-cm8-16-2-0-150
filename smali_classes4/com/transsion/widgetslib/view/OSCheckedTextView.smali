.class public Lcom/transsion/widgetslib/view/OSCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"


# static fields
.field private static final DRAWABLE_STYLE_CHECK:I = 0x2

.field private static final DRAWABLE_STYLE_NOTHING:I = 0x0

.field private static final DRAWABLE_STYLE_RADIO:I = 0x1

.field public static final TAG:Ljava/lang/String; = "OSCheckedTextView"


# instance fields
.field private mCheckedDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCheckedDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCheckedDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCheckedDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCheckedDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mCurrentDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mDrawableStyle:I

.field private mListDrawableBottom:Landroid/graphics/drawable/StateListDrawable;

.field private mListDrawableCheckMark:Landroid/graphics/drawable/StateListDrawable;

.field private mListDrawableEnd:Landroid/graphics/drawable/StateListDrawable;

.field private mListDrawableStart:Landroid/graphics/drawable/StateListDrawable;

.field private mListDrawableTop:Landroid/graphics/drawable/StateListDrawable;

.field private mNormalDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mNormalDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mNormalDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mNormalDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mNormalDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    const/4 p1, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    .line 61
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    .line 66
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getDefaultCheckDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 212
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101021a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 203
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010219

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private getReverseDrawableBean()Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;
    .registers 4

    .line 221
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 228
    :cond_6
    iget v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->getCheckDrawables(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object p0

    return-object p0

    :cond_14
    return-object v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 7

    if-eqz p1, :cond_28

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSCheckedTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_25

    .line 74
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 75
    sget v4, Lcom/transsion/widgetslib/R$styleable;->OSCheckedTextView_check_mark_style:I

    if-ne v3, v4, :cond_22

    .line 76
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 79
    :cond_25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    :cond_28
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_31

    .line 84
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->initDrawableCheckMark()V

    :cond_31
    return-void
.end method

.method private initDrawableBottom()V
    .registers 4

    .line 182
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 187
    :cond_7
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 188
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableBottom:Landroid/graphics/drawable/StateListDrawable;

    .line 190
    :cond_13
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 191
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 193
    :cond_1f
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 194
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 197
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcom/transsion/widgetslib/drawable/ReversibleDrawable;Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method private initDrawableCheckMark()V
    .registers 4

    .line 94
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 96
    iget v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 97
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_12
    iget v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 101
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultCheckDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1e
    return-void

    .line 106
    :cond_1f
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 107
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableCheckMark:Landroid/graphics/drawable/StateListDrawable;

    .line 108
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_2e
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 111
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 113
    :cond_3a
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 114
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 117
    :cond_46
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcom/transsion/widgetslib/drawable/ReversibleDrawable;Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method private initDrawableEnd()V
    .registers 4

    .line 142
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 147
    :cond_7
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 148
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableEnd:Landroid/graphics/drawable/StateListDrawable;

    .line 150
    :cond_13
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 151
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 153
    :cond_1f
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 154
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 157
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcom/transsion/widgetslib/drawable/ReversibleDrawable;Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method private initDrawableStart()V
    .registers 4

    .line 122
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 127
    :cond_7
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 128
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableStart:Landroid/graphics/drawable/StateListDrawable;

    .line 130
    :cond_13
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 131
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 133
    :cond_1f
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 134
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 137
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcom/transsion/widgetslib/drawable/ReversibleDrawable;Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method private initDrawableTop()V
    .registers 4

    .line 162
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getReverseDrawableBean()Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 167
    :cond_7
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 168
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableTop:Landroid/graphics/drawable/StateListDrawable;

    .line 170
    :cond_13
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 171
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 173
    :cond_1f
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 174
    invoke-virtual {v0}, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 177
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getCurrentDrawable(ZLcom/transsion/widgetslib/drawable/ReversibleDrawable;Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method private toReverseDrawableBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 334
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_16

    .line 335
    sget-boolean p1, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-eqz p1, :cond_d

    .line 336
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultCheckDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p1, 0x2

    .line 338
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    .line 339
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->initDrawableBottom()V

    .line 340
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableBottom:Landroid/graphics/drawable/StateListDrawable;

    return-object p0

    .line 342
    :cond_16
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v0, :cond_1f

    .line 346
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object p1
.end method

.method private toReverseDrawableEnd(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 370
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_16

    .line 371
    sget-boolean p1, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-eqz p1, :cond_d

    .line 372
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultCheckDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p1, 0x2

    .line 374
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    .line 375
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->initDrawableEnd()V

    .line 376
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableEnd:Landroid/graphics/drawable/StateListDrawable;

    return-object p0

    .line 378
    :cond_16
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v0, :cond_1f

    .line 382
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object p1
.end method

.method private toReverseDrawableStart(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 388
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_16

    .line 389
    sget-boolean p1, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-eqz p1, :cond_d

    .line 390
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultCheckDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p1, 0x2

    .line 392
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    .line 393
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->initDrawableStart()V

    .line 394
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableStart:Landroid/graphics/drawable/StateListDrawable;

    return-object p0

    .line 396
    :cond_16
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v0, :cond_1f

    .line 400
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object p1
.end method

.method private toReverseDrawableTop(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 352
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_16

    .line 353
    sget-boolean p1, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-eqz p1, :cond_d

    .line 354
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultCheckDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p1, 0x2

    .line 356
    iput p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mDrawableStyle:I

    .line 357
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->initDrawableTop()V

    .line 358
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableTop:Landroid/graphics/drawable/StateListDrawable;

    return-object p0

    .line 360
    :cond_16
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v0, :cond_1f

    .line 364
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->getDefaultSingleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object p1
.end method


# virtual methods
.method public getCurrentDrawable(ZLcom/transsion/widgetslib/drawable/ReversibleDrawable;Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)Lcom/transsion/widgetslib/drawable/ReversibleDrawable;
    .registers 4

    if-eqz p1, :cond_3

    return-object p2

    :cond_3
    return-object p3
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 425
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 426
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v0, :cond_a

    .line 427
    invoke-interface {v0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    .line 429
    :cond_a
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v0, :cond_11

    .line 430
    invoke-interface {v0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    .line 432
    :cond_11
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v0, :cond_18

    .line 433
    invoke-interface {v0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    .line 435
    :cond_18
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v0, :cond_1f

    .line 436
    invoke-interface {v0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    .line 438
    :cond_1f
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz p0, :cond_26

    .line 439
    invoke-interface {p0}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    :cond_26
    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 236
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mListDrawableCheckMark:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v0, :cond_c

    const/4 p1, 0x0

    .line 238
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 239
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    :cond_c
    return-void
.end method

.method public setChecked(Z)V
    .registers 6

    .line 245
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 246
    sget-object v0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->TAG:Ljava/lang/String;

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

    .line 247
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_80

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_80

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v3, :cond_80

    if-eqz p1, :cond_54

    if-ne v1, v2, :cond_54

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableCheckMark: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_54
    if-nez p1, :cond_6f

    if-ne v1, v3, :cond_6f

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableCheckMark: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6f
    if-eqz p1, :cond_72

    goto :goto_73

    :cond_72
    move-object v2, v3

    .line 258
    :goto_73
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 260
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableCheckMark:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-interface {v2, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 264
    :cond_80
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_d3

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_d3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v3, :cond_d3

    if-eqz p1, :cond_a7

    if-ne v1, v2, :cond_a7

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableStart: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a7
    if-nez p1, :cond_c2

    if-ne v1, v3, :cond_c2

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableStart: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c2
    if-eqz p1, :cond_c5

    goto :goto_c6

    :cond_c5
    move-object v2, v3

    .line 275
    :goto_c6
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 277
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableStart:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-interface {v2, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 281
    :cond_d3
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_126

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_126

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v3, :cond_126

    if-eqz p1, :cond_fa

    if-ne v1, v2, :cond_fa

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableEnd: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_fa
    if-nez p1, :cond_115

    if-ne v1, v3, :cond_115

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableEnd: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_115
    if-eqz p1, :cond_118

    goto :goto_119

    :cond_118
    move-object v2, v3

    .line 292
    :goto_119
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_126

    .line 294
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableEnd:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-interface {v2, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 298
    :cond_126
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_179

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_179

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v3, :cond_179

    if-eqz p1, :cond_14d

    if-ne v1, v2, :cond_14d

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableTop: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14d
    if-nez p1, :cond_168

    if-ne v1, v3, :cond_168

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableTop: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_168
    if-eqz p1, :cond_16b

    goto :goto_16c

    :cond_16b
    move-object v2, v3

    .line 309
    :goto_16c
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_179

    .line 311
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableTop:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-interface {v2, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    .line 315
    :cond_179
    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v1, :cond_1cc

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v2, :cond_1cc

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    if-eqz v3, :cond_1cc

    if-eqz p1, :cond_1a0

    if-ne v1, v2, :cond_1a0

    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 111111: mCurrentDrawableBottom: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCheckedDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a0
    if-nez p1, :cond_1bb

    if-ne v1, v3, :cond_1bb

    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked, 222222: mCurrentDrawableBottom: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mNormalDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1bb
    if-eqz p1, :cond_1be

    goto :goto_1bf

    :cond_1be
    move-object v2, v3

    .line 326
    :goto_1bf
    iput-object v2, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1cc

    .line 328
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSCheckedTextView;->mCurrentDrawableBottom:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    invoke-interface {p0, v1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V

    :cond_1cc
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 407
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableStart(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 408
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableEnd(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 409
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableTop(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 410
    invoke-direct {p0, p4}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 411
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 416
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableStart(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 417
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableEnd(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 418
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableTop(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 419
    invoke-direct {p0, p4}, Lcom/transsion/widgetslib/view/OSCheckedTextView;->toReverseDrawableBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 420
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
