.class public Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;
    }
.end annotation


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBoxViewLayout:Landroid/widget/FrameLayout;

.field private mItemFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

.field private mOrientation:I

.field private mScreenFormType:I

.field private mScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

.field private mSegmentDuration:J

.field private mTextSegmentDuration:Landroid/widget/TextView;

.field private mbInitialed:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmBoxViewLayout(Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mBoxViewLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemFrameView(Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;)Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mItemFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollView(Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;)Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_SelectFrame"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mbInitialed:Z

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$layout;->single_frame_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->item_frame_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mItemFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    .line 63
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->frame_scroll_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    .line 64
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->segment_frame_box_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mBoxViewLayout:Landroid/widget/FrameLayout;

    .line 65
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->segment_frame_duration:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mTextSegmentDuration:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mItemFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->setRefreshCallback(Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;)V

    return-void
.end method


# virtual methods
.method public changeProgress(F)V
    .registers 2

    .line 191
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mbInitialed:Z

    if-eqz p1, :cond_7

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_7
    return-void
.end method

.method public initFrames(Ljava/lang/String;JJILcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;)V
    .registers 18

    move-wide v4, p4

    .line 108
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initFrames, segmentDuration: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", videoDuration: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", orientation: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iput-wide p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mSegmentDuration:J

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mTextSegmentDuration:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v6, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cutsame_template_segment_duration:I

    long-to-float v8, p2

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mOrientation:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->updateLayoutParas(II)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mItemFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    const/4 v6, 0x0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->updateData(Ljava/lang/String;JJII)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;

    move-object/from16 v2, p7

    invoke-direct {v1, p0, p4, p5, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;JLcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->setScrollListener(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;)V

    return-void
.end method

.method public moveTo(F)V
    .registers 5

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mItemFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mItemFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->updateScrollX(I)V

    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mbInitialed:Z

    return-void
.end method

.method public refresh()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mBoxViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mBoxViewLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 102
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mItemFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->setScrollable(Z)V

    return-void
.end method

.method public unInitFrame()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 174
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mSegmentDuration:J

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mItemFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->stopGetFrame()V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mBoxViewLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->setScrollListener(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;)V

    return-void
.end method

.method public updateLayoutParas(II)V
    .registers 7

    .line 72
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mScreenFormType:I

    .line 73
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mOrientation:I

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mBoxViewLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_68

    iget-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mSegmentDuration:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_11

    goto :goto_68

    :cond_11
    long-to-float p1, p1

    const p2, 0x466a6000    # 15000.0f

    div-float/2addr p1, p2

    .line 80
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    mul-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 81
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mBoxViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mItemFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 87
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mBoxViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sub-int p1, p2, p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {v1, p1, v0, p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mItemFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5e

    .line 93
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_63

    :cond_5e
    if-nez p1, :cond_63

    const/4 p1, -0x1

    .line 95
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 97
    :cond_63
    :goto_63
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->mScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_68
    :goto_68
    return-void
.end method
