.class public Lcom/transsion/camera/app/ui/widget/ProWMPreview;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBigLogo1:Landroid/widget/ImageView;

.field private mHideDeviceInfo:Z

.field private mLocationContent:Ljava/lang/String;

.field private mLocationShow:Z

.field private mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

.field private mSelectedStyle:I

.field private mSmallLogo1:Landroid/widget/ImageView;

.field private mSmallLogo2:Landroid/widget/ImageView;

.field private mSmallLogo3:Landroid/widget/ImageView;

.field private mSmallLogo4:Landroid/widget/ImageView;

.field private mTextBrand:Landroid/widget/TextView;

.field private mTextExif:Landroid/widget/TextView;

.field private mTextLocation:Landroid/widget/TextView;

.field private mTextTime:Landroid/widget/TextView;

.field private mTimeShow:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProWMPreview"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSelectedStyle:I

    return-void
.end method

.method private layoutViews()V
    .registers 3

    .line 202
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "layoutViews: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateBrandLayout()V

    .line 204
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateSmallLogo1Layout()V

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateExifLayout()V

    .line 206
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateSmallLogo2Layout()V

    .line 207
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateTimeLayout()V

    .line 208
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateLocationLayout()V

    .line 209
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateBl1Layout()V

    .line 210
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateSmallLogo3Layout()V

    .line 211
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateSmallLogo4Layout()V

    return-void
.end method

.method private measureDimension(III)I
    .registers 4

    .line 118
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 p2, 0x40000000    # 2.0f

    if-ne p0, p2, :cond_d

    .line 121
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_d
    const/high16 p2, -0x80000000

    if-ne p0, p2, :cond_16

    .line 123
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_16
    return p1
.end method

.method private showOrHideBl1(Z)V
    .registers 2

    .line 618
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mBigLogo1:Landroid/widget/ImageView;

    if-nez p1, :cond_5

    return-void

    .line 621
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBl1Show()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x0

    goto :goto_11

    :cond_f
    const/16 p0, 0x8

    :goto_11
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showOrHideBrand(Z)V
    .registers 6

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 591
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandShow()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mHideDeviceInfo:Z

    if-nez v1, :cond_27

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl1Show()Z

    move-result p0

    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    move v2, v3

    :cond_27
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showOrHideExif(Z)V
    .registers 6

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    move v3, v1

    .line 613
    :goto_d
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo2:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl2Show()Z

    move-result p0

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    move v1, v2

    :cond_1d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showOrHideLocation(Z)V
    .registers 2

    .line 580
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    if-nez p0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_9

    const/4 p1, 0x0

    goto :goto_b

    :cond_9
    const/16 p1, 0x8

    .line 583
    :goto_b
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showOrHideSl3(Z)V
    .registers 3

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo3:Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    if-nez p0, :cond_9

    goto :goto_18

    :cond_9
    if-eqz p1, :cond_13

    .line 599
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl3Show()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x0

    goto :goto_15

    :cond_13
    const/16 p0, 0x8

    :goto_15
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_18
    :goto_18
    return-void
.end method

.method private showOrHideSl4(Z)V
    .registers 3

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    if-nez p0, :cond_9

    goto :goto_18

    :cond_9
    if-eqz p1, :cond_13

    .line 606
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl4Show()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x0

    goto :goto_15

    :cond_13
    const/16 p0, 0x8

    :goto_15
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_18
    :goto_18
    return-void
.end method

.method private showOrHideTime(Z)V
    .registers 3

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 576
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getTimeShow()Z

    move-result p0

    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    const/4 p0, 0x0

    goto :goto_13

    :cond_11
    const/16 p0, 0x8

    :goto_13
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showOrHideViews()V
    .registers 3

    const/4 v0, 0x1

    .line 190
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->showOrHideBrand(Z)V

    .line 191
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->showOrHideExif(Z)V

    .line 192
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTimeShow:Z

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->showOrHideTime(Z)V

    .line 193
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mLocationShow:Z

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->showOrHideLocation(Z)V

    .line 194
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->showOrHideBl1(Z)V

    .line 195
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->showOrHideSl3(Z)V

    .line 196
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTimeShow:Z

    if-eqz v1, :cond_20

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mLocationShow:Z

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->showOrHideSl4(Z)V

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private updateBigLogo1Style()V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mBigLogo1:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 266
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBl1Size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mBigLogo1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBl1Res()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mBigLogo1:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mBigLogo1:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private updateBl1Layout()V
    .registers 5

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mBigLogo1:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    goto :goto_3a

    .line 505
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBl1Show()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBl1PaddingRight()I

    move-result v0

    .line 510
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mBigLogo1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 511
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBl1CenterVertical()Z

    move-result v2

    if-eqz v2, :cond_28

    const/16 v2, 0xf

    .line 512
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 514
    :cond_28
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 515
    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mBigLogo1:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private updateBrandLayout()V
    .registers 6

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_67

    .line 326
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandShow()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandOnLeft()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 333
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandCoorX()I

    move-result v1

    .line 334
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandCoorY()I

    move-result v2

    const/4 v3, 0x0

    .line 335
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v4, 0x9

    .line 336
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xc

    .line 337
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBrandLayout: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_67
    :goto_67
    return-void
.end method

.method private updateBrandStyle()V
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 276
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mHideDeviceInfo:Z

    if-eqz v1, :cond_c

    const-string v1, "XXX"

    goto :goto_12

    :cond_c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandRes()Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandSize()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateExifLayout()V
    .registers 5

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_5c

    .line 450
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getExifShow()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getExifOnLeft()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 457
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getExifCoorX()I

    move-result v1

    .line 458
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getExifCoorY()I

    move-result v2

    const/4 v3, 0x0

    .line 459
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v1, 0xb

    .line 460
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 461
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 462
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 465
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "some size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method private updateExifStyle()V
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 286
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getExifRes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getExifFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getExifColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getExifSize()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateLocationLayout()V
    .registers 10

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    if-nez v0, :cond_6

    goto/16 :goto_bf

    .line 526
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getLocationShow()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 533
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getLocationLeftOfTime()Z

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x5

    const/4 v4, 0x7

    const/16 v5, 0xb

    const/4 v6, 0x0

    if-eqz v1, :cond_70

    .line 534
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getLocationCoorY()I

    move-result v1

    .line 535
    iget-object v7, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    if-eqz v7, :cond_52

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_52

    iget-object v7, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_52

    .line 536
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 537
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 538
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 539
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move v3, v6

    goto :goto_64

    .line 541
    :cond_52
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 542
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 543
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 544
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 545
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getLocationCoorX()I

    move-result v3

    .line 547
    :goto_64
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 548
    invoke-virtual {v0, v6, v6, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 549
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 550
    :cond_70
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getLocationAlignLeft()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 551
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getLocationCoorY()I

    move-result v1

    .line 552
    invoke-virtual {v0, v6, v6, v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 553
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 554
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 555
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 556
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 557
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 558
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 560
    :cond_9c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getLocationCoorY()I

    move-result v1

    .line 561
    invoke-virtual {v0, v6, v6, v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 562
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 563
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 564
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 565
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 566
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 567
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_bf
    :goto_bf
    return-void
.end method

.method private updateLocationStyle()V
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 316
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mLocationContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getLocationFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getLocationColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getLocationSize()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateRootBackground()V
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getRootBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateSmallLogo1Layout()V
    .registers 10

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    goto/16 :goto_b2

    .line 348
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl1Show()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandOnLeft()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandShow()Z

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eqz v0, :cond_8e

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 356
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl1PaddingLeft()I

    move-result v3

    .line 357
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl1BottomAlignBrandText()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_44

    .line 358
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move v4, v2

    goto :goto_7b

    .line 360
    :cond_44
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl1CoorY()I

    move-result v4

    .line 361
    sget-object v6, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateSmallLogo1Layout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 363
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 365
    :goto_7b
    invoke-virtual {v0, v3, v2, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 369
    :cond_8e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 370
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandCoorX()I

    move-result v3

    .line 371
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getBrandCoorY()I

    move-result v4

    .line 372
    invoke-virtual {v0, v3, v2, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v2, 0x9

    .line 373
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b2
    :goto_b2
    return-void
.end method

.method private updateSmallLogo1Style()V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 223
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl1Size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl1Res()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private updateSmallLogo2Layout()V
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo2:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    goto :goto_40

    .line 385
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl2Show()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getExifOnLeft()Z

    move-result v0

    if-nez v0, :cond_40

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 392
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl2PaddingRight()I

    move-result v1

    const/4 v2, 0x0

    .line 393
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 394
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 395
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo2:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_40
    :goto_40
    return-void
.end method

.method private updateSmallLogo2Style()V
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo2:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 234
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl2Size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl2Res()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo2:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo2:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private updateSmallLogo3Layout()V
    .registers 5

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo3:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    goto :goto_54

    .line 405
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl3Show()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl3RightOfSl1()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo3:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 412
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl3MarginLeft()I

    move-result v1

    .line 413
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl3CoorY()I

    move-result v2

    const/4 v3, 0x0

    .line 414
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 415
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4a

    .line 416
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_4a
    const/16 v1, 0xc

    .line 418
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo3:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_54
    :goto_54
    return-void
.end method

.method private updateSmallLogo3Style()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo3:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 245
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl3Size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl3Res()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo3:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo3:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private updateSmallLogo4Layout()V
    .registers 5

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    goto :goto_4d

    .line 428
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl4Show()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl4BetweenTimeAndLocation()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 435
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl4CoorY()I

    move-result v1

    const/4 v2, 0x0

    .line 436
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 437
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_43

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_43

    .line 438
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_43
    const/16 v1, 0xc

    .line 440
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private updateSmallLogo4Style()V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 256
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl4Size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getSl4Res()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private updateTimeLayout()V
    .registers 8

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_67

    .line 474
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getTimeShow()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getTimeOnLeft()Z

    move-result v0

    const/16 v1, 0xc

    const/16 v2, 0x9

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-eqz v0, :cond_42

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 481
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getTimeCoorX()I

    move-result v5

    .line 482
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getTimeCoorY()I

    move-result v6

    .line 483
    invoke-virtual {v0, v5, v4, v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 484
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 485
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 486
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 487
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 489
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 490
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getTimeCoorX()I

    move-result v5

    .line 491
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getTimeCoorY()I

    move-result v6

    .line 492
    invoke-virtual {v0, v4, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 493
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 494
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 495
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 496
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_67
    :goto_67
    return-void
.end method

.method private updateTimeStyle()V
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 306
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getTimeRes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getTimeFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getTimeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getTimeSize()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateUIs()V
    .registers 1

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateViewsStyle()V

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->showOrHideViews()V

    .line 170
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->layoutViews()V

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateViewsStyle()V
    .registers 1

    .line 176
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateRootBackground()V

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateBrandStyle()V

    .line 178
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateTimeStyle()V

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateExifStyle()V

    .line 180
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateLocationStyle()V

    .line 181
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateSmallLogo1Style()V

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateSmallLogo2Style()V

    .line 183
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateSmallLogo3Style()V

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateSmallLogo4Style()V

    .line 185
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateBigLogo1Style()V

    return-void
.end method


# virtual methods
.method public init(Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;)V
    .registers 3

    .line 49
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shouldHideDeviceInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mHideDeviceInfo:Z

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 62
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 63
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    .line 64
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo2:Landroid/widget/ImageView;

    .line 65
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo3:Landroid/widget/ImageView;

    .line 66
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    .line 67
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mBigLogo1:Landroid/widget/ImageView;

    .line 68
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    .line 69
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    .line 70
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    .line 71
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/R$id;->pro_wm_preview_small_logo1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo2:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/R$id;->pro_wm_preview_small_logo2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo3:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/R$id;->pro_wm_preview_small_logo3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/R$id;->pro_wm_preview_small_logo4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mBigLogo1:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/R$id;->pro_wm_preview_big_logo1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    sget v1, Lcom/transsion/camera/R$id;->pro_wm_preview_text_brand:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    sget v1, Lcom/transsion/camera/R$id;->pro_wm_preview_text_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    sget v1, Lcom/transsion/camera/R$id;->pro_wm_preview_text_exif:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    sget v1, Lcom/transsion/camera/R$id;->pro_wm_preview_text_location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo1:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo2:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo3:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSmallLogo4:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextBrand:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextExif:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mBigLogo1:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onFinishInflate: add views finish"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    .line 110
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSelectedStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 111
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onLayout: style is -1, not layout"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_d
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 114
    invoke-super/range {v0 .. v5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onLocationClick(ZLjava/lang/String;)V
    .registers 6

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextLocation:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 146
    :cond_5
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocationVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " location: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mLocationContent:Ljava/lang/String;

    .line 148
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mLocationShow:Z

    .line 149
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->onLocationClicked(Z)V

    .line 150
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateUIs()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 99
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->pro_wm_preview_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->pro_wm_preview_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 102
    invoke-direct {p0, v2, p1, v0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->measureDimension(III)I

    move-result p1

    .line 103
    invoke-direct {p0, v3, p2, v1}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->measureDimension(III)I

    move-result p2

    .line 104
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateUIs()V

    .line 57
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSizeChanged: "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onTimeClick(Z)V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTextTime:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 135
    :cond_5
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTimeVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mTimeShow:Z

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->onTimeClicked(Z)V

    .line 138
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateUIs()V

    return-void
.end method

.method public updateSelectedStyle(I)V
    .registers 5

    .line 155
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelectedStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mSelectedStyle:I

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->mProWMPreviewInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->updateSelectedStyle(I)V

    .line 158
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateUIs()V

    return-void
.end method
