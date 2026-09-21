.class public Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemStyle"
.end annotation


# instance fields
.field private mHeight:I

.field private mIsRingScreenLight:Z

.field private mTextMarginBottom:I

.field private mTextMarginLeft:I

.field private mTextMarginRight:I

.field private mTextMarginTop:I

.field private mTextSize:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;
    .registers 1

    .line 147
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 149
    :catch_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 23
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->clone()Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

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

    if-eqz p1, :cond_25

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_25

    .line 128
    :cond_12
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->equalsItemSize(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->equalsItemTextStyle(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->equalsRingScreenLight(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public equalsItemSize(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_21

    .line 90
    :cond_12
    check-cast p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    .line 91
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mWidth:I

    iget v3, p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mWidth:I

    if-ne v2, v3, :cond_21

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mHeight:I

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mHeight:I

    if-ne p0, p1, :cond_21

    return v0

    :cond_21
    :goto_21
    return v1
.end method

.method public equalsItemTextStyle(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 102
    :cond_12
    check-cast p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    .line 103
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextSize:I

    iget v3, p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextSize:I

    if-ne v2, v3, :cond_33

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginLeft:I

    iget v3, p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginLeft:I

    if-ne v2, v3, :cond_33

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginTop:I

    iget v3, p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginTop:I

    if-ne v2, v3, :cond_33

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginRight:I

    iget v3, p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginRight:I

    if-ne v2, v3, :cond_33

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginBottom:I

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginBottom:I

    if-ne p0, p1, :cond_33

    return v0

    :cond_33
    :goto_33
    return v1
.end method

.method public equalsRingScreenLight(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1b

    .line 116
    :cond_12
    check-cast p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    .line 117
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mIsRingScreenLight:Z

    iget-boolean p1, p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mIsRingScreenLight:Z

    if-ne p0, p1, :cond_1b

    return v0

    :cond_1b
    :goto_1b
    return v1
.end method

.method public getHeight()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mHeight:I

    return p0
.end method

.method public getTextMarginBottom()I
    .registers 1

    .line 58
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginBottom:I

    return p0
.end method

.method public getTextMarginLeft()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginLeft:I

    return p0
.end method

.method public getTextMarginRight()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginRight:I

    return p0
.end method

.method public getTextMarginTop()I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginTop:I

    return p0
.end method

.method public getTextSize()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextSize:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 34
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mWidth:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 133
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mWidth:I

    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mHeight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginLeft:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginTop:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginRight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 139
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginBottom:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 140
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mIsRingScreenLight:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isRingScreenLight()Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mIsRingScreenLight:Z

    return p0
.end method

.method public update(II)V
    .registers 3

    .line 66
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mWidth:I

    .line 67
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mHeight:I

    return-void
.end method

.method public update(ILandroid/graphics/Rect;)V
    .registers 3

    .line 71
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextSize:I

    .line 72
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginLeft:I

    .line 73
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginTop:I

    .line 74
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginRight:I

    .line 75
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mTextMarginBottom:I

    return-void
.end method

.method public update(Z)V
    .registers 2

    .line 79
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->mIsRingScreenLight:Z

    return-void
.end method
