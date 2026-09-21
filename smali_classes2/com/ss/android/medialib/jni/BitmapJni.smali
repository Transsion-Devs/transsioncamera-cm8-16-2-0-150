.class public Lcom/ss/android/medialib/jni/BitmapJni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 14
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)I
    .registers 3

    .line 18
    invoke-static {p0, p1, p2}, Lcom/ss/android/medialib/jni/BitmapJni;->nativeCompressBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static native nativeCompressBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)I
.end method
