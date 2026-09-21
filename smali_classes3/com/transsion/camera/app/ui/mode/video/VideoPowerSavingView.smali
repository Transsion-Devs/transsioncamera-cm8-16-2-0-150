.class public Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mGuideLine:Landroidx/constraintlayout/widget/Guideline;

.field private mIsPreviewSwitched:Z

.field private mOrientation:I

.field private mRecordingTimeText:Landroid/widget/TextView;

.field private mScreenForm:I

.field private mTouchIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoPowerSavingView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getLayoutParamsWithoutMargin(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .registers 2

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 p1, 0x0

    .line 189
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object p0
.end method

.method private getPixelSize(I)I
    .registers 2

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private updateLayoutParamsInHoverBottomPreview()V
    .registers 8

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mRecordingTimeText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getLayoutParamsWithoutMargin(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mTouchIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getLayoutParamsWithoutMargin(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mGuideLine:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 153
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mOrientation:I

    const/16 v4, 0x5a

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v3, v4, :cond_86

    const/16 v4, 0xb4

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v3, v4, :cond_73

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_40

    .line 176
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/transsion/camera/R$dimen;->power_saving_recording_time_hover_top_margin:I

    .line 178
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 179
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_top_margin_0_180:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_b3

    .line 162
    :cond_40
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget v6, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_bottom_preview_left_margin_90:I

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v6

    sub-int/2addr v4, v6

    sub-int/2addr v4, v3

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 165
    sget v4, Lcom/transsion/camera/R$dimen;->power_saving_recording_time_hover_top_margin_90_270:I

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 166
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_top_margin_90_270:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_b3

    .line 169
    :cond_73
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 170
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_recording_time_hover_top_margin:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 171
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_top_margin_0_180:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_b3

    .line 155
    :cond_86
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 156
    sget v4, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_bottom_preview_left_margin_90:I

    .line 157
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 158
    sget v4, Lcom/transsion/camera/R$dimen;->power_saving_recording_time_hover_top_margin_90_270:I

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 159
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_top_margin_90_270:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 182
    :goto_b3
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mGuideLine:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mTouchIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLayoutParamsInHoverTopPreview()V
    .registers 8

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mRecordingTimeText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getLayoutParamsWithoutMargin(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mTouchIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getLayoutParamsWithoutMargin(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mGuideLine:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 114
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mOrientation:I

    const/16 v4, 0x5a

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v3, v4, :cond_87

    const/16 v4, 0xb4

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v3, v4, :cond_6d

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_3a

    .line 138
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 139
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_recording_time_hover_top_margin:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 140
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_top_margin_0_180:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_b4

    .line 123
    :cond_3a
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget v6, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_top_preview_left_margin_90:I

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v6

    sub-int/2addr v4, v6

    sub-int/2addr v4, v3

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 126
    sget v4, Lcom/transsion/camera/R$dimen;->power_saving_recording_time_hover_top_margin_90_270:I

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 127
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_top_margin_90_270:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_b4

    .line 130
    :cond_6d
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/transsion/camera/R$dimen;->power_saving_recording_time_hover_top_margin:I

    .line 132
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 133
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_top_margin_0_180:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_b4

    .line 116
    :cond_87
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 117
    sget v4, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_top_preview_left_margin_90:I

    .line 118
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 119
    sget v4, Lcom/transsion/camera/R$dimen;->power_saving_recording_time_hover_top_margin_90_270:I

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 120
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_top_margin_90_270:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 143
    :goto_b4
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mGuideLine:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mTouchIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLayoutParamsInNormal()V
    .registers 7

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mRecordingTimeText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getLayoutParamsWithoutMargin(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mTouchIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getLayoutParamsWithoutMargin(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mGuideLine:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 86
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mOrientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_33

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_33

    const/high16 v3, 0x3f000000    # 0.5f

    .line 98
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 99
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_recording_time_top_margin_0_180:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 100
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_top_margin_0_180:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_62

    .line 89
    :cond_33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 90
    sget v4, Lcom/transsion/camera/R$dimen;->power_saving_guideline_left_margin_90_270:I

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 91
    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 92
    sget v4, Lcom/transsion/camera/R$dimen;->power_saving_recording_time_hover_top_margin_90_270:I

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 93
    sget v3, Lcom/transsion/camera/R$dimen;->power_saving_touch_icon_hover_top_margin_90_270:I

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->getPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 104
    :goto_62
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mGuideLine:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mTouchIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 53
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v0, v0

    neg-float v2, v2

    .line 55
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 38
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 39
    sget v0, Lcom/transsion/camera/R$id;->guideline:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mGuideLine:Landroidx/constraintlayout/widget/Guideline;

    .line 40
    sget v0, Lcom/transsion/camera/R$id;->recording_time_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mRecordingTimeText:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/transsion/camera/R$id;->power_saving_touch_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mTouchIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public updateLayout(IIZ)V
    .registers 4

    .line 61
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mScreenForm:I

    .line 62
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mOrientation:I

    .line 63
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mIsPreviewSwitched:Z

    if-eqz p1, :cond_2f

    const/4 p2, 0x3

    if-eq p1, p2, :cond_25

    .line 77
    sget-object p1, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateLayout(), unhandled screen form: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mScreenForm:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_25
    if-eqz p3, :cond_2b

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->updateLayoutParamsInHoverBottomPreview()V

    return-void

    .line 73
    :cond_2b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->updateLayoutParamsInHoverTopPreview()V

    return-void

    .line 67
    :cond_2f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->updateLayoutParamsInNormal()V

    return-void
.end method

.method public updateRecordingTimeText(Ljava/lang/String;)V
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->mRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
