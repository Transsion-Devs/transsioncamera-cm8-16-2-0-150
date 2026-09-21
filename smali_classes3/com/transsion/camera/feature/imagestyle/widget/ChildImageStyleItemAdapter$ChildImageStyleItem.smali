.class public Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;
.super Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildImageStyleItem"
.end annotation


# instance fields
.field private mOrientation:I

.field private mSelected:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;)V
    .registers 4

    .line 292
    iget v0, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mFilterIconId:I

    iget v1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mFilterNameId:I

    iget-object p1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mImageStyleValue:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public areItemsTheSame(Ljava/lang/Object;)Z
    .registers 3

    .line 350
    instance-of v0, p1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    if-eqz v0, :cond_f

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mImageStyleValue:Ljava/lang/String;

    check-cast p1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    iget-object p1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mImageStyleValue:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public clone()Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;
    .registers 1

    .line 316
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 318
    :catch_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 287
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->clone()Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

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

    if-eqz p1, :cond_37

    .line 327
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_37

    .line 330
    :cond_12
    check-cast p1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    .line 331
    iget v2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mFilterIconId:I

    iget v3, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mFilterIconId:I

    if-ne v2, v3, :cond_37

    iget v2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mFilterNameId:I

    iget v3, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mFilterNameId:I

    if-ne v2, v3, :cond_37

    iget-boolean v2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->mSelected:Z

    iget-boolean v3, p1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->mSelected:Z

    if-ne v2, v3, :cond_37

    iget v2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->mOrientation:I

    iget v3, p1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->mOrientation:I

    if-ne v2, v3, :cond_37

    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mImageStyleValue:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mImageStyleValue:Ljava/lang/String;

    .line 335
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public getOrientation()I
    .registers 1

    .line 310
    iget p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->mOrientation:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 340
    iget v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mFilterIconId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 341
    iget v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mFilterNameId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 342
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mImageStyleValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 343
    iget-boolean v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->mSelected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 344
    iget p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->mOrientation:I

    add-int/2addr v0, p0

    return v0
.end method

.method public isSelected()Z
    .registers 1

    .line 301
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->mSelected:Z

    return p0
.end method

.method public setOrientation(I)Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;
    .registers 2

    .line 305
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->mOrientation:I

    return-object p0
.end method

.method public setSelected(Z)Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;
    .registers 2

    .line 296
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->mSelected:Z

    return-object p0
.end method
