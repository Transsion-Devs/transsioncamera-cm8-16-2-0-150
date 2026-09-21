.class public abstract Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;
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

.field private mDisableStateList:Landroid/content/res/ColorStateList;

.field protected mIntensityDefault:Z

.field private mLowLight:Z

.field private final mMainHandler:Landroid/os/Handler;

.field protected mOrientation:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mScreenFormType:I

.field protected mSelect:I

.field private mStateList:Landroid/content/res/ColorStateList;


# direct methods
.method public static synthetic $r8$lambda$d1xlIMpPR0yYlbH61Mpaai7UatI(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;)V
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_8
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SelectItemRVAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const v0, 0x10100a7

    .line 34
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->PRESSED_STATE_SET:[I

    const v0, 0x10100a1

    .line 38
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->SELECTED_STATE_SET:[I

    const/4 v1, 0x0

    .line 42
    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->NORMAL_STATE_SET:[I

    .line 44
    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->sStates:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 131
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mScreenFormType:I

    .line 55
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mSelect:I

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mMainHandler:Landroid/os/Handler;

    .line 132
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    .line 133
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->initColorStateList()V

    return-void
.end method

.method private initColorStateList()V
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_disable_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 141
    new-instance v3, Landroid/content/res/ColorStateList;

    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->sStates:[[I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mStateList:Landroid/content/res/ColorStateList;

    .line 142
    new-instance v1, Landroid/content/res/ColorStateList;

    filled-new-array {v0, v0}, [I

    move-result-object v0

    invoke-direct {v1, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mDisableStateList:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public getSelect()I
    .registers 1

    .line 128
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mSelect:I

    return p0
.end method

.method public notifyItemChangedSelected(I)V
    .registers 3

    .line 86
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mSelect:I

    if-eq v0, p1, :cond_a

    .line 88
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 89
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_a
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 30
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;I)V
    .registers 3

    .line 0
    return-void
.end method

.method protected onBindViewHolderInternal(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;ZIZILjava/lang/String;)V
    .registers 13

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mScreenFormType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1e

    .line 171
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_item_padding_expand:I

    .line 172
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_item_padding_expand:I

    .line 173
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 171
    invoke-virtual {v1, v4, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_54

    :cond_1e
    const/4 v4, 0x7

    if-ne v1, v4, :cond_33

    .line 175
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_item_padding_flip:I

    .line 176
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_item_padding_flip:I

    .line 177
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 175
    invoke-virtual {v1, v4, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_54

    .line 179
    :cond_33
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_43

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mScreenFormType:I

    if-nez v1, :cond_43

    .line 180
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_54

    .line 182
    :cond_43
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_item_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_item_padding:I

    .line 183
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 182
    invoke-virtual {v1, v4, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 186
    :goto_54
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mOrientation:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->updateRotation(IIZ)V

    const/4 v0, 0x0

    if-eqz p2, :cond_b1

    .line 188
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 189
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->civ:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mLowLight:Z

    if-eqz v2, :cond_6d

    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_item_cover_ringscreen_selected:I

    goto :goto_6f

    .line 190
    :cond_6d
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_item_cover_selected:I

    .line 189
    :goto_6f
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->civ:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 192
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_a1

    .line 194
    :cond_7d
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mLowLight:Z

    if-eqz v1, :cond_8f

    .line 195
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->make_up_item_cover_low_light:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9c

    .line 198
    :cond_8f
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->make_up_item_cover:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :goto_9c
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 204
    :goto_a1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_d8

    .line 211
    :cond_b1
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_c9

    .line 212
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->civ:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_item_cover_transparent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->civ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 214
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_d3

    .line 216
    :cond_c9
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 219
    :goto_d3
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 222
    :goto_d8
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p6

    if-nez p6, :cond_e9

    .line 224
    iget-object p3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {p3, p5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_11e

    :cond_e9
    if-nez p4, :cond_ff

    const/4 p6, -0x1

    if-eq p3, p6, :cond_ff

    if-nez p3, :cond_f1

    goto :goto_ff

    .line 234
    :cond_f1
    iget-object p3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->resetImageViewScale()V

    .line 235
    iget-object p3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->compatIvLayout:Landroid/view/ViewGroup;

    const p6, 0x106000d

    invoke-virtual {p3, p6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_119

    .line 227
    :cond_ff
    :goto_ff
    iget-object p6, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p6, v0}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->setImageViewScale(F)V

    if-nez p3, :cond_112

    if-eqz p2, :cond_112

    .line 229
    iget-object p3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->compatIvLayout:Landroid/view/ViewGroup;

    sget p6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->ic_makeup_ai_on_background:I

    invoke-virtual {p3, p6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_119

    .line 231
    :cond_112
    iget-object p3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->compatIvLayout:Landroid/view/ViewGroup;

    sget p6, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->ic_makeup_background:I

    invoke-virtual {p3, p6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 237
    :goto_119
    iget-object p3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-virtual {p3, p5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_11e
    if-eqz p4, :cond_140

    .line 240
    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mIntensityDefault:Z

    if-eqz p3, :cond_140

    .line 241
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p3

    if-nez p3, :cond_132

    .line 242
    iget-object p3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    sget p4, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_restore_disable:I

    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_139

    .line 244
    :cond_132
    iget-object p3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->compatIv:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    sget p4, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->mu_restore_disable:I

    invoke-virtual {p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 246
    :goto_139
    iget-object p3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->ivTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mDisableStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 249
    :cond_140
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_14b

    .line 250
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_14b
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;
    .registers 5

    const/4 p2, 0x7

    .line 149
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mScreenFormType:I

    if-ne p2, p0, :cond_8

    .line 150
    sget p0, Lcom/transsion/camera/feature/makeup/R$layout;->flip_feature_makeup_item:I

    goto :goto_1c

    .line 152
    :cond_8
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p0, :cond_1a

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_1a

    .line 155
    :cond_17
    sget p0, Lcom/transsion/camera/feature/makeup/R$layout;->feature_makeup_item:I

    goto :goto_1c

    .line 153
    :cond_1a
    :goto_1a
    sget p0, Lcom/transsion/camera/feature/makeup/R$layout;->feature_makeup_item_ui4:I

    .line 158
    :goto_1c
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setSelect(I)V
    .registers 3

    .line 76
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mSelect:I

    if-eq v0, p1, :cond_6

    .line 77
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mSelect:I

    :cond_6
    return-void
.end method

.method public updateIntensityDefault(Z)V
    .registers 2

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 255
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mLowLight:Z

    .line 256
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateScreenFormType(II)V
    .registers 6

    .line 101
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mScreenFormType:I

    if-ne v0, p1, :cond_45

    .line 102
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mOrientation:I

    if-eq v0, p2, :cond_f

    goto :goto_45

    .line 109
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_44

    iget p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mOrientation:I

    if-ne p1, p2, :cond_18

    goto :goto_44

    .line 112
    :cond_18
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mOrientation:I

    const/4 p1, 0x0

    .line 113
    :goto_1b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_44

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

    if-nez v0, :cond_34

    goto :goto_41

    .line 119
    :cond_34
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    if-gez v1, :cond_3b

    goto :goto_41

    .line 123
    :cond_3b
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mScreenFormType:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->updateRotation(IIZ)V

    :goto_41
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    :cond_44
    :goto_44
    return-void

    .line 103
    :cond_45
    :goto_45
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mScreenFormType:I

    .line 104
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->mOrientation:I

    .line 105
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
