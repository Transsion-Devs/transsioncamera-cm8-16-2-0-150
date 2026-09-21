.class public Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private mImageId:I

.field private mIndex:Ljava/lang/Integer;

.field private mItemType:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mTitle:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mImageId:I

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mIndex:Ljava/lang/Integer;

    .line 19
    iput p4, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mItemType:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;)I
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mIndex:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mIndex:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 7
    check-cast p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->compareTo(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 61
    instance-of v0, p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    if-eqz v0, :cond_f

    .line 62
    check-cast p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mTitle:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mTitle:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 64
    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getImageId()I
    .registers 1

    .line 39
    iget p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mImageId:I

    return p0
.end method

.method public getIndex()I
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mIndex:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getItemType()I
    .registers 1

    .line 47
    iget p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mItemType:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
