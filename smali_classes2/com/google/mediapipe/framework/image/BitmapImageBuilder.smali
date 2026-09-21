.class public Lcom/google/mediapipe/framework/image/BitmapImageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->bitmap:Landroid/graphics/Bitmap;

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->timestamp:J

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mediapipe/framework/image/MPImage;
    .registers 7

    .line 69
    new-instance v0, Lcom/google/mediapipe/framework/image/MPImage;

    new-instance v1, Lcom/google/mediapipe/framework/image/BitmapImageContainer;

    iget-object v2, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/google/mediapipe/framework/image/BitmapImageContainer;-><init>(Landroid/graphics/Bitmap;)V

    iget-wide v2, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->timestamp:J

    iget-object v4, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->bitmap:Landroid/graphics/Bitmap;

    .line 70
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object p0, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/framework/image/MPImage;-><init>(Lcom/google/mediapipe/framework/image/MPImageContainer;JII)V

    return-object v0
.end method

.method setTimestamp(J)Lcom/google/mediapipe/framework/image/BitmapImageBuilder;
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->timestamp:J

    return-object p0
.end method
