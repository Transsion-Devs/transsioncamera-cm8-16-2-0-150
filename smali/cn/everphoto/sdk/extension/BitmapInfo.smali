.class public final Lcn/everphoto/sdk/extension/BitmapInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private buffer:[B

.field private height:I

.field private stride:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBuffer()[B
    .registers 1

    .line 7
    iget-object p0, p0, Lcn/everphoto/sdk/extension/BitmapInfo;->buffer:[B

    return-object p0
.end method

.method public final getHeight()I
    .registers 1

    .line 9
    iget p0, p0, Lcn/everphoto/sdk/extension/BitmapInfo;->height:I

    return p0
.end method

.method public final getStride()I
    .registers 1

    .line 10
    iget p0, p0, Lcn/everphoto/sdk/extension/BitmapInfo;->stride:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    .line 8
    iget p0, p0, Lcn/everphoto/sdk/extension/BitmapInfo;->width:I

    return p0
.end method

.method public final setBuffer([B)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcn/everphoto/sdk/extension/BitmapInfo;->buffer:[B

    return-void
.end method

.method public final setHeight(I)V
    .registers 2

    .line 9
    iput p1, p0, Lcn/everphoto/sdk/extension/BitmapInfo;->height:I

    return-void
.end method

.method public final setStride(I)V
    .registers 2

    .line 10
    iput p1, p0, Lcn/everphoto/sdk/extension/BitmapInfo;->stride:I

    return-void
.end method

.method public final setWidth(I)V
    .registers 2

    .line 8
    iput p1, p0, Lcn/everphoto/sdk/extension/BitmapInfo;->width:I

    return-void
.end method
