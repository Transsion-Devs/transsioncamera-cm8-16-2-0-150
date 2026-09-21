.class public Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$HWEncodeParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HWEncodeParams"
.end annotation


# instance fields
.field public maxProductOfSizeAndFps:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1785
    iput-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$HWEncodeParams;->maxProductOfSizeAndFps:J

    return-void
.end method
