.class Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FailedViewHolder"
.end annotation


# instance fields
.field private final mDeleteButton:Landroid/view/View;

.field private final mLastClickTime:[J

.field private final mRetryButton:Landroid/view/View;

.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;


# direct methods
.method public static synthetic $r8$lambda$4jz_k5zB5LdTC3RAumfFwsFlWqg(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->lambda$bindView$0(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tJKc18NHj66z4jxKockcjBR4jWo(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->lambda$bindView$1(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V
    .registers 4

    .line 476
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V

    const/4 p1, 0x1

    .line 474
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mLastClickTime:[J

    .line 479
    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_list_item_delete:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mDeleteButton:Landroid/view/View;

    .line 480
    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_list_item_retry:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mRetryButton:Landroid/view/View;

    const p0, 0x3f4ccccd    # 0.8f

    const/4 v0, 0x0

    .line 482
    invoke-static {p1, p0, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 483
    invoke-static {p2, p0, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$bindView$0(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V
    .registers 5

    .line 549
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 552
    :cond_7
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteRequest request@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 553
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$fgetmRequestOperator(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;->delete(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method private synthetic lambda$bindView$1(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V
    .registers 5

    .line 557
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_11

    :cond_7
    const-wide/16 v0, 0x12c

    .line 560
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mLastClickTime:[J

    invoke-static {v0, v1, p2}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J[J)Z

    move-result p2

    if-eqz p2, :cond_12

    :goto_11
    return-void

    .line 563
    :cond_12
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retryRequest request@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$fgetmRequestOperator(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;->retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method


# virtual methods
.method bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V
    .registers 8

    .line 488
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    .line 490
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->request()Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p1

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mDeleteButton:Landroid/view/View;

    .line 493
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 495
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getResponseCode()I

    move-result v1

    const v2, 0x49444

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-eq v1, v2, :cond_8a

    const/16 v2, 0x8

    packed-switch v1, :pswitch_data_c6

    .line 538
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mDescription:Landroid/widget/TextView;

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_processing_failed:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 540
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mRetryButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 542
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 543
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mRetryButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 544
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_fragment_list_item_retry_margin_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_b1

    .line 518
    :pswitch_48
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mDescription:Landroid/widget/TextView;

    sget v5, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_processing_failed_face_angle_wrong:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 520
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mRetryButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 522
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 523
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 524
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_b1

    .line 508
    :pswitch_5e
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mDescription:Landroid/widget/TextView;

    sget v5, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_processing_failed_face_occluded:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 510
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mRetryButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 512
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 513
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 514
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_b1

    .line 498
    :pswitch_74
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mDescription:Landroid/widget/TextView;

    sget v5, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_processing_failed_no_face:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 500
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mRetryButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 502
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 503
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 504
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_b1

    .line 528
    :cond_8a
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mDescription:Landroid/widget/TextView;

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_processing_failed_time_setting_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 530
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mRetryButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 532
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 533
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mRetryButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 534
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_fragment_list_item_retry_margin_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 548
    :goto_b1
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mDeleteButton:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->mRetryButton:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_c6
    .packed-switch 0x49590
        :pswitch_74
        :pswitch_5e
        :pswitch_48
        :pswitch_74
    .end packed-switch
.end method
