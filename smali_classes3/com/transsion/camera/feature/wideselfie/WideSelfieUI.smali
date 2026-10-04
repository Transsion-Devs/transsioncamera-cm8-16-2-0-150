.class Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;
.super Lcom/transsion/camera/feature/common/BaseUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

.field private volatile mDirection:I

.field private mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

.field private mNotifyText:Landroid/widget/TextView;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mSwitchPreviewValue:Ljava/lang/String;

.field private final mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;


# direct methods
.method public static synthetic $r8$lambda$rf-31HHmLq4kEa8MKJa7fp-7z9k(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->lambda$readyUI$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchPreviewValue(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mSwitchPreviewValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUISpec(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misLand(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->isLand(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "WideSelfieUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;)V
    .registers 4

    .line 62
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    .line 57
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 58
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    .line 59
    const-string p1, "off"

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/content/Context;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private isLand(I)Z
    .registers 2

    const/4 p0, -0x1

    if-eq p1, p0, :cond_b

    if-eqz p1, :cond_b

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$readyUI$0()V
    .registers 2

    .line 162
    iget v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateLayoutParams(I)V

    return-void
.end method

.method private setNotifyViewsLayout(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;I)V
    .registers 6

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 217
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 218
    iget v2, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowWidth:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 219
    iget v2, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowHeight:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 220
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyText:Landroid/widget/TextView;

    const/16 v2, 0xb4

    if-eq p2, v2, :cond_2b

    const/4 p2, 0x0

    goto :goto_2d

    :cond_2b
    const/high16 p2, 0x43340000    # 180.0f

    :goto_2d
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    .line 225
    :cond_30
    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v0, v0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mTextMaxLineWidth:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 226
    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 228
    iget p2, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 229
    iget p2, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 230
    iget p2, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 231
    iget p2, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 232
    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginBottom:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private stopIdleAnimation(Lcom/opensource/svgaplayer/SVGAImageView;)V
    .registers 2

    if-nez p1, :cond_a

    .line 151
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "stopIdleAnimation view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_a
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 155
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    const/16 p0, 0x8

    .line 156
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    return-void
.end method

.method private updateLayoutParams(I)V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_d

    goto :goto_24

    .line 197
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v0, v0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mWideSelfieUIType:I

    if-ne v1, v0, :cond_20

    .line 199
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateLayoutParamsSmallThumbnail(I)V

    return-void

    .line 201
    :cond_20
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateLayoutParamsNormal(I)V

    return-void

    .line 194
    :cond_24
    :goto_24
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onOrientationChanged mRootView or mNotifyImageView or mPreviewRect is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateLayoutParamsNormal(I)V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    if-nez v0, :cond_c

    .line 207
    new-instance v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    .line 210
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->updateArrowWidthAndHeight(I)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->updateRootLayoutMargin(I)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mAnimationPara:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->setNotifyViewsLayout(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;I)V

    return-void
.end method

.method private updateLayoutParamsSmallThumbnail(I)V
    .registers 9

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 243
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->isLand(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_60

    .line 244
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v4, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    iget v5, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mPreview4_3Height:I

    iget v6, v2, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowWidthLand:I

    sub-int/2addr v5, v6

    shr-int/2addr v5, v3

    add-int/2addr v4, v5

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v4, 0x10e

    if-ne p1, v4, :cond_30

    const/4 p1, 0x5

    .line 247
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 248
    iget p1, v2, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowTopMarginLand:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_3b

    :cond_30
    const/16 v4, 0x5a

    if-ne p1, v4, :cond_3b

    const/4 p1, 0x3

    .line 250
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 251
    iget p1, v2, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowTopMarginLand:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 254
    :cond_3b
    :goto_3b
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 255
    iget p1, v2, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowHeightLand:I

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v4, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    int-to-float v5, v4

    div-float/2addr p1, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    .line 257
    iget p1, v2, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowWidthLand:I

    int-to-float p1, p1

    sub-float/2addr v4, p1

    float-to-int p1, v4

    shr-int/2addr p1, v3

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_8e

    .line 259
    :cond_60
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v4, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    iget v5, v2, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowTopMargin:I

    add-int v6, v4, v5

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 260
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v6, 0x0

    .line 261
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 262
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-nez p1, :cond_7b

    or-int/lit8 p1, v3, 0x30

    .line 265
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    add-int/2addr v4, v5

    .line 266
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_86

    :cond_7b
    const/16 v6, 0xb4

    if-ne p1, v6, :cond_86

    or-int/lit8 p1, v3, 0x50

    .line 268
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    add-int/2addr v4, v5

    .line 269
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 272
    :cond_86
    :goto_86
    iget p1, v2, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowWidth:I

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 273
    iget p1, v2, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowHeight:I

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 275
    :goto_8e
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .registers 5

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$layout;->wideselfie_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 103
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 104
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 105
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 106
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->wideselfie_notify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyText:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->wideselfie_notify_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->wideselfie_idle_arrow_vertical:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->wideselfie_idle_arrow_horizontal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public initView()V
    .registers 3

    .line 89
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->initView()V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_15

    const/16 v1, 0x7b

    .line 91
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 92
    iget v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateOrientation(I)V

    :cond_15
    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 189
    iget p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateLayoutParams(I)V

    return-void
.end method

.method public onCaptureEnd()V
    .registers 2

    .line 83
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureEnd()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    return-void
.end method

.method public onCaptureFailed()V
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureFailed()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    return-void
.end method

.method public onDirectionUpdate(I)V
    .registers 5

    .line 68
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    if-eq v0, p1, :cond_23

    .line 69
    sget-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDirectionUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    .line 71
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    :cond_23
    return-void
.end method

.method public pause()V
    .registers 3

    .line 132
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->pause()V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    const/4 v1, 0x4

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_31

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_31
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->cancelPendingUpdates()V

    return-void
.end method

.method public readyUI()V
    .registers 2

    .line 162
    new-instance v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/BaseUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 163
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->readyUI()V

    return-void
.end method

.method public unInitView()V
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->stopIdleAnimation(Lcom/opensource/svgaplayer/SVGAImageView;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->stopIdleAnimation(Lcom/opensource/svgaplayer/SVGAImageView;)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_11

    .line 121
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    .line 123
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_18

    .line 124
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    :cond_18
    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    .line 127
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->unInitView()V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 5

    .line 168
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;->updateOrientation(I)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 170
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getColumnPreviewStartMargin()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 175
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :cond_57
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateLayoutParams(I)V

    .line 178
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method public updateSwitchPreviewValue(Ljava/lang/String;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mSwitchPreviewValue:Ljava/lang/String;

    return-void
.end method

.method protected updateUI()V
    .registers 8

    .line 284
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 285
    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    .line 286
    iget v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    .line 288
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->isLand(I)Z

    move-result v3

    .line 290
    sget-object v4, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUI capturing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", direction: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLand: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v4, 0x8

    if-nez v0, :cond_65

    .line 295
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_wideselfie_tap_shutter:I

    .line 296
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    if-eqz v2, :cond_48

    const/4 v5, 0x4

    .line 297
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_48
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v2, :cond_cb

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v2, :cond_cb

    if-eqz v3, :cond_5c

    .line 301
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_cb

    .line 304
    :cond_5c
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_cb

    .line 309
    :cond_65
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_6c

    .line 310
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_6c
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_73

    .line 313
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_73
    const/4 v0, 0x1

    if-eq v2, v0, :cond_9a

    .line 331
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_wideselfie_rotaniton_left:I

    if-nez v3, :cond_7d

    .line 332
    sget v4, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_right_animation:I

    goto :goto_7f

    .line 333
    :cond_7d
    sget v4, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_land_right_animation:I

    .line 334
    :goto_7f
    iget-object v5, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v5

    if-ne v5, v0, :cond_90

    if-eqz v3, :cond_92

    .line 336
    const-string/jumbo v0, "widelself_land_fold_right_animation"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Ljava/lang/String;)I

    move-result v4

    :cond_90
    :goto_90
    move v0, v2

    goto :goto_bd

    .line 338
    :cond_92
    const-string/jumbo v0, "widelself_fold_right_animation"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Ljava/lang/String;)I

    move-result v4

    goto :goto_90

    .line 318
    :cond_9a
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_wideselfie_rotaniton_right:I

    if-nez v3, :cond_a1

    .line 319
    sget v4, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_left_animation:I

    goto :goto_a3

    .line 320
    :cond_a1
    sget v4, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_land_left_animation:I

    .line 321
    :goto_a3
    iget-object v5, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v5

    if-ne v5, v0, :cond_90

    if-eqz v3, :cond_b5

    .line 323
    const-string/jumbo v0, "widelself_land_fold_left_animation"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Ljava/lang/String;)I

    move-result v4

    goto :goto_90

    .line 325
    :cond_b5
    const-string/jumbo v0, "widelself_fold_left_animation"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Ljava/lang/String;)I

    move-result v4

    goto :goto_90

    .line 344
    :goto_bd
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    if-eqz v2, :cond_cb

    if-eqz v4, :cond_cb

    .line 345
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;->setImageResource(I)V

    .line 350
    :cond_cb
    :goto_cb
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyText:Landroid/widget/TextView;

    if-eqz p0, :cond_d4

    if-eqz v0, :cond_d4

    .line 351
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_d4
    return-void
.end method
