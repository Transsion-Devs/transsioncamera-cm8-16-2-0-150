.class public Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DimenInfo"
.end annotation


# instance fields
.field public mBoundaryDistance:I

.field public mCircleLineGap:I

.field public mCurrentNumSize:I

.field public mCurrentUnitSize:I

.field public mFadeLineMargin:F

.field public mHighlightScaleWidth:I

.field public mLineBitmapMargin:F

.field public mLineHighlightBitmapMargin:F

.field public mLineHighlightTextMargin:F

.field public mLineTextMargin:F

.field public mLineTextMargin90:F

.field public mLongScaleHeight:I

.field public mMarginBottom:I

.field public mScaleBitmapHeight:I

.field public mScaleGap:I

.field public mScaleHeight:I

.field public mScaleWidth:I

.field public mScrollerPanelHeight:I

.field public mStrokePaintWidth:I

.field public mTextBottom:I

.field public mTextRotateBottom:I

.field public mTextSize:I

.field public mTextTop:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 915
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_text_rotate_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextRotateBottom:I

    .line 916
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_stroke_paint_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mStrokePaintWidth:I

    .line 917
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_duration_panel_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScrollerPanelHeight:I

    .line 918
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_circle_line_gap:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mCircleLineGap:I

    .line 919
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_boundary_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mBoundaryDistance:I

    .line 920
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_bitmap_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleBitmapHeight:I

    .line 921
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_line_text_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLineTextMargin:F

    .line 922
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_line_bitmap_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLineBitmapMargin:F

    .line 923
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_line_text_margin_90:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLineTextMargin90:F

    .line 924
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_line_highlight_text_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLineHighlightTextMargin:F

    .line 925
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_line_highlight_bitmap_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLineHighlightBitmapMargin:F

    .line 926
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_fade_line_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mFadeLineMargin:F

    .line 927
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_current_num_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mCurrentNumSize:I

    .line 928
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_current_unit_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mCurrentUnitSize:I

    .line 929
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleWidth:I

    .line 930
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_highlight_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mHighlightScaleWidth:I

    .line 931
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleHeight:I

    .line 932
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_long_scale_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLongScaleHeight:I

    .line 933
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextSize:I

    .line 934
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_text_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextBottom:I

    .line 935
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mMarginBottom:I

    .line 936
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_text_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextTop:I

    .line 937
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_cc

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_gap_14dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_d2

    .line 938
    :cond_cc
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_gap:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_d2
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleGap:I

    return-void
.end method
