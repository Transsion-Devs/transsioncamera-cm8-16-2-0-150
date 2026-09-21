.class Lcom/obs/services/internal/io/MayRepeatableInputStream$SdkBufferedInputStream;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/io/MayRepeatableInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdkBufferedInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public tearDown()V
    .registers 3

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Ljava/io/BufferedInputStream;->count:I

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 42
    iput v0, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 43
    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I

    return-void
.end method
