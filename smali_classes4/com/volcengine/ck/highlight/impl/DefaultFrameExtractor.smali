.class public final Lcom/volcengine/ck/highlight/impl/DefaultFrameExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/volcengine/ck/highlight/api/IFrameExtractor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(JJ)[I
    .registers 5

    .line 16
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/impl/DefaultFrameExtractor;->frameGap()I

    move-result p1

    int-to-long p1, p1

    div-long/2addr p3, p1

    long-to-int p1, p3

    add-int/lit8 p1, p1, 0x1

    .line 17
    new-array p2, p1, [I

    const/4 p3, 0x0

    :goto_c
    if-ge p3, p1, :cond_18

    .line 18
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/impl/DefaultFrameExtractor;->frameGap()I

    move-result p4

    mul-int/2addr p4, p3

    aput p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_18
    return-object p2
.end method

.method public frameGap()I
    .registers 1

    const/16 p0, 0x3e8

    return p0
.end method
