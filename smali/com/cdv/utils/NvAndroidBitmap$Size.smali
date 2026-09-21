.class public Lcom/cdv/utils/NvAndroidBitmap$Size;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/utils/NvAndroidBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field private m_height:I

.field private m_width:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_width:I

    .line 56
    iput p2, p0, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 76
    :cond_8
    instance-of v2, p1, Lcom/cdv/utils/NvAndroidBitmap$Size;

    if-eqz v2, :cond_1b

    .line 77
    check-cast p1, Lcom/cdv/utils/NvAndroidBitmap$Size;

    .line 78
    iget v2, p0, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_width:I

    iget v3, p1, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_width:I

    if-ne v2, v3, :cond_1b

    iget p0, p0, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_height:I

    iget p1, p1, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_height:I

    if-ne p0, p1, :cond_1b

    return v1

    :cond_1b
    return v0
.end method

.method public getHeight()I
    .registers 1

    .line 66
    iget p0, p0, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_height:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 61
    iget p0, p0, Lcom/cdv/utils/NvAndroidBitmap$Size;->m_width:I

    return p0
.end method
