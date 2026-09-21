.class public Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;,
        Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;,
        Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantItemClickListener;
    }
.end annotation


# static fields
.field private static final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentZoomValue:I

.field private mListener:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantItemClickListener;

.field private mOrientation:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;

.field private mZoomInit:Z

.field private mZoomList:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$mKWVXjf9fny47K31Wtehnzp0xPk(Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmZoomInit(Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomInit:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "InstantZoomAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mOrientation:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomList:Ljava/util/List;

    return-void
.end method

.method private getZoomRatio(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "%dx"

    goto :goto_b

    :cond_9
    const-string p0, "%d"

    .line 235
    :goto_b
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 236
    rem-int/lit16 p2, p1, 0x2710

    if-nez p2, :cond_24

    .line 237
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 239
    :cond_24
    rem-int/lit16 p2, p1, 0x3e8

    const/16 v0, 0x1f4

    if-ne p2, v0, :cond_41

    add-int/lit16 p1, p1, -0x1f4

    .line 241
    rem-int/lit16 p2, p1, 0x3e8

    if-nez p2, :cond_41

    .line 242
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 245
    :cond_41
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%d."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    div-int/lit16 v0, p1, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    div-int/lit16 p1, p1, 0x3e8

    rem-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isZoomUnSelected(I)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 159
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 160
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 161
    rem-int/lit16 v3, p1, 0x3e8

    const/16 v4, 0x1f4

    if-ne v3, v4, :cond_1b

    add-int/lit16 p1, p1, -0x1f4

    goto :goto_25

    .line 164
    :cond_1b
    div-int/lit16 v3, p1, 0x3e8

    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_25

    .line 165
    div-int/lit16 p1, p1, 0x2710

    mul-int/lit16 p1, p1, 0x2710

    .line 168
    :cond_25
    :goto_25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, p1, :cond_30

    return v0

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mListener:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantItemClickListener;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantItemClickListener;->onInstantItemClick(I)V

    return-void
.end method

.method private updateRecyclerOrientation(I)V
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    goto :goto_2d

    :cond_5
    const/4 v0, 0x0

    .line 90
    :goto_6
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 91
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;

    if-nez v1, :cond_1f

    goto :goto_2a

    .line 96
    :cond_1f
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    if-gez v2, :cond_26

    goto :goto_2a

    :cond_26
    const/4 v2, 0x1

    .line 100
    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;->updateOrientation(IZ)V

    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public getCurrentInstantZoomList()Ljava/util/List;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomList:Ljava/util/List;

    return-object p0
.end method

.method public getCurrentZoomValue()I
    .registers 1

    .line 82
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mCurrentZoomValue:I

    return p0
.end method

.method public getItemCount()I
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 22
    check-cast p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->onBindViewHolder(Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;I)V
    .registers 7

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mCurrentZoomValue:I

    .line 186
    rem-int/lit16 v2, v1, 0x3e8

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_13

    add-int/lit16 v1, v1, -0x1f4

    goto :goto_1d

    .line 189
    :cond_13
    div-int/lit16 v2, v1, 0x3e8

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_1d

    .line 190
    div-int/lit16 v1, v1, 0x2710

    mul-int/lit16 v1, v1, 0x2710

    .line 193
    :cond_1d
    :goto_1d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2b

    .line 194
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;->instantView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_30

    .line 196
    :cond_2b
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;->instantView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 198
    :goto_30
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;->instantView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 199
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;->instantView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;->instantView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->getZoomRatio(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 204
    iget-object p1, p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;->instantView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;
    .registers 6

    .line 179
    new-instance p2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->zoom_instant_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;-><init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setOnInstantZoomItemClickListener(Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantItemClickListener;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mListener:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantItemClickListener;

    return-void
.end method

.method public updateCurrentZoomValue(IZ)V
    .registers 4

    .line 143
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mCurrentZoomValue:I

    const/4 v0, 0x1

    if-eqz p2, :cond_e

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 148
    :cond_e
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->isZoomUnSelected(I)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomInit:Z

    if-nez p1, :cond_21

    .line 150
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 152
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public updateInstantViewBG(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    goto :goto_2c

    :cond_5
    const/4 v0, 0x0

    .line 109
    :goto_6
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 110
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;

    if-nez v1, :cond_1f

    goto :goto_29

    .line 115
    :cond_1f
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    if-gez v2, :cond_26

    goto :goto_29

    .line 119
    :cond_26
    invoke-virtual {v1, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantZoomHolder;->updateInstantViewBG(Landroid/graphics/drawable/Drawable;)V

    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2c
    :goto_2c
    return-void
.end method

.method public updateInstantZoomList(Ljava/util/List;)V
    .registers 6

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomInit:Z

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$UIHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateInstantZoomList] zoomList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 3

    .line 69
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mOrientation:I

    if-eq v0, p1, :cond_11

    .line 70
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mOrientation:I

    .line 71
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mZoomInit:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_11

    .line 72
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->updateRecyclerOrientation(I)V

    :cond_11
    return-void
.end method
