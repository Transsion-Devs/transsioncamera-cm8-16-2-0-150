.class Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;


# direct methods
.method public constructor <init>(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;Landroid/content/Context;)V
    .registers 3

    .line 226
    iput-object p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    .line 227
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 6

    .line 266
    iget-object p0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    # invokes: Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnails()V
    invoke-static {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->access$100(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 244
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    # getter for: Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->m_contentWidth:I
    invoke-static {v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->access$000(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)I

    move-result v0

    .line 246
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 247
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_1d

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_17

    goto :goto_1d

    .line 251
    :cond_17
    iget-object v1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 254
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    .line 257
    invoke-static {v0, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 258
    invoke-static {v1, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 260
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    if-eq p2, p4, :cond_7

    .line 273
    iget-object v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ContentView;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    # invokes: Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->requestUpdateThumbnailSequenceGeometry()V
    invoke-static {v0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->access$200(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V

    .line 275
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
