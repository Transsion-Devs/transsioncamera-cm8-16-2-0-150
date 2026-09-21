.class public Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;
.super Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemInfo"
.end annotation


# instance fields
.field private mOrientation:I

.field private mSelected:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;)V
    .registers 4

    .line 238
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getDrawableRes()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getTitleRes()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public areItemsTheSame(Ljava/lang/Object;)Z
    .registers 3

    .line 296
    instance-of v0, p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    if-eqz v0, :cond_13

    .line 297
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public clone()Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;
    .registers 1

    .line 262
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 264
    :catch_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 233
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->clone()Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_43

    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_43

    .line 276
    :cond_12
    check-cast p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    .line 277
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getDrawableRes()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getDrawableRes()I

    move-result v3

    if-ne v2, v3, :cond_43

    .line 278
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getTitleRes()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getTitleRes()I

    move-result v3

    if-ne v2, v3, :cond_43

    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->mSelected:Z

    iget-boolean v3, p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->mSelected:Z

    if-ne v2, v3, :cond_43

    iget v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->mOrientation:I

    iget v3, p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->mOrientation:I

    if-ne v2, v3, :cond_43

    .line 281
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    return v0

    :cond_43
    :goto_43
    return v1
.end method

.method public getOrientation()I
    .registers 1

    .line 256
    iget p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->mOrientation:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 286
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 287
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getDrawableRes()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 288
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getTitleRes()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 289
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->mSelected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 290
    iget p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->mOrientation:I

    add-int/2addr v0, p0

    return v0
.end method

.method public isSelected()Z
    .registers 1

    .line 247
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->mSelected:Z

    return p0
.end method

.method public setOrientation(I)Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;
    .registers 2

    .line 251
    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->mOrientation:I

    return-object p0
.end method

.method public setSelected(Z)Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;
    .registers 2

    .line 242
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->mSelected:Z

    return-object p0
.end method
