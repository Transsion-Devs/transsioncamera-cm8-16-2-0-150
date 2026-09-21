.class public Lcom/transsion/camera/ui/setting/videoportraitspot/view/VPSScrollerRulerView;
.super Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V
    .registers 4

    .line 26
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V

    .line 27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scroller_scale_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleGap:I

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$dimen;->video_portrait_spot_scroller_scale_margin_bottom:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mMarginBottom:I

    return-void
.end method
