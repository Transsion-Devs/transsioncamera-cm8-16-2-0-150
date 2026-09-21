.class public Lcom/ss/android/vesdk/VEMusicBitmapParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public lineCnt:I

.field public lyricsBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ss/android/vesdk/VEMusicBitmapParam;->lyricsBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput p2, p0, Lcom/ss/android/vesdk/VEMusicBitmapParam;->lineCnt:I

    return-void
.end method


# virtual methods
.method public recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    if-eqz p1, :cond_b

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_b

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    return-void
.end method
