.class public Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitItemViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;"
    }
.end annotation


# instance fields
.field private mColorStyleItemViewType:I

.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewAdapter;->mDataList:Ljava/util/List;

    const/4 v1, -0x1

    .line 244
    iput v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewAdapter;->mColorStyleItemViewType:I

    .line 247
    new-instance p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItem;

    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItem;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getChildItemPosition(Ljava/lang/Object;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getChildItemViewType()I
    .registers 1

    .line 291
    iget p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewAdapter;->mColorStyleItemViewType:I

    return p0
.end method

.method public getChildItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItem;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewAdapter;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method public isChildMatch(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 281
    instance-of p0, p1, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewHolder;

    return p0
.end method

.method public isChildMatch(Ljava/lang/Object;)Z
    .registers 2

    .line 276
    instance-of p0, p1, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItem;

    return p0
.end method

.method public onBindChildViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    return-void
.end method

.method public onChildSelectStateChanged(II)V
    .registers 3

    return-void
.end method

.method public onCreateChildViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 252
    new-instance p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewHolder;

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/colorstyle/R$layout;->split_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public setChildItemViewType(I)V
    .registers 2

    .line 286
    iput p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewAdapter;->mColorStyleItemViewType:I

    return-void
.end method

.method public updateChildItemStyle(Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;)V
    .registers 2

    return-void
.end method
