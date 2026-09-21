.class public Lcom/transsion/camera/ui/setting/videoportraitspot/view/VPSScrollerRulerViewUI5;
.super Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V
    .registers 3

    .line 28
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_gap_26dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleGap:I

    return-void
.end method
