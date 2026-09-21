.class public Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 1

    .line 34
    iget p0, p0, Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 14
    iget p0, p0, Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;->mWidth:I

    return p0
.end method

.method public setHeight(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;->mHeight:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;->mWidth:I

    return-void
.end method
