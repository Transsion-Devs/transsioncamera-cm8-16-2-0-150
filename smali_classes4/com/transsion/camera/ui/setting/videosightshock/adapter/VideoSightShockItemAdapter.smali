.class public Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;,
        Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;
    }
.end annotation


# static fields
.field private static final sLastClickTime:[J


# instance fields
.field private volatile isEnable:Z

.field private mCurrentPosition:I

.field private final mDataList:Ljava/util/List;

.field private mIsLowLight:Z

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;

.field private mOrientation:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScreenFormType:I


# direct methods
.method public static synthetic $r8$lambda$2wa3McXFnnZtEfWsxTpIlOVW0XU(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gTSLlbR9F0mofPrgJJtJf136cq4(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->lambda$onBindViewHolder$1(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 41
    new-array v0, v0, [J

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->sLastClickTime:[J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .registers 4

    .line 104
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p3, 0x0

    .line 37
    iput p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    .line 38
    iput-boolean p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->isEnable:Z

    .line 42
    iput p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mScreenFormType:I

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mDataList:Ljava/util/List;

    .line 106
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mIsLowLight:Z

    .line 107
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->setCurrentPosition(IZ)V

    return-void
.end method

.method private itemFastDoubleClick()Z
    .registers 3

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mKey:Ljava/lang/String;

    const-string v0, "key_video_filter_style"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const-wide/16 v0, 0xc8

    .line 280
    sget-object p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->sLastClickTime:[J

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J[J)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;)V
    .registers 4

    .line 146
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 147
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 149
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    if-nez p0, :cond_19

    .line 150
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 151
    iget-object p0, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_19
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 187
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_10

    .line 190
    :cond_9
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->isEnable:Z

    if-eqz p1, :cond_10

    .line 191
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->updateCurrentPosition(I)V

    :cond_10
    :goto_10
    return-void
.end method

.method private updateCurrentPosition(I)V
    .registers 4

    .line 239
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_5

    goto :goto_b

    .line 243
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->itemFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    .line 247
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mListener:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;

    if-eqz v0, :cond_1b

    .line 248
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;->onItemSelected(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V

    .line 251
    :cond_1b
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 252
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 254
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 33
    check-cast p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->onBindViewHolder(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;I)V
    .registers 7

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    .line 136
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_31

    .line 137
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_26

    .line 138
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mIsLowLight:Z

    if-eqz v1, :cond_1f

    .line 139
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/camera/R$drawable;->vss_panel_item_cover_ring_screen_light:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_26

    .line 141
    :cond_1f
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/camera/R$drawable;->vss_panel_item_cover_selected:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    :cond_26
    :goto_26
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    new-instance v3, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_52

    .line 155
    :cond_31
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 156
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/camera/R$drawable;->vss_panel_item_cover_transparent:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    :cond_3e
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 159
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 160
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 161
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 164
    :goto_52
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 165
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    if-ne p2, v3, :cond_60

    const/4 v3, 0x1

    goto :goto_61

    :cond_60
    move v3, v2

    :goto_61
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 167
    :cond_64
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mScreenFormType:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mOrientation:I

    invoke-virtual {p1, v1, v3, v2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->updateRotation(IIZ)V

    .line 169
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_79

    .line 170
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivItem:Landroid/widget/ImageView;

    iget v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9e

    :cond_79
    if-nez p2, :cond_8a

    .line 173
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivCompatItem:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->setImageViewScale(F)V

    .line 174
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->imageLayout:Landroid/widget/FrameLayout;

    sget v2, Lcom/transsion/camera/R$drawable;->lc_vss_item_background:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_97

    .line 176
    :cond_8a
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivCompatItem:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->resetImageViewScale()V

    .line 177
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->imageLayout:Landroid/widget/FrameLayout;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    :goto_97
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->ivCompatItem:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    iget v2, v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mIconId:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 182
    :goto_9e
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mNameId:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x3f6b851f    # 0.92f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 186
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;
    .registers 6

    .line 122
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p2, :cond_12

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_12

    .line 125
    :cond_f
    sget p2, Lcom/transsion/camera/R$layout;->video_sight_shock_thumbnail_item:I

    goto :goto_14

    .line 123
    :cond_12
    :goto_12
    sget p2, Lcom/transsion/camera/R$layout;->video_sight_shock_thumbnail_item_ui4:I

    .line 127
    :goto_14
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 6

    .line 197
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_c

    .line 198
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mOrientation:I

    .line 199
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 203
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mOrientation:I

    if-ne v0, p1, :cond_15

    goto :goto_41

    .line 206
    :cond_15
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mOrientation:I

    const/4 v0, 0x0

    .line 207
    :goto_18
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 208
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;

    if-nez v1, :cond_31

    goto :goto_3e

    .line 213
    :cond_31
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    if-gez v2, :cond_38

    goto :goto_3e

    .line 217
    :cond_38
    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mScreenFormType:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$ItemViewHolder;->updateRotation(IIZ)V

    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_41
    :goto_41
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 222
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mScreenFormType:I

    .line 223
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_b

    .line 224
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b
    return-void
.end method

.method public setCurrentPosition(IZ)V
    .registers 4

    .line 258
    iget v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    .line 259
    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    if-eqz p2, :cond_c

    .line 262
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 263
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_c
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 268
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->isEnable:Z

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mListener:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;

    return-void
.end method

.method public setSelectedKey(Ljava/lang/String;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mKey:Ljava/lang/String;

    return-void
.end method

.method public updateRingScreenLight(Z)V
    .registers 2

    .line 229
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mIsLowLight:Z

    .line 230
    iget p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->mCurrentPosition:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
