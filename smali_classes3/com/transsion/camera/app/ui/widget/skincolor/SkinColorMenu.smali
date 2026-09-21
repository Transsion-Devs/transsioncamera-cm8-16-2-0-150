.class public Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;,
        Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCancel:Landroid/view/View;

.field private mColorPickerView:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mShowing:Z

.field private mSkinCardMenuListener:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

.field private mSkinColor:I

.field private mValueStore:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;

.field private mVisibilityAnimator:Landroid/animation/Animator;


# direct methods
.method public static synthetic $r8$lambda$23X1-8ATbgC-smYTibxqf8owxZc(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bAQqsZ7ZSCl3EdM10ZavYVneWAM(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->lambda$onFinishInflate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pxDfH9ljG67CoGanEfQw3tZOFWQ(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->lambda$onFinishInflate$2(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSkinCardMenuListener(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinCardMenuListener:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SkinColorMenu"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3dcccccd    # 0.1f

    const/high16 p3, 0x3f800000    # 1.0f

    const p4, 0x3e4ccccd    # 0.2f

    const/4 v0, 0x0

    invoke-direct {p1, p4, v0, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private getSavedSkinColor()I
    .registers 6

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mValueStore:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    .line 120
    :cond_6
    const-string v1, "last_skin_color_when_cancel"

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    .line 125
    :cond_13
    :try_start_13
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_18

    return p0

    :catch_18
    move-exception v1

    .line 127
    sget-object v2, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSavedSkinColor value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static inflate(Landroid/view/ViewGroup;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;
    .registers 4

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->skin_color_menu_layout:I

    const/4 v2, 0x1

    .line 80
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->skin_color_menu:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .registers 2

    .line 219
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 222
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->hideSkinColorMenu()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)V
    .registers 2

    .line 226
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 229
    :cond_7
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinColor:I

    if-nez p1, :cond_12

    .line 230
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->getSavedSkinColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinColor:I

    goto :goto_18

    .line 232
    :cond_12
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->saveSkinColor(I)V

    const/4 p1, 0x0

    .line 233
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinColor:I

    .line 235
    :goto_18
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinColor:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->updateUI(I)V

    .line 236
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinColor:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->notifySkinColorChanged(I)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$2(I)V
    .registers 2

    .line 240
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinColor:I

    .line 241
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->updateUI(I)V

    .line 242
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->notifySkinColorChanged(I)V

    return-void
.end method

.method private notifySkinColorChanged(I)V
    .registers 5

    .line 265
    sget-object v0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySkinColorChanged skinColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinCardMenuListener:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    if-eqz p0, :cond_1d

    .line 267
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;->onSkinColorChanged(I)V

    :cond_1d
    return-void
.end method

.method private saveSkinColor(I)V
    .registers 3

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mValueStore:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;

    if-eqz p0, :cond_d

    .line 112
    const-string v0, "last_skin_color_when_cancel"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private startVisibilityAnimator(Z)V
    .registers 6

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mVisibilityAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    move v2, v1

    goto :goto_d

    :cond_c
    move v2, v0

    :goto_d
    if-eqz p1, :cond_10

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    const/4 v1, 0x2

    .line 276
    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    const-string v0, "alpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mVisibilityAnimator:Landroid/animation/Animator;

    .line 278
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mVisibilityAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mVisibilityAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$2;-><init>(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mVisibilityAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private updateUI(I)V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mCancel:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mColorPickerView:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;

    if-nez v1, :cond_9

    goto :goto_1e

    :cond_9
    const/4 v1, 0x0

    if-gtz p1, :cond_16

    const/4 p1, 0x1

    .line 165
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mColorPickerView:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->setSelectColor(I)V

    return-void

    .line 168
    :cond_16
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mColorPickerView:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->setSelectColor(I)V

    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public hideSkinColorMenu()V
    .registers 4

    .line 188
    sget-object v0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSkinColorMenu mShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mShowing:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mShowing:Z

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mColorPickerView:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;

    if-eqz v1, :cond_26

    .line 192
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->visibilityChanged(Z)V

    .line 194
    :cond_26
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->startVisibilityAnimator(Z)V

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinCardMenuListener:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    if-eqz p0, :cond_30

    .line 196
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;->onSkinColorMenuHide()V

    :cond_30
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .line 207
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 209
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->skin_color_menu_back_arrow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->skin_color_menu_cancel:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mCancel:Landroid/view/View;

    .line 211
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->skin_color_menu_color_picker:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mColorPickerView:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;

    const/16 v2, 0x64

    .line 213
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->setColorSize(I)V

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    .line 215
    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 216
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mCancel:Landroid/view/View;

    invoke-static {v3, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 218
    new-instance v1, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mCancel:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mColorPickerView:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->setColorPickerListener(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerListener;)V

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mColorPickerView:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$1;-><init>(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->setColorPickerTouchListener(Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView$IColorPickerTouchListener;)V

    .line 261
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinColor:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->updateUI(I)V

    return-void
.end method

.method public setSkinColor(I)V
    .registers 5

    if-ltz p1, :cond_a

    const/16 v0, 0x64

    if-le p1, v0, :cond_7

    goto :goto_a

    .line 147
    :cond_7
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinColor:I

    goto :goto_23

    .line 144
    :cond_a
    :goto_a
    sget-object v0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSkinColor invalid skinColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 145
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinColor:I

    .line 149
    :goto_23
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinColor:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->updateUI(I)V

    return-void
.end method

.method public setSkinColor(Ljava/lang/String;)V
    .registers 6

    .line 135
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_1d

    :catch_5
    move-exception v0

    .line 137
    sget-object v1, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSkinColor exception, skinColor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 139
    :goto_1d
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->setSkinColor(I)V

    return-void
.end method

.method public setSkinColorMenuListener(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinCardMenuListener:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    return-void
.end method

.method public setValueStore(Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mValueStore:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$IValueStore;

    return-void
.end method

.method public showSkinColorMenu()V
    .registers 4

    .line 174
    sget-object v0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSkinColorMenu mShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mShowing:Z

    if-nez v0, :cond_30

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mShowing:Z

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mColorPickerView:Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;

    if-eqz v1, :cond_26

    .line 178
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/ColorPickerView;->visibilityChanged(Z)V

    .line 180
    :cond_26
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->startVisibilityAnimator(Z)V

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mSkinCardMenuListener:Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;

    if-eqz p0, :cond_30

    .line 182
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu$ISkinColorMenuListener;->onSkinColorMenuShow()V

    :cond_30
    return-void
.end method

.method public showing()Z
    .registers 1

    .line 157
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->mShowing:Z

    return p0
.end method

.method public updateLowLight(Z)V
    .registers 2

    return-void
.end method
