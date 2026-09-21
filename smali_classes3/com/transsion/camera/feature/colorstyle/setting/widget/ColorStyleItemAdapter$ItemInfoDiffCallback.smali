.class public Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$ItemInfoDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemInfoDiffCallback"
.end annotation


# instance fields
.field private final mNewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mOldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 326
    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$ItemInfoDiffCallback;->mOldList:Ljava/util/List;

    .line 327
    iput-object p2, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$ItemInfoDiffCallback;->mNewList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .registers 4

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$ItemInfoDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$ItemInfoDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p1, :cond_10

    return p2

    :cond_10
    if-nez p0, :cond_13

    return p2

    .line 363
    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(II)Z
    .registers 4

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$ItemInfoDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$ItemInfoDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 344
    instance-of p2, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewItem;

    if-eqz p2, :cond_17

    .line 345
    check-cast p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewItem;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewItem;->areItemsTheSame(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    if-eqz p0, :cond_1e

    .line 347
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public getNewListSize()I
    .registers 1

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$ItemInfoDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOldListSize()I
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$ItemInfoDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
