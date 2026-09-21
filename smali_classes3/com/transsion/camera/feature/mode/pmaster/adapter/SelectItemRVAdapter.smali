.class public Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$OnItemClickListener;,
        Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sStates:[[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$OnItemClickListener;

.field protected mLowLight:Z

.field private final mMainHandler:Landroid/os/Handler;

.field protected mOrientation:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mScreenFormType:I

.field protected mSelect:I

.field private mStateList:Landroid/content/res/ColorStateList;

.field private mStateListBlack:Landroid/content/res/ColorStateList;


# direct methods
.method public static synthetic $r8$lambda$4R0gHoaFPdBzbJpg_6QXN1fBM5c(Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;)V
    .registers 2

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 197
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_8
    return-void
.end method

.method public static synthetic $r8$lambda$ryfQotpRFsW-Stq6md1G6MGqy58(Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;ILcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->lambda$onBindViewHolder$0(ILcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SelectItemRVAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const v0, 0x10100a7

    .line 42
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->PRESSED_STATE_SET:[I

    const v0, 0x10100a1

    .line 46
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->SELECTED_STATE_SET:[I

    const/4 v1, 0x0

    .line 50
    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->NORMAL_STATE_SET:[I

    .line 52
    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->sStates:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 110
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mSelect:I

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mMainHandler:Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->initColorStateList(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$OnItemClickListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mSelect:I

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mMainHandler:Landroid/os/Handler;

    .line 131
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mItemList:Ljava/util/List;

    .line 133
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mListener:Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$OnItemClickListener;

    .line 134
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->initColorStateList(Landroid/content/Context;)V

    return-void
.end method

.method private initColorStateList(Landroid/content/Context;)V
    .registers 6

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 120
    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->sStates:[[I

    filled-new-array {p1, v0}, [I

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mStateList:Landroid/content/res/ColorStateList;

    .line 121
    new-instance v0, Landroid/content/res/ColorStateList;

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-direct {v0, v3, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mStateListBlack:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private isExpandedOrLRHoverState()Z
    .registers 3

    .line 345
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mScreenFormType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x4

    if-eq p0, v1, :cond_e

    const/4 v1, 0x5

    if-ne p0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    return v0
.end method

.method private isExpandedState()Z
    .registers 2

    .line 351
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(ILcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;Landroid/view/View;)V
    .registers 4

    .line 163
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/utils/CommonUtils;->isFastClick()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 164
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "too fast click"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_f
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->setSelect(I)V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mListener:Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$OnItemClickListener;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$OnItemClickListener;->onItemClick(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSelect()I
    .registers 1

    .line 103
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mSelect:I

    return p0
.end method

.method public notifyItemChangedSelected(I)V
    .registers 3

    .line 90
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mSelect:I

    if-eq v0, p1, :cond_a

    .line 92
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 93
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_a
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 38
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;I)V
    .registers 11

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    .line 159
    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mSelect:I

    if-ne v1, p2, :cond_f

    const/4 v1, 0x1

    :goto_d
    move v4, v1

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_d

    :goto_11
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result v5

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->getIcon()I

    move-result v6

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 160
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->getTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    .line 159
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->onBindViewHolderInternal(Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;ZIILjava/lang/String;)V

    .line 162
    iget-object p0, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2, p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;ILcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onBindViewHolderInternal(Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;ZIILjava/lang/String;)V
    .registers 11

    .line 173
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->updateRotation(IIZ)V

    const/4 v0, 0x0

    if-eqz p2, :cond_64

    .line 175
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_30

    .line 176
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mLowLight:Z

    if-eqz v1, :cond_1e

    .line 177
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->civ:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_item_cover_ringscreen_selected:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_25

    .line 179
    :cond_1e
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->civ:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_item_cover_selected:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :goto_25
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->civ:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 182
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_54

    .line 184
    :cond_30
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mLowLight:Z

    if-eqz v1, :cond_42

    .line 185
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->make_up_item_cover_low_light:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4f

    .line 188
    :cond_42
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->make_up_item_cover:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :goto_4f
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 194
    :goto_54
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8b

    .line 201
    :cond_64
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 202
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->civ:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_item_cover_transparent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->civ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 204
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_86

    .line 206
    :cond_7c
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 209
    :goto_86
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 211
    :goto_8b
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_97

    .line 212
    iget-object p0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_cd

    :cond_97
    const/4 v0, -0x1

    if-eq p3, v0, :cond_ae

    if-eqz p3, :cond_ae

    const/4 v0, 0x2

    if-ne p3, v0, :cond_a0

    goto :goto_ae

    .line 222
    :cond_a0
    iget-object p0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->resetImageViewScale()V

    .line 223
    iget-object p0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->compatIvLayout:Landroid/view/ViewGroup;

    const p3, 0x106000d

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c8

    .line 215
    :cond_ae
    :goto_ae
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->setImageViewScale(F)V

    if-nez p3, :cond_c1

    if-eqz p2, :cond_c1

    .line 217
    iget-object p0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->compatIvLayout:Landroid/view/ViewGroup;

    sget p3, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->ic_makeup_ai_on_background:I

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c8

    .line 219
    :cond_c1
    iget-object p3, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->compatIvLayout:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mLowLight:Z

    invoke-virtual {p0, p3, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->updateIvLayoutBG(Landroid/view/ViewGroup;Z)V

    .line 225
    :goto_c8
    iget-object p0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 227
    :goto_cd
    iget-object p0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_dd

    .line 230
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_dd
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;
    .registers 4

    const/4 p2, 0x7

    .line 141
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mScreenFormType:I

    if-ne p2, v0, :cond_8

    .line 142
    sget p2, Lcom/transsion/camera/feature/pmaster/R$layout;->flip_pmaster_feature_makeup_item:I

    goto :goto_1c

    .line 144
    :cond_8
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p2, :cond_1a

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_17

    goto :goto_1a

    .line 147
    :cond_17
    sget p2, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_feature_makeup_item:I

    goto :goto_1c

    .line 145
    :cond_1a
    :goto_1a
    sget p2, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_feature_makeup_item_ui4:I

    .line 150
    :goto_1c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 151
    new-instance p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setData(Ljava/util/List;Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$OnItemClickListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mItemList:Ljava/util/List;

    .line 126
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mListener:Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$OnItemClickListener;

    .line 127
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelect(I)V
    .registers 3

    .line 84
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mSelect:I

    if-eq v0, p1, :cond_6

    .line 85
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mSelect:I

    :cond_6
    return-void
.end method

.method public updateIvLayoutBG(Landroid/view/ViewGroup;Z)V
    .registers 5

    .line 235
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_33

    if-nez p2, :cond_33

    .line 236
    new-instance p2, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 237
    const-string p0, "key_picture_ratio"

    const-string v0, "_global_scope"

    const-string v1, "4:3"

    invoke-virtual {p2, p0, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 239
    const-string p2, "1:1"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2d

    .line 240
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2d

    .line 243
    :cond_2a
    sget p0, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->ic_makeup_background:I

    goto :goto_2f

    .line 241
    :cond_2d
    :goto_2d
    sget p0, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->ic_makeup_background_dark:I

    .line 245
    :goto_2f
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 247
    :cond_33
    sget p0, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->ic_makeup_background:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 98
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mLowLight:Z

    .line 99
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateScreenFormType(II)V
    .registers 6

    .line 257
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mScreenFormType:I

    if-ne v0, p2, :cond_45

    .line 258
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mOrientation:I

    if-eq v0, p1, :cond_f

    goto :goto_45

    .line 265
    :cond_f
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_44

    iget p2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mOrientation:I

    if-ne p2, p1, :cond_18

    goto :goto_44

    .line 268
    :cond_18
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mOrientation:I

    const/4 p2, 0x0

    .line 269
    :goto_1b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_44

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;

    if-nez v0, :cond_34

    goto :goto_41

    .line 275
    :cond_34
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    if-gez v1, :cond_3b

    goto :goto_41

    .line 279
    :cond_3b
    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mScreenFormType:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;->updateRotation(IIZ)V

    :goto_41
    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    :cond_44
    :goto_44
    return-void

    .line 259
    :cond_45
    :goto_45
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mScreenFormType:I

    .line 260
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->mOrientation:I

    .line 261
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
