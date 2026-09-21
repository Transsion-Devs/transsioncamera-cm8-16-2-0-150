.class public abstract Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/GridRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RecycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->mSelectedIndex:I

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->mItemList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCurSelectIndex()I
    .registers 1

    .line 115
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->mSelectedIndex:I

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-ltz p1, :cond_14

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_d

    goto :goto_14

    .line 99
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->mItemList:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 123
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method public getOnItemClickListener()Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->mOnItemClickListener:Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

    return-object p0
.end method

.method public setItemList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->mItemList:Ljava/util/List;

    .line 88
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->mOnItemClickListener:Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

    return-void
.end method

.method public setSelectedIndex(I)V
    .registers 2

    .line 111
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->mSelectedIndex:I

    return-void
.end method
